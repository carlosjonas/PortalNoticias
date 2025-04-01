<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use App\Http\Requests\Auth\LoginRequest;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\View\View;
use Tymon\JWTAuth\Facades\JWTAuth;

class AuthenticatedSessionController extends Controller
{
    /**
     * Display the login view.
     */
    public function create(): View
    {
        return view('auth.login');
    }

    /**
     * Handle an incoming authentication request.
     */
    public function store(LoginRequest $request): RedirectResponse
    {
        $request->authenticate();

        $request->session()->regenerate();

        /*$token = JWTAuth::claims(['exp' => now()->addMinutes(5)->timestamp])
        ->fromUser(Auth::user());
    
        // Enviar o token como um cookie seguro ou no response
        return redirect()->intended('/noticias')->withCookie(cookie('jwt_token', $token, 5));

        // Gerar token JWT após o login bem-sucedido do Breeze
        $token = JWTAuth::fromUser(Auth::user());
        
        session(['jwt_token' => $token]);*/

        return redirect()->intended('noticias');
        //return redirect()->intended(route('dashboard', absolute: false));*/
        // Criar um token JWT com tempo de expiração de 5 minutos
   
    }

    /**
     * Destroy an authenticated session.
     */
    public function destroy(Request $request): RedirectResponse
    {
        Auth::guard('web')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/');
    }
}
