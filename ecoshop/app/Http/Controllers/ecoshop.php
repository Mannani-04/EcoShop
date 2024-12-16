<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use App\Client;
use App\Order;
use App\Product;
use App\Entreprise;
use App\MediasSociaux;
use App\Contact;

class ecoshop extends Controller
{
    public function Add(){
        return view('ecoshop.addentr');
    }
    public function Addm(){
        return view('ecoshop.medias');
    }
    /*public function AddEntreprise(Request $request){
        $ent=$request->validate([
            'nom'=>'required|string|max:255',
            'email'=>'required|email|max:255',
            'phone'=>'required|string|max:12',
            'nombre_emp'=>'required|integer',
            'type'=>'required|string',
            'monnaie'=>'required|string',
            'lien_magasin'=>'required',
            'logo'=>'required|image|mimes:jpg,png,jpeg',
        ]);
        $img=null;
        if ($request->hasFile('logo')) {
            $img = $request->file('logo')->store('entrprise/images', 'public');
        }
        $entreprise=Entreprise::create([
            'nom'=>$ent['nom'],
            'phone'=>$ent['phone'],
            'email'=>$ent['email'],
            'logo'=>$img,
            'lien_magasin'=>$ent['lien_magasin'],
            'type'=>$ent['type'],
            'monnaie'=>$ent['monnaie'],
            'nombre_emp'=>$ent['nombre_emp'],
        ]);
        $id=$entreprise->id;
        return redirect('/addm',compact('id'));
    }*/

    public function AddEntreprise(Request $request)
{
    // Validation des données
    $validatedData = $request->validate([
        'nom' => 'required|string|max:255',
        'email' => 'required|email|max:255',
        'phone' => 'required|string|max:13',
        'monnaie' => 'required|string',
        'lien_magasin' => 'required',
        'logo' => 'nullable|image|mimes:jpg,png,jpeg|max:2048',
        'password'=>'required|string|min:8'
    ]);
    // Gestion du logo
    $img = null;
    if ($request->hasFile('logo')) {
        $img = $request->file('logo')->store('entreprise/images', 'public');
    }

    // Création de l'entreprise
    $entreprise = Entreprise::create([
        'nom' => $validatedData['nom'],
        'phone' => $validatedData['phone'],
        'email' => $validatedData['email'],
        'logo' => $img,
        'lien_magasin' => $validatedData['lien_magasin'],
        'monnaie' => $validatedData['monnaie'],
        'password'=>Hash::make($validatedData['password']),
    ]);

    return redirect('/addm')->with('id', $entreprise->id);
}


    public function AddMedias(Request $request){
        $Medias=MediasSociaux::create([
            'whatsapp'=>$request->whatsapp ?? null,
            'telegrame'=>$request->telegrame ?? null,
            'instagrame'=>$request->instagrame ?? null,
            'facebock'=>$request->facebock ?? null,
            'entreprise_id'=>$request->entreprise_id,
        ]);
        return redirect('/start')->with('success', 'Votre message a été Ajouter Entreprise avec succès.');
    }
    public function Start(){
        return view('ecoshop.creerent');
    }
    public function Admin(){
        return view('ecoshop.admin');
    }
    public function Affpro($id){
        $pro=Product::where('entreprise_id',$id)->get();
        return view('ecoshop.affpro',compact('pro'));
    }
    /*public function Addpro(Request $request,$id)
    {
        // Validation des données
        $validatedData = $request->validate([
            'name' => 'required|string|max:255',
            'description' => 'required|string|max:255',
            'prix' => 'required|integer',
            'stock' => 'required|integer',
            'image' => 'required|image|mimes:jpg,png,jpeg|max:2048',
        ]);
    
        $img = null;
        if ($request->hasFile('image')) {
            $img = $request->file('image')->store('products/images', 'public');
        }
    
        // Création de l'entreprise
         Product::create([
            'name' => $validatedData['name'],
            'description' => $validatedData['description'],
            'stock' => $validatedData['stock'],
            'image' => $img,
            'prix' => $validatedData['prix'],
            'entreprise_id' => $id,
        ]);
        return redirect('/affpro');
    }*/
    public function Addpro(Request $request)
{
    // Validation des données
    $validatedData = $request->validate([
        'name' => 'required|string|max:255',
        'description' => 'required|string|max:255',
        'prix' => 'required|numeric', // Utiliser numeric pour permettre les décimales
        'stock' => 'required|integer',
        'image' => 'required|image|mimes:jpg,png,jpeg|max:2048',
        'entreprise_id'=>'required',
    ]);

    try {
        // Gestion de l'image
        $img = null;
        if ($request->hasFile('image')) {
            $img = $request->file('image')->store('products/images', 'public');
        }

        // Création du produit
        Product::create([
            'name' => $validatedData['name'],
            'description' => $validatedData['description'],
            'stock' => $validatedData['stock'],
            'image' => $img,
            'prix' => $validatedData['prix'],
            'entreprise_id' => $validatedData['entreprise_id'],
        ]);

        // Redirection avec un message de succès
        return redirect('/affpro/'.$request->entreprise_id)->with('success', 'Produit ajouté avec succès');
    } catch (\Exception $e) {
        // En cas d'erreur, rediriger avec un message d'erreur
        return back()->withErrors(['error' => 'Une erreur est survenue lors de l\'ajout du produit.']);
    }
}

