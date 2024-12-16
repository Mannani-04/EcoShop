<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Foundation\Auth\User as Authenticatable;
use Illuminate\Notifications\Notifiable;
use Laravel\Sanctum\HasApiTokens;

class Entreprise extends Model
{
    use HasApiTokens, HasFactory, Notifiable;
    protected $table = 'entreprises';
    protected $primaryKey = 'id';
    protected $fillable = [
        'nom','phone','email','monnaie','logo','lien_magasin','nombre_emp','password'
    ];

    public function Product()
    {
        return $this->hasMany(Product::class);
    }
    public function MediasSociaux()
    {
        return $this->hasMany(MediasSociaux::class);
    }

}
