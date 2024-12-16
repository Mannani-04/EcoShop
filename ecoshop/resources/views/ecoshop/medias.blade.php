@extends('ecoshop.master')

@section('content')
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">

    <br>
    <div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3 py-5">
                <h3 class="text-center">Ajouter des liens vers les médias sociaux et les liens importants</h3>
                <p class="text-center">Les liens seront ajoutés à votre magasin en ligne</p>
                <br>
                <form id="ent" class="form bg-light border-dark p-5" action="{{ route('addma') }}" method="POST">
                    @csrf
                    <input type="hidden" name="entreprise_id" value="{{session('id') }}">

                    <!-- Facebook Checkbox -->
                    <div class="list-group-item">
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" id="facebookSwitch">
                            <label id="form-check-label" class="form-check-label" for="facebookSwitch">
                                <i class="bi bi-facebook"></i> Facebook
                            </label>
                        </div>
                        <input name="facebock" type="text" id="facebookLink" placeholder="Entrez votre lien Facebook" class="form-control mt-2" style="display: none;">
                    </div>
                    <br>
                    <!-- Instagram Checkbox -->
                    <div class="list-group-item">
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" id="instagramSwitch">
                            <label class="form-check-label" for="instagramSwitch">
                                <i class="bi bi-instagram"></i> Instagram
                            </label>
                        </div>
                        <input name="instagrame" type="text" id="instagramLink" placeholder="Entrez votre lien Instagram" class="form-control mt-2" style="display: none;">
                    </div>
                    <br>
                    <!-- WhatsApp Checkbox -->
                    <div class="list-group-item">
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" id="whatsappSwitch">
                            <label class="form-check-label" for="whatsappSwitch">
                                <i class="bi bi-whatsapp"></i> WhatsApp
                            </label>
                        </div>
                        <input name="whatsapp" type="text" id="whatsappLink" placeholder="Entrez votre lien WhatsApp" class="form-control mt-2" style="display: none;">
                    </div>
                    <br>
                    <!-- Telegram Checkbox -->
                    <div class="list-group-item">
                        <div class="form-check form-switch">
                            <input class="form-check-input" type="checkbox" id="telegrameSwitch">
                            <label class="form-check-label" for="telegrameSwitch">
                                <i class="bi bi-telegram"></i> Telegram
                            </label>
                        </div>
                        <input name="telegrame" type="text" id="telegrameLink" placeholder="Entrez votre lien Telegram" class="form-control mt-2" style="display: none;">
                    </div>
                    <br>
                    <button type="submit" class="btn btn-dark w-100 mt-3">Ajouter Medias Sociaux</button>
                </form>
            </div>
        </div>
    </div>

    <script>
        // Fonction pour gérer l'affichage des champs de saisie
        function toggleInput(switchElement, inputElementId) {
            const inputElement = document.getElementById(inputElementId);
            inputElement.style.display = switchElement.checked ? 'block' : 'none';
            if (!switchElement.checked) {
                inputElement.value = ''; // Réinitialiser le champ si décoché
            }
        }

        // Ajouter des écouteurs d'événements pour chaque interrupteur
        document.getElementById('facebookSwitch').addEventListener('change', function() {
            toggleInput(this, 'facebookLink');
        });

        document.getElementById('instagramSwitch').addEventListener('change', function() {
            toggleInput(this, 'instagramLink');
        });

        document.getElementById('whatsappSwitch').addEventListener('change', function() {
            toggleInput(this, 'whatsappLink');
        });

        document.getElementById('telegrameSwitch').addEventListener('change', function() {
            toggleInput(this, 'telegrameLink');
        });
    </script>
@endsection