    public function Suppro($id){
        $pro=Product::find($id);
        $pro->delete();
        return redirect('/affpro/'.$pro->entreprise_id);
    }
    public function modP($id){
        $pro=Product::find($id);
        return view('ecoshop.updatepro',compact('pro'));
    }
    public function updatepro(Request $request, $id)
{
    $request->validate([
        'name' => 'required|string|max:255',
        'description' => 'required|string|max:255',
        'prix' => 'required|integer',
        'stock' => 'required|integer',
        'image' => 'nullable|image|mimes:jpg,jpeg,png|max:2048',
    ]);

    // Récupérer le produit à mettre à jour
    $pro = Product::findOrFail($id);

    // Gestion de l'image
    if ($request->hasFile('image')) {
        // Supprimer l'ancienne image si elle existe
        if ($pro->image) {
            Storage::disk('public')->delete($pro->image);
        }
        // Stocker la nouvelle image et mettre à jour le chemin
        $pro->image = $request->file('image')->store('products/images', 'public');
    }

    // Mise à jour des autres champs
    $pro->update([
        'name' => $request->name,
        'description' => $request->description,
        'prix' => $request->prix,
        'stock' => $request->stock,
    ]);

    return redirect('/affpro/' . $pro->entreprise_id)->with('success', 'Produit mis à jour avec succès');
}

