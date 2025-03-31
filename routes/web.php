<?php

use App\Http\Controllers\NewsController;
use Illuminate\Support\Facades\Route;

/*Route::get('/noticias', [NewsController::class, "index"])->name("news.index");
Route::get('/noticias/nova', [NewsController::class, "create"])->name("news.create");;
Route::post('/noticias/nova', [NewsController::class, "store"])->name("news.store");;*/

Route::resource('noticias', NewsController::class)
    ->names("news")
    ->parameters(["noticias" => "news"]);