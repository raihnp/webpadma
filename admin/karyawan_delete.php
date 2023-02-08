<?php
require '../functions.php';
$id = $_GET["id"];
$query = "UPDATE karyawan SET switch = 'off' , status = 'Pasif' WHERE id_karyawan ='$id'";
mysqli_query($conn, $query);
header("location: karyawan_db.php");
?>