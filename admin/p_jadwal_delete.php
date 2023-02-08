<?php
require '../functions.php';
$id =$_GET["id"];
$kelas = $_GET["kelas"];
$query = "UPDATE jadwal SET guru1 = ' ',  guru2 = ' ', guru3 = ' ', guru4 = ' ', pelajaran = ' ' WHERE id_jadwal ='$id'";
mysqli_query($conn, $query);
header("location: p_jadwal_add.php?kelas=$kelas");
?>