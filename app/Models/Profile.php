<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Profile extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    //Relation one to one inverse relationship
    public function user() {
        return $this->belongsTo('App\Models\User');
    }
}
