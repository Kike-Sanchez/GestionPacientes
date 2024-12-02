<?php
include('conexion.php');
include('header.php');

// Procesar actualizaciones
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $paciente_id = $_POST['paciente_id'];
    $peso_actual = $_POST['peso_actual'];
    $regimen_id = $_POST['regimen_id'];
    $costo_regimen = $_POST['costo_regimen'];

    // Actualizar el peso actual del paciente
    $updatePeso = $conn->prepare("UPDATE pacientes SET peso_actual = ? WHERE paciente_id = ?");
    $updatePeso->bind_param("di", $peso_actual, $paciente_id);
    $updatePeso->execute();

    // Actualizar el costo del régimen del paciente
    $updateCosto = $conn->prepare("UPDATE regimenes SET costo_semanal = ? WHERE id = ?");
    $updateCosto->bind_param("di", $costo_regimen, $regimen_id);
    $updateCosto->execute();
}

// Consultar los datos de los pacientes y regímenes
$queryPacientes = "
    SELECT 
        p.paciente_id, p.nombre, p.peso_inicial, p.peso_actual, 
        r.id AS regimen_id, r.tipo AS regimen, r.costo_semanal 
    FROM pacientes p
    JOIN regimenes r ON p.regimen_id = r.id
";
$resultPacientes = $conn->query($queryPacientes);
$pacientesData = [];
while ($row = $resultPacientes->fetch_assoc()) {
    $pacientesData[] = $row;
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Pacientes y Regímenes</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center">Gestión de Pacientes y Regímenes</h1>

    <!-- Tabla para mostrar y editar pacientes -->
    <div class="mt-4">
        <h3>Lista de Pacientes</h3>
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Nombre</th>
                    <th>Peso Inicial (kg)</th>
                    <th>Peso Actual (kg)</th>
                    <th>Régimen</th>
                    <th>Costo del Régimen</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <?php foreach ($pacientesData as $paciente): ?>
                    <tr>
                        <form method="post">
                            <td><?= $paciente['nombre']; ?></td>
                            <td><?= $paciente['peso_inicial']; ?> kg</td>
                            <td>
                                <input type="number" step="0.1" name="peso_actual" value="<?= $paciente['peso_actual']; ?>" class="form-control" required>
                            </td>
                            <td><?= $paciente['regimen']; ?></td>
                            <td>
                                <input type="number" step="0.1" name="costo_regimen" value="<?= $paciente['costo_semanal']; ?>" class="form-control" required>
                            </td>
                            <td>
                                <input type="hidden" name="paciente_id" value="<?= $paciente['paciente_id']; ?>">
                                <input type="hidden" name="regimen_id" value="<?= $paciente['regimen_id']; ?>">
                                <button type="submit" class="btn btn-primary">Actualizar</button>
                            </td>
                        </form>
                    </tr>
                <?php endforeach; ?>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>