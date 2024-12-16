<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ecoshop;
use App\Http\Controllers\clientshop;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/
Route::post('/adden',[ecoshop::class,'AddEntreprise'])->name('adden');
Route::post('/addma', [ecoshop::class, 'AddMedias'])->name('addma');
Route::get('/add',[ecoshop::class, 'Add']);
Route::get('/Ecoshop',[ecoshop::class, 'index']);
Route::get('/contact/ecoshop',[ecoshop::class, 'contactecoshop']);
Route::post('/storecon', [ecoshop::class, 'storecontact'])->name('storecon');
Route::get('/addm',[ecoshop::class, 'Addm']);
Route::get('/start',[ecoshop::class, 'Start'])->name('start');
Route::get('/clientconf/{id}',[ecoshop::class, 'Clientconf'])->name('client');
Route::post('/envoyercommande/{id}',[ecoshop::class, 'envoyercommande']);
Route::get('/clientenvoyer/{id}',[ecoshop::class, 'clientenvoyer']);

// Mise à jour du statut de livraison à "success"
Route::post('/successcommande/{id}', [ecoshop::class, 'successcommande']);

// Affichage des clients avec une commande réussie
Route::get('/clientsuccess/{id}', [ecoshop::class, 'clientsuccess']);

// Mise à jour du statut de livraison à "refuse"
Route::post('/refusecommande/{id}', [ecoshop::class, 'refusecommande']);

// Affichage des clients avec une commande refusée
Route::get('/clientrefuse/{id}', [ecoshop::class, 'clientrefuse']);


Route::post('loginEn', [ecoshop::class, 'loginEn'])->name('loginEn');
Route::post('logoutEn', [ecoshop::class, 'logoutEn']);
Route::get('/logine',[ecoshop::class, 'logine'])->name('logine');
Route::middleware(['web', 'entreprise.auth'])->group(function () {
    Route::get('/admine', [ecoshop::class, 'Admin'])->name('admine');
    Route::get('/affpro/{id}', [ecoshop::class, 'Affpro'])->name('affpro');
    Route::get('/pageadd/{id}', [ecoshop::class, 'pageadd'])->name('pageadd');
    Route::get('/suppro/{id}', [ecoshop::class, 'Suppro'])->name('suppro');
    Route::post('/addpro', [ecoshop::class, 'Addpro'])->name('addpro');
    Route::put('/updatepro/{id}', [ecoshop::class, 'updatepro'])->name('updatepro');
    Route::get('/mod/{id}', [ecoshop::class, 'modP']);
    Route::get('/Ncommande/{id}', [ecoshop::class, 'NombreCom']);
    Route::get('/home/{id}', [ecoshop::class, 'home']);
});
    Route::get('/{nom}',[clientshop::class, 'product'])->name('products.index');
    Route::get('/detail/{id}',[clientshop::class, 'detail']);
    Route::post('/ajouter', [clientshop::class, 'ajouter'])->name('ajouter');
    Route::post('/ajouter-au-panier', [clientshop::class, 'ajouterAuPanier'])->name('panier.ajouter');
    Route::post('/update-au-panier', [clientshop::class, 'updatePanier'])->name('panier.update');
    Route::get('/delete-au-panier/{id}', [clientshop::class, 'deleteAuPanier']);
    //Route::get('/vvv', [ecoshop::class, 'validerCommande'])->name('validerCommande');
    Route::get('/{nom}/valider-commande',[clientshop::class, 'validerCommande'])->name('validerCommande');
    Route::post('/ecoshop/commande', [clientshop::class, 'storeCommande'])->name('cart.storeCommande');
    Route::post('/rating', [clientshop::class, 'storeRating'])->name('product.rating');


//Route::get('/', function () {
   // return view('welcome');
//});


Route::group(['prefix' => 'admin'], function () {
    Voyager::routes();
});
