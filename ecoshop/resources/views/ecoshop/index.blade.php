<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('css/form.css') }}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.1/font/bootstrap-icons.css">
    <title>EcoShop</title>
</head>
<body class="bg-light">
    <!-- Header -->
    <div class="container">
        <div class="row align-items-center p-3">
            <div class="col">
                <h2>EcoShop</h2>
            </div>
            <div class="col text-end">
                <a href="/logine" class="btn btn-light">Se connecter</a>
                <a href="/add" class="btn btn-dark">S'inscrire</a>
            </div>
        </div>
    </div>

    <!-- Section principale -->
    <div class="index">
        <div class="container text-center my-5">
            <h1 class="display-1">Créer un commerce <br> électronique pour <br> WhatsApp</h1>
            <p class="text-dark">
                Simplifiez les commandes WhatsApp. <br>
                Boostez vos ventes avec un meilleur service client.
            </p>
            <a href="/add" class="btn btn-dark ">Get started</a>
        </div>
    </div>

    <!-- Section des entreprises -->
    <h1 id="magasin" class="text-center">Les Magasins</h1>
    <div class="entreprise">
        <div class="containerent">
            @foreach ($ent as $index => $e)
                <span style="--i:{{ $index }}">
                    <img id="img-ent" src="{{ asset('storage/' . $e->logo) }}" alt="Logo de l'entreprise">
                </span>
            @endforeach
        </div>
    </div>
    
    
    <div class="about">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h2>About Ecoshop</h2>
                    <p>Ecoshop est une plateforme e-commerce développée pour permettre aux entreprises 
                        de vendre leurs produits en ligne de manière simple et sécurisée. Le projet intègre une gestion 
                        complète des produits, des commandes et des livraisons, tout en offrant une expérience utilisateur 
                        fluide et intuitive. Il inclut des fonctionnalités telles que l'ajout au panier, la gestion 
                        des commandes en cours et réussies, et l'envoi de notifications par WhatsApp aux commerçants.</p>
                </div>
                <div class="col-md-6">
                    <!-- Carrousel d'images -->
                    <div id="carouselExampleAutoplaying" class="carousel slide" data-bs-ride="carousel" data-bs-interval="5000">
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="{{ asset('image/i1.jpg') }}" class="d-block w-100" alt="Image 1">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('image/i2.jpg') }}" class="d-block w-100" alt="Image 2">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('image/i3.jpg') }}" class="d-block w-100" alt="Image 3">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('image/i4.jpg') }}" class="d-block w-100" alt="Image 4">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('image/i5.jpg') }}" class="d-block w-100" alt="Image 5">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('image/i6.jpg') }}" class="d-block w-100" alt="Image 6">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('image/i7.jpg') }}" class="d-block w-100" alt="Image 7">
                            </div>
                            <div class="carousel-item">
                                <img src="{{ asset('image/i8.jpg') }}" class="d-block w-100" alt="Image 8">
                            </div>
                        </div>
                        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="prev">
                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Previous</span>
                        </button>
                        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleAutoplaying" data-bs-slide="next">
                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                            <span class="visually-hidden">Next</span>
                        </button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br><br>
    <div class="advantages">
        <div class="container">
            <h2 class="text-center">Avantages d'Ecoshop</h2>
            <div class="row">
                <div class="col-md-4 text-center">
                    <div class="advantage-card">
                        <i class="fas fa-shopping-cart"></i>
                        <h3>Gestion simplifiée des produits</h3>
                        <p>Ajoutez, modifiez et gérez vos produits facilement grâce à une interface intuitive.</p>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="advantage-card">
                        <i class="fas fa-truck"></i>
                        <h3>Suivi des livraisons</h3>
                        <p>Gardez un œil sur l'état des livraisons avec des notifications automatiques.</p>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="advantage-card">
                        <i class="fas fa-bullhorn"></i>
                        <h3>Notifications par WhatsApp</h3>
                        <p>Recevez des notifications instantanées pour chaque nouvelle commande.</p>
                    </div>
                </div>
            </div>
            <div class="row mt-4">
                <div class="col-md-4 text-center">
                    <div class="advantage-card">
                        <i class="fas fa-user-friends"></i>
                        <h3>Expérience client améliorée</h3>
                        <p>Offrez une expérience d'achat fluide et sécurisée à vos clients.</p>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="advantage-card">
                        <i class="fas fa-chart-line"></i>
                        <h3>Suivi des performances</h3>
                        <p>Analysez vos ventes et optimisez votre stratégie commerciale.</p>
                    </div>
                </div>
                <div class="col-md-4 text-center">
                    <div class="advantage-card">
                        <i class="fas fa-lock"></i>
                        <h3>Sécurité renforcée</h3>
                        <p>Assurez la protection des données de vos clients et de votre entreprise.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="marque bg-light">
        <div class="container">
            <div class="marque-content">
                @foreach ($en as $e)
                    <span class="text text-center">
                        <img src="{{ asset('storage/' . $e->logo) }}" alt="Logo" class="marque-logo">
                        <h6>{{$e->nom}}</h6>
                    </span>
                @endforeach
            </div>
        </div>
    </div>
    
    <br>
    <!-- Style CSS -->
    <style>
        .about {
            padding: 50px 0;
            background-color: #f8f9fa;
        }
        
        .about h2 {
            font-size: 2.5rem;
            margin-bottom: 20px;
            font-weight: bold;
            color: #343a40;
        }
        
        .about p {
            font-size: 1.2rem;
            color: #6c757d;
            line-height: 1.6;
        }
    
        .carousel-inner img {
            border-radius: 10px;
        }
    
        .carousel-control-prev-icon,
        .carousel-control-next-icon {
            background-color: #fafafa;
        }
    
        /* Pour garantir un bon espacement sur les appareils plus petits */
        @media (max-width: 768px) {
            .about .row {
                flex-direction: column;
            }
    
            .about h2 {
                text-align: center;
            }
        }
        .advantages {
        padding: 50px 0;
        background-color: #f8f9fa;
    }

    .advantages h2 {
        font-size: 2.5rem;
        margin-bottom: 30px;
        font-weight: bold;
        color: #343a40;
    }

    .advantage-card {
        background: #fff;
        padding: 20px;
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
        transition: transform 0.3s ease-in-out;
    }

    .advantage-card:hover {
        transform: translateY(-10px);
    }

    .advantage-card i {
        font-size: 3rem;
        color: #007bff;
        margin-bottom: 15px;
    }

    .advantage-card h3 {
        font-size: 1.5rem;
        font-weight: bold;
        margin-bottom: 10px;
        color: #343a40;
    }

    .advantage-card p {
        font-size: 1rem;
        color: #6c757d;
    }

    /* Conteneur principal */
