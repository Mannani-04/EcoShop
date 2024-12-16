<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <title>Document</title>
</head>
<body class="bg-light">
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
    <br>
    <div class="container">
        <div class="row">
            <div class="col-7">
                <h1 class="text text-dark text-center">Contact</h1>
                <p class="text text-dark text-center">Lorem ipsum dolor, sit amet consectetur adipisicing elit.</p>
                <form action="{{route('storecon')}}" method="POST">
                    @csrf
                    <input type="text" name="nom" id="" class="form-control" placeholder="Entre Nom">
                    @error('nom')
                        <div class="text-danger mt-1">{{ $message }}</div>
                    @enderror
                    <br>
                    <input type="text" name="phone" id="" class="form-control" placeholder="Entre Telephone">
                    @error('phone')
                        <div class="text-danger mt-1">{{ $message }}</div>
                    @enderror
                    <br>
                    <input type="email" name="email" id="" class="form-control" placeholder="Entre Email">
                    @error('email')
                        <div class="text-danger mt-1">{{ $message }}</div>
                    @enderror
                    <br>
                    <input type="text" name="ville" id="" class="form-control" placeholder="Entre Ville">
                    @error('ville')
                        <div class="text-danger mt-1">{{ $message }}</div>
                    @enderror
                     <br>
                    <textarea name="message" id="" cols="30" rows="5" class="form-control" placeholder="Entre Message"></textarea>
                    @error('message')
                        <div class="text-danger mt-1">{{ $message }}</div>
                    @enderror
                    <br>
                    <button type="submit" class="btn btn-dark">Envoyer Contact</button>
                </form>
            </div>
            <div class="col-5 p-5">
                <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d53189.68046676829!2d-7.677219644961735!3d33.5701301423942!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0xda7d2e9854fbd49%3A0xcb8dc82bd8575005!2sMaarif%2C%20Casablanca!5e0!3m2!1sfr!2sma!4v1731591847600!5m2!1sfr!2sma" width="450" height="500" style="border:3;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
            </div>
        </div>
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
</body>
</html>