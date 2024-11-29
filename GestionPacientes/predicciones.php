<?php
include('conexion.php');
include('header.php');

// Obtenemos las predicciones desde la base de datos
$query = "
    SELECT p.nombre, pr.peso_predicho, pr.dias_futuros
    FROM predicciones pr
    JOIN pacientes p ON pr.paciente_id = p.paciente_id
";
$result = $conn->query($query);

?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Predicciones de Peso</title>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
    <link rel="stylesheet" href="assets/css/estilos.css">

</head>
<body>
    <div class="container mt-5">
        <h1>Predicciones de progreso de pacientes</h1>
        
        <table class="table table-striped">
            <thead>
                <tr>
                    <th>Nombre del Paciente</th>
                    <th>Peso Predicho (kg)</th>
                    <th>Días a Futuro</th>
                </tr>
            </thead>
            <tbody>
                <?php while ($row = $result->fetch_assoc()) { ?>
                    <tr>
                        <td><?php echo $row['nombre']; ?></td>
                        <td><?php echo round($row['peso_predicho'], 2); ?></td>
                        <td><?php echo $row['dias_futuros']; ?> días</td>
                    </tr>
                <?php } ?>
            </tbody>
        </table>
    </div>
</body>
</html>

<?php
$conn->close();
?>