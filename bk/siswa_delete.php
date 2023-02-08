<?php
require '../functions.php';
$id = $_GET["id"];
$query = "UPDATE siswa SET switch = 'off', status = 'Pasif' WHERE id_siswa ='$id'";
mysqli_query($conn, $query);
header("location: siswa_db.php");
?>