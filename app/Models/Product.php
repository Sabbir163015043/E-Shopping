<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    public function Category()
    {
        return $this ->belongsTo('App\Models\Category');
    }
    public function Brand()
    {
        return $this ->belongsTo('App\Models\Brand');
    }
    public function subImages()
    {
        return $this->hasMany('App\Models\SubImage');
    }
}
