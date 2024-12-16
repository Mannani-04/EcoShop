@extends('ecoshop.admin')
@section('admin')
<style>
        /* Style pour le titre */
        h1 {
            font-family: 'Courier New', Courier, monospace;
            font-size: 3rem;
            color: #2c3e50;
            text-transform: uppercase;
            font-weight: bold;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.1);
            padding: 20px;
            background-color: #ecf0f1;
            border-radius: 10px;
            border: 3px solid rgba(0, 0, 0, 0.1);
            box-shadow: 0 4px 6px rgba(237, 249, 2, 0.947);
            transition: all 0.3s ease-in-out;
        }

        /* Animation typewriter */
        .typewriter {
            display: inline-block;
            white-space: nowrap;
            overflow: hidden;
            border-right: 4px solid black; /* Le curseur */
            width: 0;
            animation: typing 4s steps(30) 1s forwards, blink 0.75s step-end infinite;
        }

        /* Animation du texte qui tape */
        @keyframes typing {
            from {
                width: 0;
            }
            to {
                width: 62%;
            }
        }

        /* Animation du clignotement du curseur */
        @keyframes blink {
            50% {
                border-color: transparent;
            }
        }

        /* Ajout d'un effet hover */
        h1:hover {
            transform: scale(1.1);
            background-color: #3498db;
            color: white;
        }
    </style>
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
<div class="container my-5">
    <h1 class="typewriter">Bienvenu {{ session('nom') }}</h1>
    <br><br>
    <div class="row">
        <!-- Carte pour le nombre de produits -->
        <div class="col-md-4 mb-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4 class="card-title">Nombre de Produits</h4>
                    <p class="card-text fs-3">{{ $pro }}</p>
                </div>
            </div>
        </div>

        <!-- Carte pour le nombre de clients -->
        <div class="col-md-4 mb-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4 class="card-title">Nombre de Clients Confirmes</h4>
                    <p class="card-text fs-3">{{ $cc }}</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4 class="card-title">Nombre de Clients Envoyer</h4>
                    <p class="card-text fs-3">{{ $cec }}</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4 class="card-title">Nombre de Clients Success</h4>
                    <p class="card-text fs-3">{{ $cs }}</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4 class="card-title">Nombre de Clients Refuses</h4>
                    <p class="card-text fs-3">{{ $cr }}</p>
                </div>
            </div>
        </div>

        <div class="col-md-4 mb-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4 class="card-title">chiffre d'affaires</h4>
                    <p class="card-text fs-3">{{ $chaf }} Dhs</p>
                </div>
            </div>
        </div>
        <!-- Carte pour le nombre de commandes -->
        <div class="col-md-4 mb-4">
            <div class="card shadow">
                <div class="card-body">
                    <h4 class="card-title">Nombre de Commandes</h4>
                    <p class="card-text fs-3">{{ $orders }}</p>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
