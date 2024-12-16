@extends('ecoshop.master')
@section('content')
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
<br>
    <div class="container d-flex justify-content-center align-items-center py-5" style="min-height: 100vh;">
        <div class="row">
            <h4 class="text-center">Entrez les détails de votre Entreprise</h4>
            <p class="text-center text-body-secondary">Fournissez des informations sur votre entreprise ou société</p>
            <br><br>
            <div id="ent" class="col-md-6 offset-md-3 border-dark p-4">
                <form class="form" action="{{ route('adden') }}" method="POST" enctype="multipart/form-data">
                    @csrf
                    <div class="mb-3">
                        <input type="file" name="logo" class="form-control" placeholder="Logo" id="logo" onchange="previewLogo()">
                        @error('logo')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                        <!-- Aperçu de l'image téléchargée -->
                        <div id="logo-preview-container" style="margin-top: 15px; text-align: center;">
                            <img id="logo-preview" src="#" alt="Aperçu du logo" 
                                 style="display: none; width: 150px; height: 150px; object-fit: cover; border-radius: 10px; border: 2px solid #ddd; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); transition: transform 0.3s ease;">
                        </div>
                        
                    </div>

                    <div class="mb-3">
                        <input type="text" name="nom" class="form-control" placeholder="Nom" id="nom">
                        @error('nom')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <input type="text" name="phone" class="form-control" placeholder="Phone" id="phone">
                        @error('phone')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <input type="email" name="email" class="form-control" placeholder="Email" id="email">
                        @error('email')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <input type="password" name="password" class="form-control" placeholder="Password" id="email">
                        @error('password')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <input type="number" name="nombre_emp" class="form-control" placeholder="Nombre Employés" id="nombre_emp">
                        @error('nombre_emp')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>

                    <div class="mb-3">
                        <select name="monnaie" class="form-control" id="monnaie">
                            <option value="">Sélectionner la monnaie</option>
                            <option value="MAD">MAD</option>
                            <option value="USD">USD</option>
                            <option value="EUR">EUR</option>
                        </select>
                        @error('monnaie')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>
                    <div class="mb-3">
                        <input type="text" name="lien_magasin" class="form-control" placeholder="Lien Magasin" id="lien_magasin" readonly>
                        @error('lien_magasin')
                            <div class="text-danger mt-1">{{ $message }}</div>
                        @enderror
                    </div>

                    <button type="submit" class="btn btn-dark">Ajouter Entreprise</button>
                </form>
                <script>
                    // Fonction pour afficher l'aperçu de l'image
                    function previewLogo() {
                        const file = document.getElementById('logo').files[0];
                        const reader = new FileReader();

                        reader.onloadend = function () {
                            const previewImage = document.getElementById('logo-preview');
                            previewImage.src = reader.result;
                            previewImage.style.display = 'block';  // Afficher l'aperçu de l'image
                        }

                        if (file) {
                            reader.readAsDataURL(file); // Lire l'image
                        } else {
                            document.getElementById('logo-preview').style.display = 'none';  // Cacher l'aperçu si aucun fichier n'est sélectionné
                        }
                    }

                    document.getElementById('nom').addEventListener('input', function() {
                        var nom = document.getElementById('nom').value;
                        document.getElementById('lien_magasin').value = `http://localhost:8000/${nom}`;
                    });
                </script>
            </div>
        </div>
    </div>
@endsection
