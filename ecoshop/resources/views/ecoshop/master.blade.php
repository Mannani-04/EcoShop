<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="{{asset('css/form.css')}}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css" integrity="sha384-4LISF5TTJX/fLmGSxO53rV4miRxdg84mZsxmO8Rx5jGtp/LbrixFETvWa5a6sESd" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
</head>
<div class="container">
    <div class="row align-items-center p-3">
        <div class="col">
            <a href="/Ecoshop"><h2 class="text-dark">EcoShop</h2></a>
        </div>
        <div class="col text-end">
            <a href="/logine" class="btn btn-light">Se connecter</a>
            <a href="/add" class="btn btn-dark">S'inscrire</a>
        </div>
    </div>
</div>
<body class="bg-body-tertiary">
    <div class="container">
        @yield('content')
    </div>
    <br>
    <footer class="bg-dark text-light">
        <div class="container">
            <div class="row p-5">
                <!-- Section À propos -->
                <div class="col-md-4 mb-3">
                    <h4 class="text-light">À propos</h4>
                    <p>EcoShop est une boutique en ligne qui propose des produits éco-responsables.</p>
                </div>
    
                <!-- Section Liens utiles -->
                <div class="col-md-4 mb-3">
                    <h4 class="text-light">Liens utiles</h4>
                    <ul class="list-unstyled">
                        <li><a style="text-decoration: none" href="/logine" class="text-light">Se connecter</a></li>
                        <li><a style="text-decoration: none" href="/add" class="text-light">S'inscrire</a></li>
                        <li><a style="text-decoration: none" href="/contact/ecoshop" class="text-light">Contact</a></li>
                    </ul>
                </div>
    
                <!-- Section Contact -->
                <div class="col-md-4 mb-3">
                    <h4 class="text-light">Contact</h4>
                    <p><i class="bi bi-telephone"></i> +212 600 000 000</p>
                    <p><i class="bi bi-envelope"></i> contact@ecoshop.com</p>
                    <p><i class="bi bi-geo-alt"></i> Casablanca, Maroc</p>
                </div>
            </div>
    
            <!-- Section Copyright -->
            <div class="row mt-4 py-3">
                <div class="col-12 text-center">
                    <div class=" text-center">
                        <p class="mb-0">&copy; 2024 EcoShop. Tous droits réservés.</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <script src="{{asset('js/bootstrap.min.js')}}"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>