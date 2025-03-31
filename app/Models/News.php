<?php

namespace App\Models;

Use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class News extends Model
{
    use HasFactory;

    protected $fillable = ['category_id','title','subtitle','text'];

    //Function that brings the name of the categories to the index of news
    public function category(){
        return $this->belongsTo(Category::class);
    }
}
