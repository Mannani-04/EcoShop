<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\Entreprise; // Assurez-vous que le chemin est correct
use Illuminate\Support\Facades\Hash;

class EntrepriseSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Entreprise::create([
            'nom' => 'Entreprise de Test',
            'phone' => '123456789',
            'email' => 'test@entreprise.com',
            'monnaie' => 'EUR',
            'logo' => 'default_logo.png',
            'type' => 'IT',
            'lien_magasin' => 'https://entreprise.com/magasin',
            'nombre_emp' => 50,
            'password' => Hash::make('password123'), // Hash du mot de passe
        ]);
    }
}
