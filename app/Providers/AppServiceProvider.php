<?php

namespace App\Providers;

use Illuminate\Pagination\Paginator;
use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Gate;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\View;
use App\Models\User;
use App\Models\Category;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Gate::define("excluir-noticias", function(User $user){
            return $user->access_level === 1;
        });

        Paginator::useBootstrapFive();
        
        $categories = [];
        if(file_exists(base_path(".env"))){
            if(Schema::hasTable('categories')){
                $categories = Category::all();
            }
        }
        
         View::share('categories',$categories);
    }
}
