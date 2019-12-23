<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Attendance extends Model
{
    protected $table='attendance';
    protected $fillable=['name','email','attendance','date'];
    public $timestamps = false;

}
