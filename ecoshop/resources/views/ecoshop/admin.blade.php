<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/form.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
    <title>Admin Dashboard</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

    <style>
        /* Hover effect for nav links */
        .nav-item:hover {
            background-color: black; /* Background noir */
            width: 23vw;
        }
        #nav-admin:hover{
            color: white;
        }

        .dropdown-menu a:hover {
            background-color: black; /* Background noir pour les options du dropdown */
            color: white; /* Couleur du texte claire */
        }
    </style>
</head>
<body class="bg-body-tertiary">
<div>
    <div class="row flex-nowrap">
        <div class="col-auto col-md-4 col-xl-3 px-sm-2 px-0 bg-light">
            <div class="container d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-dark min-vh-100">
                <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline">Menu</span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                    <li class="nav-item">
                        <a id="nav-admin" href="/home/{{ session('id') }}" class="nav-link align-middle px-0 ">
                            <i class="fs-4 bi-house"></i> <span class="ms-1 d-none d-sm-inline">Home</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a id="nav-admin" href="/affpro/{{ session('id') }}" class="nav-link px-0 align-middle ">
                            <i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline">Afficher Product</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a id="nav-admin" href="/pageadd/{{ session('id') }}" class="nav-link px-0 align-middle ">
                            <i class="fs-4 bi-table"></i> <span class="ms-1 d-none d-sm-inline">Ajouter Product</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a id="nav-admin" href="/Ncommande/{{ session('id') }}" class="nav-link px-0 align-middle">
                            <i class="fs-4 bi-bootstrap"></i> <span class="ms-1 d-none d-sm-inline">Commande</span>
                        </a>
                    </li>
                    <!-- Dropdown Clients -->
                    <li class="nav-item dropdown">
                        <a id="nav-admin" class="nav-link dropdown-toggle px-0 align-middle" id="dropdownClients" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                            <i class="fs-4 bi-grid"></i> <span class="ms-1 d-none d-sm-inline">Clients</span>
                        </a>
                        <ul class="dropdown-menu shadow" aria-labelledby="dropdownClients">
                            <li><a class="dropdown-item" href="/clientconf/{{ session('id') }}">Client Confirme</a></li>
                            <li><a class="dropdown-item" href="/clientenvoyer/{{ session('id') }}">Client Envoyer</a></li>
                            <li><a class="dropdown-item" href="/clientsuccess/{{ session('id') }}">Client Succès</a></li>
                            <li><a class="dropdown-item" href="/clientrefuse/{{ session('id') }}">Client Rufese</a></li>
                        </ul>
                    </li>
                </ul>
                <hr>
                <div class="dropdown pb-4">
                    <a href="#" class="d-flex align-items-center text-dark text-decoration-none dropdown-toggle" id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
                        <img src="{{ asset('storage/' . session('logo')) }}" alt="Entreprise Logo" width="30" height="30" class="rounded-circle">
                        <span class="d-none d-sm-inline mx-1">{{ session('nom') }}</span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
                        <li>
                            <form action="{{ url(session('nom'))}}" style="display: inline;">
                                @csrf
                                <button type="submit" class="dropdown-item">lien de magasin</button>
                            </form>
                        </li>
                        <li>
                            <hr class="dropdown-divider">
                        </li>
                        <li>
                            <form action="{{ url('logoutEn') }}" method="POST" style="display: inline;">
                                @csrf
                                <button type="submit" class="dropdown-item">Sign out</button>
                            </form>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-8 p-5">
            <div class="container">
                @yield('admin')
            </div>
        </div>
    </div>
</div>

<!-- Bootstrap scripts -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
