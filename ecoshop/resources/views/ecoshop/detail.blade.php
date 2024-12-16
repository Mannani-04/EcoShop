@extends('ecoshop.client')
@section('client')

<!-- Styles CSS -->
<link rel="stylesheet" href="{{ asset('css/bootstrap.min.css') }}">

<div class="detail">
    <div class="container d-flex justify-content-center align-items-center py-4">
        <div class="row py-5">
            <div class="col-md-8">
                <div class="card shadow-lg border-0" style="width: 20rem;">
                    <a href="/{{$ent->nom}}" class="btn btn-white d-flex justify-content-end"><i style="font-size: 30px" class="bi bi-arrow-right-square-fill"></i></a>
                    <img src="{{ asset('/storage/' . $pro->image) }}" class="card-img-top" alt="{{ $pro->name }}" style="object-fit: cover; height: 400px;">
                    <div class="card-body text-center">
                        <h5 class="card-title fw-bold">{{ $pro->name }}</h5>
                        <h6 class="card-subtitle mb-2 text-muted">{{ $pro->prix }} {{ $ent->monnaie }}</h6>
                        <p>{{ $pro->description }}</p>
                        <div class="d-flex justify-content-center align-items-center my-3">
                            <form action="{{ route('panier.ajouter') }}" method="POST" id="panierForm">
                                @csrf
                                <div class="d-flex align-items-center mb-3">
                                    <span class="me-2">Quantité</span>
                                    <div class="input-group" style="width: 160px;">
                                        <button class="btn btn-outline-secondary btn-sm" type="button" id="decrementButton">-</button>
                                        <input type="text" name="quantite" id="quantityInput" class="form-control text-center" value="1">
                                        <button class="btn btn-outline-secondary btn-sm" type="button" id="incrementButton">+</button>
                                    </div>
                                </div>
                                <input type="hidden" name="product_id" value="{{ $pro->id }}">
                                <input type="hidden" name="prix_total" id="prixTotalInput" value="{{ $pro->prix }}">
                                <button type="submit" id="addButton" class="btn btn-dark w-100">Ajouter {{ $pro->prix }} {{ $ent->monnaie }}</button>
                            </form>
                        </div>
                    </div>

                    <!-- Section des commentaires -->
                    <div class="container comments-section mt-5">
                        <h5>Derniers commentaires</h5>
                        @forelse ($ratings as $rating)
                            <div class="comment border-bottom py-3">
                                <div class="d-flex align-items-center">
                                    @php
                                        $fullStars = floor($rating->rating);
                                        $emptyStars = 5 - $fullStars;
                                    @endphp

                                    @for ($i = 0; $i < $fullStars; $i++)
                                        <i class="bi bi-star-fill text-warning"></i>
                                    @endfor
                                    @for ($i = 0; $i < $emptyStars; $i++)
                                        <i class="bi bi-star text-warning"></i>
                                    @endfor
                                </div>
                                <p class="mb-0 mt-2"><strong>Anonyme :</strong> {{ $rating->comment }}</p>
                                <small class="text-muted">{{ $rating->created_at->format('d M, Y') }}</small>
                            </div>
                        @empty
                            <p class="text-muted">Aucun commentaire pour ce produit.</p>
                        @endforelse
                    </div>

                    <!-- Formulaire d'évaluation -->
                    <div class="container mt-5">
                        <h5>Évaluez ce produit</h5>
                        <form action="{{ route('product.rating') }}" method="POST">
                            @csrf
                            <div class="text-center">
                                <p>Attribuez une note à ce produit :</p>
                                <div class="rating">
                                    @for ($i = 5; $i >= 1; $i--)
                                        <input type="radio" id="star{{ $i }}" name="rating" value="{{ $i }}" required />
                                        <label for="star{{ $i }}" class="star">★</label>
                                    @endfor
                                </div>
                                <textarea name="comment" class="form-control mt-3" placeholder="Laissez un commentaire" rows="3"></textarea>
                                <input type="hidden" name="product_id" value="{{ $pro->id }}">
                            </div>
                            <button type="submit" class="btn btn-dark w-100 mt-3">Soumettre</button>
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div>
</div>

<!-- Scripts JavaScript -->
<script>
const unitPrice = {{ $pro->prix }};
const nstock = {{ $pro->stock }};
const quantityInput = document.getElementById("quantityInput");
const addButton = document.getElementById("addButton");
const prixTotalInput = document.getElementById("prixTotalInput");

// Mise à jour du prix total
function updateTotal() {
    const quantity = parseInt(quantityInput.value);
    const totalPrice = unitPrice * quantity;
    addButton.textContent = `Ajouter ${totalPrice.toFixed(2)} {{ $ent->monnaie }}`;
    prixTotalInput.value = totalPrice; 
}

// Vérification du stock
function checkStock() {
    const quantity = parseInt(quantityInput.value);
    if (quantity > nstock) {
        alert(`Stock insuffisant. Quantité disponible : ${nstock}`);
        quantityInput.value = nstock;
        updateTotal();
    }
}

// Gestion des boutons d'incrémentation et de décrémentation
function increment() {
    let quantity = parseInt(quantityInput.value);
    if (quantity < nstock) {
        quantityInput.value = quantity + 1;
        updateTotal();
    } else {
        checkStock();
    }
}

function decrement() {
    let quantity = parseInt(quantityInput.value);
    if (quantity > 1) {
        quantityInput.value = quantity - 1;
        updateTotal();
    }
}

// Initialisation du prix total
updateTotal();

// Écoute des clics
document.getElementById("incrementButton").addEventListener("click", increment);
document.getElementById("decrementButton").addEventListener("click", decrement);
quantityInput.addEventListener("input", () => {
    const value = parseInt(quantityInput.value);
    if (!isNaN(value) && value > 0) {
        checkStock();
        updateTotal();
    } else {
        quantityInput.value = 1;
        updateTotal();
    }
});
</script>

<!-- Styles CSS -->
<style>
    .rating {
        display: flex;
        justify-content: center;
        gap: 5px;
    }
    .rating input {
        display: none;
    }
    .rating label {
        font-size: 2rem;
        color: #ccc;
        cursor: pointer;
        transition: color 0.3s ease;
    }
    .rating input:checked ~ label, 
    .rating label:hover, 
    .rating label:hover ~ label {
        color: #f5c518;
    }
</style>
@endsection
