@extends('ecoshop.admin')
@section('admin')
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <div class="container">
        <h2>Ajouter Produit</h2><br>
        <form class="form" action="{{route('addpro')}}" method="POST" enctype="multipart/form-data">
            @csrf
            <input type="text" name="name" placeholder="Entrer Name" class="form-control" id=""><br>
            <input type="number" name="prix" placeholder="Entrer Prix" class="form-control" id=""><br>
            <input type="file" name="image" placeholder="Entrer Image" class="form-control" id=""><br>
            <input type="number" name="stock" placeholder="Entrer Stock" class="form-control" id=""><br>
            <textarea name="description" placeholder="Entrer Description" class="form-control" id="" cols="20" rows="10"></textarea><br>
            <input type="hidden" name="entreprise_id" value="{{$id}}">
            <button class="btn btn-outline-dark" type="submit">Ajouter Produit</button>
        </form>
    </div>
@endsection