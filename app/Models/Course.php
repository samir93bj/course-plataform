<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Course extends Model
{
    use HasFactory;

    const BORRADOR = 1;
    const REVISION = 2;
    const PUBLICADO = 3;


    //Relaction one to many
    public function reviews() {
        return $this->hasMany('App\models\Review');
    }

    //Relation one to many inverse relation
    public function teacher(){
        return new $this->belongsTo('App\Models\User', 'user_id');
    }

    public function level(){
        return new $this->belongsTo('App\Models\level');
    }

    public function price(){
        return new $this->belongsTo('App\Models\Price');
    }

    public function category(){
        return new $this->belongsTo('App\Models\Category');
    }

    public function requeriments(){
        return new $this->hasMany('App\Models\Requeriment');
    }

    public function goals(){
        return new $this->hasMany('App\Models\Goal');
    }

    public function audiences(){
        return new $this->hasMany('App\Models\Audience');
    }

    public function sections(){
        return new $this->hasMany('App\Models\Section');
    }

    //Relation many to many
    public function students (){
        return new $this->belongsToMany('App\Models\User');
    }


    //Relation one to one polymorph
    public function image (){
        return $this->morphOne('App\Models\Image', 'imageable');
    }


    public function lessons () {
        return $this->hasManyThrough('App\Models\Lesson', 'App\Models\Section');
    }
}
