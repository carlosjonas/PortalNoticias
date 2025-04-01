<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Tymon\JWTAuth\Facades\JWTAuth;
use Symfony\Component\HttpFoundation\Response;

class JWTExpiredMiddleware
{
    public function handle(Request $request, Closure $next)
    {
        try {
            JWTAuth::parseToken()->authenticate();
        } catch (\Tymon\JWTAuth\Exceptions\TokenExpiredException $e) {
            return redirect('/login')->with('error', 'Sua sessão expirou. Faça login novamente.');
        } catch (\Exception $e) {
            return redirect('/login')->with('error', 'Token inválido.');
        }

        return $next($request);
    }
}