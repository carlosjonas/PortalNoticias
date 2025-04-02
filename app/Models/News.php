<?php

namespace App\Models;

Use App\Models\Category;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Str;

class News extends Model
{
    use HasFactory;

    protected $fillable = ['category_id','title','subtitle','text','cover','id_user'];

    public function getSummaryAttribute(){
        
        return Str::substr($this->attributes['text'],0,100)."...";
    
    }

    public function getSlugTitleAttribute(){
        
        return Str::slug($this->attributes['title']);
    
    }

    //Function that brings the name of the categories to the index of news
    public function category(){
        
        return $this->belongsTo(Category::class);
    
    }
}