.marque {
    overflow: hidden;
    padding: 10px 0;
    background-color: lightcyan
}

/* Conteneur du contenu */
.marque-content {
    display: flex;
    align-items: center;
    gap: 20px;
    animation: scroll 15s linear infinite;
    white-space: nowrap;
}

.marque-content .text h6 {
    margin-top: 10px; /* Espacement entre l'image et le texte */
    font-size: 1rem;  /* Taille de la police */
    color: #343a40;   /* Couleur du texte */
    font-weight: bold; /* Poids du texte */
    text-transform: capitalize; /* Mettre en majuscule la première lettre de chaque mot */
}


/* Styles des images */
.marque-content span{
    padding-right: 100px
    
}

.marque-content img {
    height: 100px;
    max-width: 150px;
    object-fit: contain;
    transition: transform 0.3s ease;
}

.marque-content img:hover {
    transform: scale(1.1); /* Zoom au survol */
}

/* Animation défilement */
@keyframes scroll {
    from {
        transform: translateX(100%);
    }
    to {
        transform: translateX(-100%);
    }
}

/* Responsive */
@media (max-width: 768px) {
    .marque-content img {
        height: 40px;
        max-width: 80px;
    }
}

@media (max-width: 576px) {
    .marque-content img {
        height: 30px;
        max-width: 60px;
    }
}

    </style>
    
    

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
    <!-- Scripts -->
    <script src="{{ asset('js/bootstrap.min.js') }}"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
