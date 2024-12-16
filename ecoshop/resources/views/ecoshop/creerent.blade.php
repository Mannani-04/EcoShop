@extends('ecoshop.master')
@section('content')
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <div class="container py-5" style="background-color: white">
        <div class="row justify-content-center">
            <div class="col-12 text-center">
                <img src="{{ asset('image/s.jpg') }}" alt="Image de magasin" class="img-fluid mb-4" style="width: 200px">
                <h1 class="font-weight-bold text-dark">Votre magasin est créé</h1>
                <p>Commencez à personnaliser votre magasin</p>
                <form action="{{ route('logine') }}" method="GET">
                    <button style="width: 25%" type="submit" class="btn btn-dark">Start</button>
                </form>
            </div>
        </div>
    </div>
@endsection
