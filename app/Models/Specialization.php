<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class Specialization extends Model
{
    use HasFactory;
    protected $primaryKey = 'specialization_id';
    protected $fillable = ['specialization_name'];

    public function doctors(){
        return $this->hasMany(Doctor::class, 'specialization_id', 'specialization_id');
    }
}