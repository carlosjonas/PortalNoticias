<?php

use App\Http\Controllers\NewsController;
use App\Http\Controllers\CategoryController;
use App\Http\Controllers\SiteController;
use App\Http\Controllers\ProfileController;
use Illuminate\Support\Facades\Route;
use App\Http\Middleware\JWTExpiredMiddleware;
use Intervention\Image\Laravel\Facades\Image;
use Intervention\Image\ImageManager;
use Intervention\Image\Drivers\Gd\Driver;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Storage;
use Illuminate\Http\Request;



//Route::get('/', [SiteController::class,'home']);



//Criando agrupamento de middlewares para que todas as rotas precisem da autenticação do usuário
Route::middleware('auth')->group(function () {

    Route::prefix('admin')->group(function () {

        Route::get('', function(){
            return redirect()->route('news.index');
        });

        //Rotas de notícias
        Route::resource('noticias', NewsController::class)
            ->names("news")
            ->parameters(["noticias" => "news"]);

        Route::delete('noticias/{news}', [NewsController::class, "destroy"])
            ->name("news.destroy")    
            ->middleware('can:excluir-noticias');

        //Rotas de categorias
        Route::resource('categorias', CategoryController::class)
            ->names("category")
            ->parameters(["categorias" => "category"]);

    });

   
});

Route::get('/', [SiteController::class, 'home']);
Route::get('/noticias/categoria/{token}', [SiteController::class, 'newsCategory'])->name('newsCategory');
Route::get('/noticias/{news}/{slug}', [SiteController::class, 'read'])->name('newsRead');
Route::get('/noticias', [SiteController::class, 'news'])->name('newsIndex');
Route::get('/noticia/imagem/{filename}', [SiteController::class, 'exibirImagem'])->name('noticia.imagem');




//Rotas de autenticação
Route::get('/dashboard', function () {
    return view('dashboard');
})->middleware(['auth', 'verified'])->name('dashboard');

Route::middleware('auth')->group(function () {
    Route::get('/profile', [ProfileController::class, 'edit'])->name('profile.edit');
    Route::patch('/profile', [ProfileController::class, 'update'])->name('profile.update');
    Route::delete('/profile', [ProfileController::class, 'destroy'])->name('profile.destroy');
});

require __DIR__.'/auth.php';
//require base_path('routes/api.php');
/*AQUI ONDE FICAM O DE LOGIN E REGISTRAR 
Route::get('/', function () {
    return view('welcome');
});*/

/*Route::get('imagem', function () {

    $imageManager = Image::make('C:\xampp\htdocs\portalNoticias\storage\app\private\news\5oZC06IlBtCxuJsEm7zNw5ZUTJ95X37aUEoUjgZA.png');
    $imageManager->resize(300,200);
    $imageManager->save('C:\xampp\htdocs\portalNoticias\storage\app\private\news\thumb_5oZC06IlBtCxuJsEm7zNw5ZUTJ95X37aUEoUjgZA.png');
    /*$imageManager = new ImageManager(new Driver());
    $imageManager = $imageManager->read(storage_path('app/private/news/') . 'C:\xampp\htdocs\portalNoticias\storage\app\private\news\5oZC06IlBtCxuJsEm7zNw5ZUTJ95X37aUEoUjgZA.png');
    $imageManager->resize(300,200);
    $imageManager->save(storage_path('app/private/news/') . 'C:\xampp\htdocs\portalNoticias\storage\app\private\news\thumb_5oZC06IlBtCxuJsEm7zNw5ZUTJ95X37aUEoUjgZA.png');
});*/

/*Route::get('/noticias', [NewsController::class, "index"])->name("news.index");
Route::get('/noticias/nova', [NewsController::class, "create"])->name("news.create");;
Route::post('/noticias/nova', [NewsController::class, "store"])->name("news.store");;

Route::resource('noticias', NewsController::class)
    ->names("news")
    ->parameters(["noticias" => "news"]);

Route::resource('categorias', CategoryController::class)
    ->names("category")
    ->parameters(["categorias" => "category"]);*/

    

/*Route::middleware([JWTAuthMiddleware::class])->group(function () {
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

    Route::middleware(['jwt.expired'])->group(function () {
        Route::resource('noticias', NewsController::class)->names("news");
    });
});*/
