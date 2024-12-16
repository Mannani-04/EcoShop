@extends('ecoshop.admin')
@section('admin')
<link rel="stylesheet" href="{{asset('css/bootstrap.min.css')}}">
    <div class="container">
        <h2>Graphique des Commandes par Jour</h2>
        <canvas id="ordersChart"></canvas>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script>
        const ctx = document.getElementById('ordersChart').getContext('2d');

        // Récupérer les données des commandes depuis la variable PHP
        const ordersData = @json($orders);
        const labels = ordersData.map(order => order.day); // Jour formaté
        const data = ordersData.map(order => order.total);

        const ordersChart = new Chart(ctx, {
            type: 'line', // Type de graphique
            data: {
                labels: labels,
                datasets: [{
                    label: 'Nombre de Commandes par Jour',
                    data: data,
                    borderColor: 'rgba(75, 192, 192, 1)',
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderWidth: 1
                }]
            },
            options: {
                responsive: true,
                scales: {
                    y: {
                        beginAtZero: true
                    },
                    x: {
                        title: {
                            display: true,
                            text: 'Jour'
                        }
                    }
                }
            }
        });
    </script>
@endsection
