<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Doctor extends Model
{
    use HasFactory;
    protected $primaryKey = 'doctor_id';
    protected $fillable = ['doctor_name', 'photo_url', 'description', 'location_id', 'specialization_id'];

    public function location(){
        return $this->belongsTo(Location::class, 'location_id', 'location_id');
    }

    public function specialization(){
        return $this->belongsTo(Specialization::class, 'specialization_id', 'specialization_id');
    }
}