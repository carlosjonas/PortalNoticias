<?php

namespace App\Http\Controllers;

use App\Models\News;
use App\Models\Category;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Response;

class SiteController extends Controller
{
    public function home(){

        $topNews = News::orderBy("id","desc")->first();
        $news = News::orderBy("id","desc")->skip(1)->limit(6)->get();
        
        return view('site.home',compact("topNews","news",));
    }

    public function exibirImagem($filename){
        $path = storage_path("app/private/news/{$filename}");

        if (!file_exists($path)) {
            abort(404); // Retorna erro 404 se a imagem não existir
        }

        return Response::file($path);
    }

    public function read(News $news){


        return View("site.read",compact('news'));
    }

    public function news(){
        $news = News::orderBy("id","desc")->get();;

        return View("site.news",compact('news'));
    }
}
