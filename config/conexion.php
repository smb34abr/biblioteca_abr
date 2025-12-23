<?php
$hostname = "192.168.0.100";
$username = "abernal";
$password = "cThoa#nou4";
$dbname = "biblioteca";

$conexion = new mysqli($hostname, $username, $password, $dbname);

if (!$conexion) {
    echo "Falla la conexión";
}
?>
