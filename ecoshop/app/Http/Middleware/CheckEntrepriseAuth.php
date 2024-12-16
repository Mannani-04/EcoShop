<?php
namespace App\Http\Middleware;

use Closure;
use Illuminate\Support\Facades\Session;

class CheckEntrepriseAuth
{
    public function handle($request, Closure $next)
    {
        // Vérifie si l'entreprise est connectée
        if (!Session::has('id')) {
            // Redirige vers la page de connexion
            return redirect()->route('logine');
        }

        return $next($request);
    }
}
