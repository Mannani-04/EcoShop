@php
$cart = session()->get('panier', []);
$total = 0;
foreach ($cart as $c) {
    $total += $c['prix_total'];
}
@endphp

@extends('ecoshop.client')

@section('client')
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <div class="container d-flex justify-content-center align-items-center py-5" style="min-height: 100vh;">
        <div class="row py-5">
            <h4 class="text-center">Entrez les détails de votre Client</h4>
            <p class="text-center text-body-secondary">Fournissez des informations sur votre Client</p>
            <br><br>
            <div id="ent" class="col-md-6 offset-md-3 border-dark p-5">
                <form action="{{ route('cart.storeCommande') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <input type="text" name="nom" class="form-control" placeholder="Nom" id="nom" value="{{ old('nom') }}">
                        @error('nom')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <input type="text" name="phone" class="form-control" placeholder="Téléphone" id="phone" value="{{ old('phone') }}">
                        @error('phone')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <input type="text" name="adrees" class="form-control" placeholder="Adresse" id="adresse" value="{{ old('adresse') }}">
                        @error('adrees')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <input type="email" name="email" class="form-control" placeholder="Email" id="email" value="{{ old('email') }}">
                        @error('email')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <h6>Panier</h6>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Produit</th>
                                    <th>Quantité</th>
                                    <th>Prix Total</th>
                                    <th>Action</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($cart as $c)
                                    <tr>
                                        <td>{{ $c['name'] }}</td>
                                        <td>{{ $c['quantite'] }}</td>
                                        <td>{{ $c['prix_total'] }} {{ $entreprise->monnaie }}</td>
                                        <td>
                                            <a href="/delete-au-panier/{{ $c['product_id'] }}" class="btn btn-danger btn-sm"><i class="bi bi-file-x-fill"></i></a>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                    <input type="hidden" name="laivraison" value="confirme">
                    <input type="hidden" name="total" value="{{$total}}" id="">
                    <button type="submit" class="btn btn-dark">Passer Commande</button>
                </form>
            </div>
        </div>
    </div>
@endsection
