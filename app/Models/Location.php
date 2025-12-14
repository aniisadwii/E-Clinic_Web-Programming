<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Location extends Model
{
    use HasFactory;
    protected $primaryKey = 'location_id';
    protected $fillable = ['location_name'];

    public function doctors(){
        return $this->hasMany(Doctor::class, 'location_id', 'location_id');
    }
}