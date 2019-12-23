<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Admin extends Model
{
    protected $table='admin_table';
    protected $fillable=['name','email','password','image'];
}
