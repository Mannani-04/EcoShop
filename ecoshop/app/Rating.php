<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Rating extends Model
{
    protected $table = 'ratings';
    protected $primaryKey = 'id';
    public $timestamps = true; // Correction ici
    protected $fillable = [
        'comment','product_id','rating'
    ];
    public function Product()
    {
        return $this->belongsTo(Product::class,'product_id');
		                             
    }

    use HasFactory;
}
