@extends('ecoshop.admin')
@section('admin')
    <div class="container">
        <h2>Modifier Produit</h2>
        <form class="form" action="{{route('updatepro',['id'=>$pro->id])}}" method="POST" enctype="multipart/form-data">
            @csrf
            @method('PUT')
            <input type="text" name="name" placeholder="Entrer Name" value="{{$pro->name}}" class="form-control" id=""><br>
            <input type="number" name="prix" placeholder="Entrer Prix" value="{{$pro->prix}}" class="form-control" id=""><br>
            <input type="file" name="image" placeholder="Entrer Image" value="{{$pro->image}}" class="form-control" id=""><br>
            <input type="number" name="stock" placeholder="Entrer Stock" value="{{$pro->stock}}" class="form-control" id=""><br>
            <textarea name="description" placeholder="Entrer Description" class="form-control" id="" cols="20" rows="10">{{$pro->description}}</textarea><br>
            <input type="hidden" name="entreprise_id" value="{{$pro->entreprise_id}}">
            <button class="btn btn-outline-dark" type="submit">Modifer Produit</button>
        </form>
    </div>
@endsection