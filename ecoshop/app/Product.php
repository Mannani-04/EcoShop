<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Product extends Model
{
    protected $table = 'products';
    protected $primaryKey = 'id';
    protected $fillable = [
        'name','prix','description','stock','entreprise_id','image'
    ];
    public function Entreprise()
    {
        return $this->belongsTo(Entreprise::class,);
		                             
    }
    public function Rating()
    {
        return $this->hasMany(Rating::class,'product_id');
    }
    use HasFactory;
}
