<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Lesson extends Model
{
    use HasFactory;

    //relation one to one
    public function description () {
        return $this->hasOne('App\Models\Description');
    }

    //relatioj one to many inverse relation
    public function section () {
        return $this->belongsTo('App\Models\Section');
    }

    public function platform () {
        return $this->belongsTo('App\Models\Platform');
    }


    //relation many to many
    public function users (){
        return $this->belongsToMany('App\Models\User');
    }

    /*Relation polimorphicas*/
    //one to one
    public function resource () {
        return $this->morphOne('App\Models\Resource', 'resourceable');
    }

    //one to many
    public function comments () {
        return $this->morphMany('App\Models\Comment', 'commentable');
    }


    public function reactions () {
        return $this->morphMany('App\Models\Reaction', 'reactionable');
    }
}
