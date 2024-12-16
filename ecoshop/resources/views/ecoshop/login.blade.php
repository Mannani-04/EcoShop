<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Se connecter - EcoShop</title>
    <!-- Inclure Bootstrap -->
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
    <style>
        body{
            background-image: url('/image/ba.jpg');
            background-repeat: no-repeat;
            background-size: cover
        }
    </style>
</head>
<body>

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

<div class="container">
    <div id="login" class="row justify-content-center align-items-center">
        <div  class="col-6 border-0 shadow p-4">
            <h1 class="text-center login-title mb-4"><i class="bi bi-shop"></i> EcoShop</h1>
            <form action="{{ url('loginEn') }}" method="POST">
                <h4 class="text-center text-dark mb-4">Login</h4>
                @csrf
                <div class="form-group mb-3">
                    <label for="" class="form-label text-dark">Email</label><br>
                    <div class="input-group">
                        <input placeholder="Email" class="form-control" type="email" name="email" id="email" required>
                        <span class="input-group-text"><i class="bi bi-person-fill"></i></span>
                    </div>
                </div>
                <div class="form-group mb-3">
                    <label for="" class="form-label taxt-dark">Password</label><br>
                    <div class="input-group">
                        <input placeholder="Password" class="form-control" type="password" name="password" id="password" required>
                        <span class="input-group-text"><i class="bi bi-lock-fill"></i></span>
                    </div>
                </div>
                <div class="d-grid">
                    <button class="btn btn-dark" type="submit">Se connecter</button>
                </div>
            </form>
            @if ($errors->any())
                <div class="alert alert-danger mt-3">
                    <strong>{{ $errors->first() }}</strong>
                </div>
            @endif
        </div>
    </div>
</div>

<script src="{{asset('js/bootstrap.bundle.min.js')}}"></script>
</body>
</html>