    public function pageadd($id){
        return view('ecoshop.addpro',compact('id'));
    }

//     public function index($id)
// {
//     // Récupérer les données des commandes pour une entreprise spécifique, regroupées par mois
//     $orders = Order::selectRaw('DATE_FORMAT(orders.created_at, "%Y-%m") as month, COUNT(*) as total')
//                    ->join('products', 'orders.product_id', '=', 'products.id') // Jointure sur la table products
//                    ->where('products.entreprise_id', $id) // Filtrer par entreprise_id dans la table products
//                    ->groupBy('month')
//                    ->orderBy('month')
//                    ->get();

//     return view('ecoshop.home', compact('orders'));
// }
public function NombreCom($id)
{
    // Récupérer les données des commandes pour une entreprise spécifique, regroupées par jour
    $orders = Order::selectRaw('DATE_FORMAT(orders.created_at, "%Y-%m-%d") as day, COUNT(*) as total')
                   ->join('products', 'orders.product_id', '=', 'products.id') // Jointure sur la table products
                   ->where('products.entreprise_id', $id) // Filtrer par entreprise_id dans la table products
                   ->groupBy('day')
                   ->orderBy('day')
                   ->get();

    return view('ecoshop.commande', compact('orders'));
}


public function Clientconf($id)
{
    // Récupérer les clients et leurs produits achetés pour une entreprise donnée
    $clients = DB::table('clients as c')
        ->join('orders as o', 'c.id', '=', 'o.client_id')
        ->join('products as p', 'p.id', '=', 'o.product_id')
        ->select('c.id', 'c.nom', 'c.phone', 'c.adrees', 'c.email', 'o.id as order_id', 'p.name as product_name', 'o.quentite', 'o.prix_total')
        ->where('p.entreprise_id', $id)
        ->where('laivraison','confirme')
        ->get();

    // Organiser les produits par client
    $clientsWithProducts = $clients->groupBy('id');

    return view('ecoshop.afficherClient', compact('clientsWithProducts'));
}
public function envoyercommande($id) {
    // Mettre à jour le statut de livraison du client
    DB::table('clients')
        ->where('id', $id)
        ->update(['laivraison' => 'en cours']);

    // Récupérer l'ID de l'entreprise lié au client
    $entrepriseId = DB::table('clients as c')
        ->join('orders as o', 'c.id', '=', 'o.client_id')
        ->join('products as p', 'p.id', '=', 'o.product_id')
        ->where('c.id', $id)
        ->value('p.entreprise_id');

    // Redirection vers la page clientenvoyer avec l'ID de l'entreprise
    return redirect("/clientenvoyer/{$entrepriseId}");
}
public function clientenvoyer($id){
    $clients = DB::table('clients as c')
    ->join('orders as o', 'c.id', '=', 'o.client_id')
    ->join('products as p', 'p.id', '=', 'o.product_id')
    ->select('c.id', 'c.nom', 'c.phone', 'c.adrees', 'c.email', 'o.id as order_id', 'p.name as product_name', 'o.quentite', 'o.prix_total')
    ->where('p.entreprise_id', $id)
    ->where('laivraison','en cours')
    ->get();

    // Organiser les produits par client
    $clientsWithProducts = $clients->groupBy('id');
    return view('ecoshop.envoyercommande', compact('clientsWithProducts'));
}

public function successcommande($id, Request $request) {
    // Mise à jour du statut de livraison en fonction de l'action
    if ($request->input('action') == 'success') {
        DB::table('clients')
            ->where('id', $id)
            ->update(['laivraison' => 'success']);
    }

    // Récupérer l'ID de l'entreprise lié au client
    $entrepriseId = DB::table('clients as c')
        ->join('orders as o', 'c.id', '=', 'o.client_id')
        ->join('products as p', 'p.id', '=', 'o.product_id')
        ->where('c.id', $id)
        ->value('p.entreprise_id');

    // Redirection vers la page clientenvoyer avec l'ID de l'entreprise
    return redirect("/clientsuccess/{$entrepriseId}");
}
public function clientsuccess($id){
    $clients = DB::table('clients as c')
    ->join('orders as o', 'c.id', '=', 'o.client_id')
    ->join('products as p', 'p.id', '=', 'o.product_id')
    ->select('c.id', 'c.nom', 'c.phone', 'c.adrees', 'c.email', 'o.id as order_id', 'p.name as product_name', 'o.quentite', 'o.prix_total')
    ->where('p.entreprise_id', $id)
    ->where('laivraison','success')
    ->get();

    // Organiser les produits par client
    $clientsWithProducts = $clients->groupBy('id');
    return view('ecoshop.successcommande', compact('clientsWithProducts'));
}

public function refusecommande($id, Request $request) {
    // Mise à jour du statut de livraison en fonction de l'action
    if ($request->input('action') == 'refuse') {
        DB::table('clients')
            ->where('id', $id)
            ->update(['laivraison' => 'refuse']);
    }

    // Récupérer l'ID de l'entreprise lié au client
    $entrepriseId = DB::table('clients as c')
        ->join('orders as o', 'c.id', '=', 'o.client_id')
        ->join('products as p', 'p.id', '=', 'o.product_id')
        ->where('c.id', $id)
        ->value('p.entreprise_id');

    // Redirection vers la page clientenvoyer avec l'ID de l'entreprise
    return redirect("/clientrefuse/{$entrepriseId}");
}
public function clientrefuse($id){
    $clients = DB::table('clients as c')
    ->join('orders as o', 'c.id', '=', 'o.client_id')
    ->join('products as p', 'p.id', '=', 'o.product_id')
    ->select('c.id', 'c.nom', 'c.phone', 'c.adrees', 'c.email', 'o.id as order_id', 'p.name as product_name', 'o.quentite', 'o.prix_total')
    ->where('p.entreprise_id', $id)
    ->where('laivraison','refuse')
    ->get();

    // Organiser les produits par client
    $clientsWithProducts = $clients->groupBy('id');
    return view('ecoshop.refusecommande', compact('clientsWithProducts'));
}
public function Home($id) {
    // Compter le nombre de produits pour une entreprise spécifique
    $pro = Product::where('entreprise_id', $id)->count();

    // Compter le nombre de clients qui ont passé des commandes pour cette entreprise
    $cc = DB::table('clients as c')
    ->join('orders as o', 'c.id', '=', 'o.client_id')
    ->join('products as p', 'p.id', '=', 'o.product_id')
    ->where('p.entreprise_id', $id)
    ->where('c.laivraison', 'confirme')
    ->distinct('c.id') // Ajout de distinct pour éviter les doublons de clients
    ->count('c.id'); // Compter uniquement les clients distincts

    $cec = DB::table('clients as c')
    ->join('orders as o', 'c.id', '=', 'o.client_id')
    ->join('products as p', 'p.id', '=', 'o.product_id')
    ->where('p.entreprise_id', $id)
    ->where('c.laivraison', 'en cours')
    ->distinct('c.id') // Ajout de distinct pour éviter les doublons de clients
    ->count('c.id');

    $cs = DB::table('clients as c')
    ->join('orders as o', 'c.id', '=', 'o.client_id')
    ->join('products as p', 'p.id', '=', 'o.product_id')
    ->where('p.entreprise_id', $id)
    ->where('c.laivraison', 'success')
    ->distinct('c.id') // Ajout de distinct pour éviter les doublons de clients
    ->count('c.id');

    $cr = DB::table('clients as c')
    ->join('orders as o', 'c.id', '=', 'o.client_id')
    ->join('products as p', 'p.id', '=', 'o.product_id')
    ->where('p.entreprise_id', $id)
    ->where('c.laivraison', 'refuse')
    ->distinct('c.id') // Ajout de distinct pour éviter les doublons de clients
    ->count('c.id');

    $chaf = DB::table('clients as c')
    ->join('orders as o', 'c.id', '=', 'o.client_id')
    ->join('products as p', 'p.id', '=', 'o.product_id')
    ->where('p.entreprise_id', $id)
    ->sum('c.total');

    // Compter le nombre total de commandes pour cette entreprise
    $orders = Order::join('products', 'orders.product_id', '=', 'products.id')
        ->where('products.entreprise_id', $id)
        ->count();

    // Retourner les données à la vue
    return view('ecoshop.home', compact('pro', 'cc','cec','cs','cr', 'orders','chaf'));
}


public function contactecoshop(){
    return view('ecoshop.contactecoshop');
}
public function storecontact(Request $request)
{
    // Valider les données soumises
    $request->validate([
        'nom' => 'required|string|max:255',
        'phone' => 'required|string|max:255',
        'email' => 'required|email|max:255',
        'ville' => 'required|string|max:255',
        'message' => 'required|string|min:10',
    ]);

    // Créer un nouveau contact dans la base de données
    Contact::create([
        'nom' => $request->nom,
        'ville' => $request->ville,
        'email' => $request->email,
        'phone' => $request->phone,
        'message' => $request->message,
    ]);

    // Rediriger avec un message de succès
    return redirect('/Ecoshop')->with('success', 'Votre message a été envoyé avec succès.');
}

    
        // Méthode de connexion
        public function logine(){
            return view('ecoshop.login');
        }
        public function index(){
            $ent=Entreprise::limit(8)->get();
            $en=Entreprise::all();
            return view('ecoshop.index',compact('ent','en'));
        }
   /*     public function login(Request $request)
        {
            $request->validate([
                'email' => 'required|email',
                'password' => 'required',
            ]);
    
            $entreprise = Entreprise::where('email', $request->email)->first();
    
            if (!$entreprise || !Hash::check($request->password, $entreprise->password)) {
                return back()->withErrors(['message' => 'Identifiants invalides']);
            }
    
            $token = $entreprise->createToken('token_name')->plainTextToken;
    
            // Stockez le token dans la session ou redirigez vers une page avec le token
            $request->session()->put('token', $token);
    
            return redirect('/admine'); // Redirigez vers une page après connexion
        }
    */
    public function loginEn(Request $request)
    {
        $request->validate([
            'email' => 'required|email',
            'password' => 'required|string',
        ]);
    
        $entreprise = Entreprise::where('email', $request->email)->first();
    
        if (!$entreprise || !Hash::check($request->password, $entreprise->password)) {
            return back()->withErrors(['message' => 'Identifiants invalides']);
        }
    
        // Stockez l'ID dans la session
        $request->session()->put('id', $entreprise->id);
        $request->session()->put('nom', $entreprise->nom);
        $request->session()->put('logo', $entreprise->logo);
        $request->session()->put('lien', $entreprise->lien_magasin);
    
        return redirect('home/'. $entreprise->id); // Redirection vers la page admin
    }
    
    

        // Méthode de déconnexion
        public function logoutEn(Request $request)
        {
            // Pour supprimer le token d'authentification
            if ($request->user()) {
                $request->user()->tokens()->delete(); // Supprime tous les tokens de l'utilisateur
            }
        
            // Si vous utilisez une session, vous pouvez aussi faire :
            $request->session()->flush(); // Efface toutes les données de session
        
            return redirect('/logine'); // Redirigez vers la page d'accueil ou la page de connexion
        }

}
