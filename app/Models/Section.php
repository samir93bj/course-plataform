<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Section extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    //Relation one to many
    public function lessons () {
        return $this->hasMany('App\Models\Lesson');
    }

    //Relaction one to many inverse relation
    public function course() {
        return $this->belongsTo('App\Models\Course');
    }
}
