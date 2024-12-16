<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Client;
use App\Order;
use App\Product;
use App\Entreprise;
use App\MediasSociaux;
use App\Rating;

class clientshop extends Controller
{
    // public function product($nom) {
    //     // Récupérer l'entreprise par son nom
    //     $entreprise = Entreprise::where('nom', $nom)->first();
    
    //     // Vérifier si l'entreprise existe
    //     if (!$entreprise) {
    //         return redirect()->back()->with('error', 'Entreprise non trouvée.');
    //     }
    //     $cart = session()->get('panier');
    //     // Récupérer les produits associés à l'entreprise
    //     $pro = Product::where('entreprise_id', $entreprise->id)->paginate(6);
    
    //     // Passer l'entreprise et les produits à la vue
    //     return view('ecoshop.product', compact('entreprise', 'pro','cart'));
    // }

    public function product($nom) {
        // Récupérer l'entreprise par son nom
        $entreprise = Entreprise::where('nom', $nom)->first();
    
        // Vérifier si l'entreprise existe
        if (!$entreprise) {
            return redirect()->back()->with('error', 'Entreprise non trouvée.');
        }
    
        // Récupérer les médias sociaux de l'entreprise
        $media = MediasSociaux::where('entreprise_id', $entreprise->id)->first();
    
        // Vérifier si le panier existe dans la session
        $cart = session()->get('panier');
    
        // Récupérer les produits associés à l'entreprise avec la moyenne des évaluations
        $pro = Product::where('entreprise_id', $entreprise->id)
            ->select('products.*', DB::raw('(SELECT AVG(rating) FROM ratings WHERE ratings.product_id = products.id) as avg_rating'))
            ->paginate(6);
    
        // Passer les données à la vue
        return view('ecoshop.product', compact('entreprise', 'pro', 'cart', 'media'));
    }
    
    
    
    public function detail($id)
    {
        // Récupérer le produit avec son entreprise
        $pro = Product::findOrFail($id);
        $ent = Entreprise::findOrFail($pro->entreprise_id);
    
        // Récupérer les 5 derniers commentaires avec les utilisateurs associés
        $ratings = Rating::where('product_id', $pro->id)
            ->latest()
            ->take(5)
            ->get();
    
        return view('ecoshop.detail', compact('pro', 'ent', 'ratings'));
    }
    
    

    public function ajouterAuPanier(Request $request)
{
    // Valider les données de la requête
    $request->validate([
        'product_id' => 'required|exists:products,id',
        'prix_total' => 'required|numeric',
        'quantite' => 'required|integer|min:1',
    ]);

    // Trouver le produit correspondant à l'ID
    
    $pro = Product::find($request->product_id);
    $ent=Entreprise::find($pro->entreprise_id);

    // Récupérer le panier actuel depuis la session, ou créer un tableau vide s'il n'existe pas encore
    $panier = session()->get('panier', []);

    // Ajouter ou mettre à jour l'élément du produit dans le panier
    $panier[$pro->id] = [
        'product_id' => $pro->id,
        'name' => $pro->name,
        'prix_total' => $request->prix_total,
        'quantite' => $request->quantite,
    ];

    // Mettre à jour la session avec les données du panier
    session()->put('panier', $panier);

    // Rediriger vers la page du produit ou une page spécifique après l'ajout
    return redirect('/'.$ent->nom)->with('success', 'Produit ajouté au panier avec succès');
}
public function updatepanier(Request $request)
{
    $pro = Product::find($request->product_id);
    $ent = Entreprise::find($pro->entreprise_id);
    $cart = session()->get('panier');
    
    if (isset($cart[$request->product_id])) {
        $cart[$request->product_id]['quantite'] = $request->quantite;
        $cart[$request->product_id]['prix_total'] = $request->quantite * $pro->prix; // Utiliser prix_unitaire pour calculer le prix total
        session()->put('panier', $cart);
        
        return redirect('/' . $ent->nom)->with('success', 'Panier mis à jour avec succès');
    }

    return redirect()->with('error', 'Produit non trouvé dans le panier');
}

public function deleteAuPanier($id)
{
    $pro=Product::find($id);
    $ent=Entreprise::find($pro->entreprise_id);
    $cart = session()->get('panier');

    if (isset($cart[$id])) {
        unset($cart[$id]);
        session()->put('panier', $cart);
    }

    return redirect('/'.$ent->nom)->with('success', 'Produit retiré du panier');
}

public function validerCommande($nom)
{
    $entreprise = Entreprise::where('nom', $nom)->first();
    $cart = session()->get('panier', []); // Récupère le panier depuis la session
    return view('ecoshop.validercommande',compact('cart','entreprise'));
}

public function storeCommande(Request $request)
{
    $request->validate([
        'nom' => 'required|string',
        'adrees' => 'required|string',
        'phone' => 'required|string',
        'email' => 'required|email',
        'total' => 'required|integer',
        'laivraison' => 'required|string',
    ]);

    $client = Client::create([
        'nom' => $request->nom,
        'adrees' => $request->adrees,
        'phone' => $request->phone,
        'email' => $request->email,
        'total' => $request->total,
        'laivraison' => $request->laivraison,
    ]);

    $cart = session()->get('panier', []);
    $total = 0;
    $messages = [];

    if ($cart) {
        foreach ($cart as $id => $details) {
            $product = Product::find($id);
            if ($product) {
                // Créer la commande
                $order = Order::create([
                    'product_id' => $id,
                    'client_id' => $client->id,
                    'quentite' => $details['quantite'], 
                    'prix_total' => $details['prix_total'], 
                ]);

                // Diminuer le stock
                if ($product->stock >= $details['quantite']) {
                    $product->stock -= $details['quantite'];
                    $product->save();
                } else {
                    return redirect()->back()->withErrors(['message' => "Le stock du produit {$product->name} est insuffisant."]);
                }

                $messages[] = "Produit : {$product->name}\nPrix : {$product->prix} MAD\nQuantité : {$details['quantite']}";
                $total += $details['prix_total'];
            } else {
                return redirect()->back()->withErrors(['message' => "Produit avec ID {$id} introuvable."]);
            }
        }
    }

    $message = "Nouvelle commande de {$request->nom} :\n" . implode("\n", $messages);
    $message .= "\nTéléphone : {$request->phone}\nAdresse : {$request->adrees}\nTotal : {$total} MAD\nVoir la facture : https://127.0.0.1:8000/fr/commande/{$client->id}";

    // Encode le message pour l'URL
    $encodedMessage = urlencode($message);
    $Phone = $product->entreprise->phone ?? ''; // Assurez-vous que ce numéro est valide
    $whatsappLink = "https://wa.me/{$Phone}?text={$encodedMessage}";

    // Vider le panier
    session()->forget('panier');

    // Rediriger vers le lien WhatsApp
    return redirect()->to($whatsappLink);
}





public function storeRating(Request $request)
{
    $request->validate([
        'product_id' => 'required|exists:products,id',
        'rating' => 'required|integer|min:1|max:5',
        'comment' => 'nullable|string',
    ]);

    Rating::create([
        'product_id' => $request->product_id,
        'rating' => $request->rating,
        'comment' => $request->comment,
    ]);



    // Supprimer ou commenter si ajouterAuPanier() n'est pas nécessaire
    // ajouterAuPanier(); 

    return redirect('/detail/'.$request->product_id)->with('success', 'Merci pour votre évaluation !');
}



}
