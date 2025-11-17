<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class HomeArt extends Model
{
    use HasFactory;
    protected $fillable=[
        'title',
        'description',
        'image',
    ];
}
