<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class MediasSociaux extends Model
{
    use HasFactory;
    protected $table = 'mediassociauxs';
    protected $primaryKey = 'id';
    public $timeStamps = true;
    protected $fillable = [
        'facebock','instagrame','telegrame','whatsapp','entreprise_id'
    ];
    public function entreprise()
    {
        return $this->belongsTo(entreprise::class);
		                             
    }
}
