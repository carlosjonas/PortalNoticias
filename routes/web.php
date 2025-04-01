<?php

use App\Http\Controllers\NewsController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;



Route::get('/', function () {
    return view('welcome');
});


//Rotas de autenticação
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');


//Criando agrupamento de middlewares para que todas as rotas precisem da autenticação do usuário
Route::middleware('auth')->group(function () {

    //Rotas de notícias
    Route::resource('noticias', NewsController::class)
    ->names("news")
    ->parameters(["noticias" => "news"]);

    //Rotas de categorias
    Route::resource('categorias', CategoryController::class)
    ->names("category")
    ->parameters(["categorias" => "category"]);

    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';

/*Route::get('/noticias', [NewsController::class, "index"])->name("news.index");
Route::get('/noticias/nova', [NewsController::class, "create"])->name("news.create");;
Route::post('/noticias/nova', [NewsController::class, "store"])->name("news.store");;

Route::resource('noticias', NewsController::class)
    ->names("news")
    ->parameters(["noticias" => "news"]);

Route::resource('categorias', CategoryController::class)
    ->names("category")
    ->parameters(["categorias" => "category"]);*/
