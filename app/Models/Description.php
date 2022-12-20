<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Description extends Model
{
    use HasFactory;

    //relation one to one
    public function lesson () {
        return $this->belongsTo('App\Models\Lesson');
    }
}