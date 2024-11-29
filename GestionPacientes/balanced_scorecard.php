<?php
include('conexion.php'); 
include('header.php');

// KPI 1: Costo promedio por paciente y régimen
$queryCostoPromedio = "
    SELECT r.tipo AS regimen, AVG(dr.costo_total) AS costo_promedio
    FROM detalle_regimen dr
    JOIN regimenes r ON dr.id_regimen = r.id
    GROUP BY r.id
";
$resultCostoPromedio = $conn->query($queryCostoPromedio);
$costoPromedioData = [];
while ($row = $resultCostoPromedio->fetch_assoc()) {
    $costoPromedioData[] = $row;
}

// KPI 2: Porcentaje de pacientes que logran reducir peso
$queryProgresoPacientes = "
    SELECT COUNT(*) AS total_pacientes,
           SUM(CASE WHEN p.peso_actual < p.peso_inicial THEN 1 ELSE 0 END) AS pacientes_exitosos
    FROM pacientes p
";
$resultProgresoPacientes = $conn->query($queryProgresoPacientes);
$progresoRow = $resultProgresoPacientes->fetch_assoc();
$porcentajeExito = ($progresoRow['pacientes_exitosos'] / $progresoRow['total_pacientes']) * 100;

// KPI 4: Porcentaje de éxito de los regímenes
$queryExitoRegimenes = "
    SELECT r.tipo AS regimen, 
           SUM(CASE WHEN p.peso_actual < p.peso_inicial THEN 1 ELSE 0 END) AS exitosos,
           COUNT(p.paciente_id) AS total
    FROM detalle_regimen dr
    JOIN pacientes p ON dr.paciente_id = p.paciente_id
    JOIN regimenes r ON dr.id_regimen = r.id
    GROUP BY r.id
";
$resultExitoRegimenes = $conn->query($queryExitoRegimenes);
$exitoRegimenesData = [];
while ($row = $resultExitoRegimenes->fetch_assoc()) {
    $exitoRegimenesData[] = $row;
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Balanced Scorecard</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="assets/css/estilos.css">
</head>
<body>
    <div class="container mt-5">
        <h1>Balanced Scorecard</h1>
        
        <!-- KPI 1: Costo promedio -->
        <div class="card mt-3">
            <div class="card-body">
                <h5 class="card-title">Costo Promedio por Régimen</h5>
                <?php foreach ($costoPromedioData as $data): ?>
                    <p>$ <?= $data['regimen']; ?>: <?= round($data['costo_promedio'], 2); ?></p>
                <?php endforeach; ?>
            </div>
        </div>

        <!-- KPI 2: Porcentaje de pacientes exitosos -->
        <div class="card mt-3">
            <div class="card-body">
                <h5 class="card-title">Porcentaje de Pacientes Exitosos</h5>
                <p><?= round($porcentajeExito, 2); ?>%</p>
            </div>
        </div>

        <!-- KPI 3: Éxito por régimen -->
        <div class="card mt-3">
            <div class="card-body">
                <h5 class="card-title">Porcentaje de Éxito por Régimen</h5>
                <?php foreach ($exitoRegimenesData as $data): ?>
                    <p><?= $data['regimen']; ?>: <?= round(($data['exitosos'] / $data['total']) * 100, 2); ?>%</p>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
</body>
</html>

<?php
$conn->close();
?>
