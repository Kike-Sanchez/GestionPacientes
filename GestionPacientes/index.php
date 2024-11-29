<?php
include('conexion.php');
include('header.php');

// Consultar datos para el gráfico de costos por régimen
$queryCostos = "
    SELECT r.tipo AS regimen, SUM(dr.costo_total) AS costo_total
    FROM detalle_regimen dr
    JOIN regimenes r ON dr.id_regimen = r.id
    GROUP BY r.tipo
";
$resultCostos = $conn->query($queryCostos);
$costosData = [];
while ($row = $resultCostos->fetch_assoc()) {
    $costosData[] = $row;
}

// Consultar datos de pacientes para la tabla
$queryPacientes = "
    SELECT p.nombre, p.peso_inicial, p.peso_actual, r.tipo AS regimen
    FROM pacientes p
    JOIN regimenes r ON p.regimen_id = r.id
";
$resultPacientes = $conn->query($queryPacientes);
$pacientesData = [];
while ($row = $resultPacientes->fetch_assoc()) {
    $pacientesData[] = $row;
}

// Consultar datos de progreso de pacientes (peso inicial vs peso actual)
$queryProgreso = "
    SELECT p.nombre, p.peso_inicial, p.peso_actual
    FROM pacientes p
";
$resultProgreso = $conn->query($queryProgreso);
$progresoData = [];
while ($row = $resultProgreso->fetch_assoc()) {
    $progresoData[] = $row;
}

// Consulta OLAP: Costos por Régimen y Paciente
$queryOLAP = "
    SELECT p.nombre, r.tipo AS regimen, SUM(dr.costo_total) AS costo_total
    FROM detalle_regimen dr
    JOIN pacientes p ON dr.paciente_id = p.paciente_id
    JOIN regimenes r ON dr.id_regimen = r.id
    GROUP BY p.paciente_id, r.id
";
$resultOLAP = $conn->query($queryOLAP);
$olapData = [];
while ($row = $resultOLAP->fetch_assoc()) {
    $olapData[] = $row;
}

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard Nutriología</title>
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/jquery/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/estilos.css">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center">Dashboard Nutriología</h1>

        <!-- Sección de Gráficas alineadas -->
        <div class="mt-5 row">
            <!-- Gráfico de Costos por Régimen -->
            <div class="col-md-6">
                <h3>Costos Totales por Régimen</h3>
                <canvas id="costosRegimen" class="chart-canvas"></canvas>
            </div>

            <!-- Gráfico de Progreso de Pacientes -->
            <div class="col-md-6">
                <h3>Progreso de Pacientes</h3>
                <canvas id="progresoPacientes" class="chart-canvas"></canvas>
            </div>
        </div>

        <!-- Tablas alineadas en una fila -->
        <div class="mt-5 table-row">
            <!-- Tabla de Progreso de Pacientes -->
            <div class="table-container">
                <h3>Progreso de Pacientes</h3>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Peso Inicial</th>
                            <th>Peso Actual</th>
                            <th>Régimen</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($pacientesData as $paciente): ?>
                            <tr>
                                <td><?= $paciente['nombre']; ?></td>
                                <td><?= $paciente['peso_inicial']; ?> kg</td>
                                <td><?= $paciente['peso_actual']; ?> kg</td>
                                <td><?= $paciente['regimen']; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>

            <!-- Tabla de Costos Totales por Paciente y Régimen -->
            <div class="table-container">
                <h3>Costos Totales por Paciente y Régimen</h3>
                <table class="table table-striped">
                    <thead>
                        <tr>
                            <th>Nombre</th>
                            <th>Régimen</th>
                            <th>Costo Total</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php foreach ($olapData as $data): ?>
                            <tr>
                                <td><?= $data['nombre']; ?></td>
                                <td><?= $data['regimen']; ?></td>
                                <td>$ <?= $data['costo_total']; ?></td>
                            </tr>
                        <?php endforeach; ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>

    <script>
        // Gráfico de Costos por Régimen
        const ctx = document.getElementById('costosRegimen').getContext('2d');
        const costosRegimenChart = new Chart(ctx, {
            type: 'bar',
            data: {
                labels: <?= json_encode(array_column($costosData, 'regimen')); ?>,
                datasets: [{
                    label: 'Costo Total',
                    data: <?= json_encode(array_column($costosData, 'costo_total')); ?>,
                    backgroundColor: 'rgba(75, 192, 192, 0.2)',
                    borderColor: 'rgba(75, 192, 192, 1)',
                    borderWidth: 1
                }]
            },
            options: {
                scales: {
                    y: {
                        beginAtZero: true
                    }
                }
            }
        });

        // Gráfico de Progreso de Pacientes (Peso Inicial vs Peso Actual)
        const ctxProgreso = document.getElementById('progresoPacientes').getContext('2d');
        const progresoPacientesChart = new Chart(ctxProgreso, {
            type: 'line',
            data: {
                labels: <?= json_encode(array_column($progresoData, 'nombre')); ?>,
                datasets: [{
                    label: 'Peso Inicial',
                    data: <?= json_encode(array_column($progresoData, 'peso_inicial')); ?>,
                    fill: false,
                    borderColor: 'rgba(75, 192, 192, 1)',
                    tension: 0.1
                }, {
                    label: 'Peso Actual',
                    data: <?= json_encode(array_column($progresoData, 'peso_actual')); ?>,
                    fill: false,
                    borderColor: 'rgba(153, 102, 255, 1)',
                    tension: 0.1
                }]
            }
        });
    </script>
</body>
</html>