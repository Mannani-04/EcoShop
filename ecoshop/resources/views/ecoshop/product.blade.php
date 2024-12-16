@extends('ecoshop.client')
@section('client')
<link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">

<style>
    #titre-ent{
    background: linear-gradient(90deg,#0b0303,#d4bb2b);
    -webkit-background-clip: text;
    background-clip: text;
    -webkit-text-fill-color: transparent;
}
    .social-icons {
        display: flex;
        justify-content: center;
        gap: 15px;
        margin-top: 20px;
    }

    .social-icons a {
        display: inline-flex;
        align-items: center;
        justify-content: center;
        width: 50px;
        height: 50px;
        font-size: 24px;
        color: white;
        text-decoration: none;
    }

    #WhatsApp:hover {
        color: #1EBE5C;
    }

    #Instagram:hover {
        color: #E4405F;
    }

    #Telegram:hover {
        color: #007AB8;
    }


    #Facebook:hover {
        color: #165EC8; 
    }
</style>
<div class="container">
    <link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
<br>

    <div class="row py-5 ">
        <div class="col-md-4 d-flex flex-column justify-content-center align-items-center text-center" style="min-height: 100vh;">
            <!-- Logo de l'entreprise -->
            <div class="rounded-circle p-1" style="width: 252px; height: 252px; display: flex; align-items: center; justify-content: center; box-shadow:1px 1px 20px rgb(9, 9, 0);">
                <img src="{{ asset('storage/'.$entreprise->logo) }}" class="rounded-circle" style="width: 250px; height: 250px;" alt="Logo de l'entreprise">
            </div>
            <br>
            <!-- Nom de l'entreprise -->
            <h1 id="titre-ent">{{ $entreprise->nom }}</h1>
            <input type="hidden" id="lien" value="{{ $entreprise->lien_magasin }}">
            <br>
            <!-- Liens des réseaux sociaux -->
            <div class="social text-center" style="margin-top: 20px;">
                <a href="{{ $media->whatsapp }}" class="me-3" style="font-size: 40px;text-decoration: none;" title="WhatsApp" id="WhatsApp">
                    <i class="fa-brands fa-whatsapp"></i>
                </a>
                <a href="{{ $media->instagram }}" class="me-3" style="font-size: 40px;text-decoration: none;" title="Instagram" id="Instagram">
                    <i class="fa-brands fa-instagram"></i>
                </a>
                <a href="{{ $media->telegram }}" class="me-3" style=" font-size: 40px;text-decoration: none;" title="Telegram" id="Telegram">
                    <i class="fa-brands fa-telegram-plane"></i>
                </a>
                <a href="{{ $media->facebook }}" class="me-3" style="font-size: 40px;text-decoration: none;" title="Facebook" id="Facebook">
                    <i class="fa-brands fa-facebook"></i>
                </a>
            </div>
            <!-- Conteneur pour afficher le QR code -->
            <div id="qr-code-container" style="margin-top: 20px;"></div>
        </div>
        
        
        <script src="{{asset('js/qrcode.min.js')}}"></script>

        <div class="col-md-8">
            <div class="row">
                @foreach ($pro as $p)
                <div class="col-md-4 mb-4">
                    <div id="card-product" class="card border-0 rounded-1 shadow" style="max-width: 18rem;">
                        <img src="{{ asset('storage/'.$p->image) }}" style="width: 100%; height: 200px; object-fit: cover;" class="card-img-top rounded-0" alt="{{ $p->name }}">
                        <div class="card-body">
                            <h5 class="card-title">{{ $p->name }}</h5>
                            <p class="card-text">
                                @php
                                    $avgRating = number_format($p->avg_rating ?? 0, 1);
                                    $fullStars = floor($avgRating); // Étoiles pleines
                                    $halfStar = ($avgRating - $fullStars) >= 0.5 ? 1 : 0; // Étoile demi
                                    $emptyStars = 5 - ($fullStars + $halfStar); // Étoiles vides
                                @endphp
            
                                {{-- Étoiles pleines --}}
                                @for ($i = 0; $i < $fullStars; $i++)
                                    <i class="bi bi-star-fill text-warning"></i>
                                @endfor
            
                                {{-- Étoile demi --}}
                                @if ($halfStar)
                                    <i class="bi bi-star-half text-warning"></i>
                                @endif
            
                                {{-- Étoiles vides --}}
                                @for ($i = 0; $i < $emptyStars; $i++)
                                    <i class="bi bi-star text-warning"></i>
                                @endfor
            
                                <small>({{ $avgRating }})</small>
                            </p>
                            <div class="row align-items-center text-center g-0">
                                <div class="col-6">
                                    <h6>{{ $p->prix }} Dhs</h6>
                                </div>
                                <div class="col-6">
                                    @if($p->stock > 0)
                                        <a href="/detail/{{ $p->id }}" class="btn btn-dark text-warning w-100 rounded-0">Voir</a>
                                    @else
                                        <button class="btn btn-dark text-warning w-100 rounded-0" disabled>fin</button>
                                    @endif
                                </div>                                
                            </div>
                        </div>
                    </div>
                </div>
            @endforeach
            
            </div>
            <div class="pagination">
                {{ $pro->links('pagination::bootstrap-5') }}
            </div>
        </div>
    </div>
    
    <div class="text-center">
        @php
            $cart = session()->get('panier', []);
            $n = count($cart);
            $total = 0;
            foreach ($cart as $c) {
                $total += $c['prix_total'];
            }
        @endphp

        @if ($n > 0)
            <div class="d-flex justify-content-center align-items-center">
                <button id="btnpanier" class="btn btn-dark d-flex justify-content-between align-items-center p-2" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasRight" aria-controls="offcanvasRight" style="gap: 120px;">
                    <span class="ms-auto"><span class="badge bg-light rounded-pill">{{ $n }}</span></span>
                    <span class="mx-auto">Panier</span>
                    <span class="me-auto">{{ $total }} {{ $entreprise->monnaie }}</span>
                </button>  
            </div>  
        @endif

        <div class="offcanvas offcanvas-end" tabindex="-1" id="offcanvasRight" aria-labelledby="offcanvasRightLabel" style="width: 600px">
            <div class="offcanvas-header">
                <h5 class="offcanvas-title" id="offcanvasRightLabel">Panier</h5>
                <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"></button>
            </div>
            <div class="offcanvas-body">
                <div class="table-responsive">
                    <table class="table table-light">
                        <thead>
                            <tr>
                                <th scope="col">Nom</th>
                                <th scope="col">Quantité</th>
                                <th scope="col">Prix</th>
                                <th scope="col">Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @forelse ($cart as $c)
                                <tr>
                                    <td>{{ $c['name'] }}</td>
                                    <td>
                                        <form action="{{ route('panier.update') }}" method="post">
                                            @csrf
                                            <div class="input-group" style="width: 160px;">
                                                <button type="button" class="btn btn-outline-secondary btn-sm decrement-button">-</button>
                                                <input type="text" name="quantite" class="form-control text-center quantity-input" value="{{ $c['quantite'] }}">
                                                <button type="button" class="btn btn-outline-secondary btn-sm increment-button">+</button>
                                            </div>
                                            <input type="hidden" name="product_id" value="{{ $c['product_id'] }}">
                                            <button type="submit" class="btn btn-primary btn-sm">Mettre à jour</button>
                                        </form>
                                    </td>
                                    <td>{{ $c['prix_total'] }} {{ $entreprise->monnaie }}</td>
                                    <td>
                                        <a href="/delete-au-panier/{{ $c['product_id'] }}" class="btn btn-danger btn-sm"><i class="bi bi-file-x-fill"></i></a>
                                    </td>
                                </tr>
                            @empty
                                <tr>
                                    <td colspan="4">
                                        <div class="alert alert-primary" role="alert">
                                            Panier vide!
                                        </div>
                                    </td>
                                </tr>
                            @endforelse
                        </tbody>
                    </table>
                </div>
            </div>
            <div class="" >
                <a style="width: 50%" class="btn btn-dark" href="{{ url($entreprise->nom.'/valider-commande') }}">Commande</a>
            </div>
        </div>
    </div>
</div>

 <script>
    window.onload = function() {
        // Affichage de l'offcanvas si une session de succès existe
        @if (session('success'))
            var offcanvas = new bootstrap.Offcanvas(document.getElementById('offcanvasRight'));
            offcanvas.show();
        @endif
    };
    function incrementQuantity(button) {
        const quantityInput = button.parentElement.querySelector('.quantity-input');
        quantityInput.value = parseInt(quantityInput.value) + 1;
    }

    function decrementQuantity(button) {
        const quantityInput = button.parentElement.querySelector('.quantity-input');
        let quantity = parseInt(quantityInput.value);
        if (quantity > 1) {
            quantityInput.value = quantity - 1;
        }
    }

    document.querySelectorAll('.increment-button').forEach(button => {
        button.addEventListener('click', () => incrementQuantity(button));
    });

    document.querySelectorAll('.decrement-button').forEach(button => {
        button.addEventListener('click', () => decrementQuantity(button));
    });

    var data=document.getElementById('lien').value;
    var qrcode= new QRCode(document.getElementById('qr-code-container'));
    qrcode.makeCode(data);
</script>
@endsection
