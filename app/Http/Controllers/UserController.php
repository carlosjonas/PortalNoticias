<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class UserController extends Controller
{

    //Retorna as informações para o Perfil
    public function show($id){
        // Verifica se o ID corresponde ao usuário autenticado
        if ($id != Auth::id()) {
            abort(403, 'Acesso não autorizado');
        }

        $user = User::findOrFail($id);
        return view('admin.user.index', compact('user'));
    }
}
