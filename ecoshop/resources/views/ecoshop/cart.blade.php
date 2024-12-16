@extends('ecoshop.client')
@section('client')
<div class="container">
    <h2>Votre Panier</h2>
    <table class="table">
        <thead>
            <tr>
                <th>Produit</th>
                <th>Quantité</th>
                <th>Prix Total</th>
            </tr>
        </thead>
        <tbody>
            @foreach($cart as $productId => $item)
                <tr>
                    <td>{{ $productId }}</td>
                    <td>{{ $item['quantity'] }}</td>
                    <td>{{ $item['prix_total'] }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
    <a href="{{ route('checkout') }}" class="btn btn-primary">Passer à la caisse</a>
</div>
@endsection