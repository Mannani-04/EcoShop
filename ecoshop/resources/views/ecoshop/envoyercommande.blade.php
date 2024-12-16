@extends('ecoshop.admin')

@section('admin')
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <div class="container p-3">
        <h2>Détails des Clients Envoyers</h2>

        @foreach ($clientsWithProducts as $clientId => $products)
            @php
                $client = $products->first(); // Récupérer les données du client à partir des produits achetés
            @endphp
            <div class="card mb-4 shadow">
                <div class="card-body">
                    <h5 class="card-title">Nom : {{ $client->nom }}</h5>
                    <p class="card-text "><span class="fs-4">Téléphone</span>  : {{ $client->phone }}</p>
                    <p class="card-text"> <span class="fs-4">Adresse</span> : {{ $client->adrees }}</p>
                    <p class="card-text"> <span class="fs-4">Email</span> : {{ $client->email }}</p>

                    <!-- Bouton pour afficher les produits achetés -->
                    <div class="row">
                    <div class="col-6">
                        <button class="btn btn-primary" onclick="toggleProducts({{ $loop->index }})">
                            Afficher les produits achetés
                        </button>
                    </div>
                    <div class="col-6">
                        <form action="{{ url('/successcommande/' . $clientId) }}" method="POST">
                            @csrf
                            <!-- Champ caché pour définir l'action -->
                            <input type="hidden" name="action" id="actionField">
                        
                            <div class="btn-group" role="group" aria-label="Button group with nested dropdown">
                                <div class="btn-group" role="group">
                                    <button id="btnGroupDrop1" type="button" class="btn btn-dark dropdown-toggle" data-bs-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                        Action
                                    </button>
                                    <div class="dropdown-menu" aria-labelledby="btnGroupDrop1">
                                        <!-- Success Command -->
                                        <a href="#" class="dropdown-item" onclick="setAction('success'); this.closest('form').submit();">Commande Success</a>
                                        <!-- Refuse Command -->
                                        <a href="#" class="dropdown-item" onclick="setAction('refuse'); this.closest('form').submit();">Commande Refuse</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                        
                    </div>
                </div>
                    <!-- Section des produits achetés (cachée par défaut) -->
                    <div id="products-{{ $loop->index }}" style="display: none; margin-top: 15px;">
                        <h4>Produits achetés :</h4>
                        <ul>
                            @foreach ($products as $prod)
                                <li>{{ $prod->product_name }} -<span class="fs-5">Quantité</span>  : {{ $prod->quentite }} - <span class="fs-5">Prix</span> : {{ $prod->prix_total }} MAD</li>
                            @endforeach
                        </ul>
                    </div>
                </div>
            </div>
        @endforeach
    </div>

    <script>
        // Fonction pour afficher ou cacher la section des produits achetés
        function toggleProducts(index) {
            const productDiv = document.getElementById('products-' + index);
            productDiv.style.display = productDiv.style.display === 'none' ? 'block' : 'none';
        }
        function setAction(action) {
            document.getElementById('actionField').value = action;
        }
    </script>
@endsection
