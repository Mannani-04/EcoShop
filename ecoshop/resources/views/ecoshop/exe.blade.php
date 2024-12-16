<form action="{{ route('cart.add') }}" method="POST">
    @csrf
    <input type="hidden" name="product_id" value="{{ $pro->id }}">
    <button type="submit" class="btn btn-outline-dark">
        <i class="fa-solid fa-cart-shopping"></i> {{ __('site.panier') }}
    </button>

</form>