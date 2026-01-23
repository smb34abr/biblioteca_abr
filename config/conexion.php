<?php
$hostname = "localhost"; //"192.168.0.100";
$username = "root"; //"abernal";
$password = ""; //"cThoa#nou4";
$dbname = "biblioteca"; //"biblioteca";

$conexion = new mysqli($hostname, $username, $password, $dbname);

if (!$conexion) {
    echo "Falla la conexión";
}

