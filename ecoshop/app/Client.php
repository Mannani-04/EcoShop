<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Client extends Model
{
    use HasFactory;

    protected $table = 'clients';
    protected $primaryKey = 'id';
    public $timestamps = true; // Correction ici
    protected $fillable = [
        'nom', 'phone', 'email', 'adrees', 'total', 'laivraison',
    ];

    // Relation avec les commandes
    public function orders()
    {
        return $this->hasMany(Order::class);
    }
}
