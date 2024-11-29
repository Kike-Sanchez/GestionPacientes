<?php
$host = "localhost"; 
$user = "root"; 
$password = "";
$dbname = "gestion_pacientes"; 

// Crear conexión
$conn = new mysqli($host, $user, $password, $dbname);

// Comprobar la conexión
if ($conn->connect_error) {
    die("Conexión fallida: " . $conn->connect_error);
}
?>