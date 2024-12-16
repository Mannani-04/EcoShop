@extends('ecoshop.admin')
@section('admin')
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
<div class="">
    <table class="table table-striped">
        <thead>
            <tr>
                <th>Id</th>
                <th>Name</th>
                <th>Prix</th>
                <th>Image</th>
                <th>Action</th>
            </tr>
            <tbody>
                @foreach ($pro as $p )
                    <tr>
                        <td>{{$p->id}}</td>
                        <td>{{$p->name}}</td>
                        <td>{{$p->prix}} Dhs</td>
                        <td> <img src="{{asset('storage/'.$p->image)}}" alt="" width="80px" height="50px"> </td>
                        <td>
                            <a href="/mod/{{$p->id}}" class="btn btn-primary btn-sm">Modifier</a>
                            <a href="/suppro/{{$p->id}}" class="btn btn-danger btn-sm">Delete</a>
                        </td>
                    </tr>
                @endforeach
            </tbody>
        </thead>
      </table>
</div>
@endsection