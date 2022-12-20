<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Requeriment extends Model
{
    use HasFactory;

    //Relaction one to many inverse relation
    public function course() {
        return $this->belongsTo('App\Models\Course');
    }
}
