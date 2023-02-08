<?php
require '../functions.php';
$kls = $_GET["kls"];
$query = "UPDATE jadwal SET guru1 = ' ',  guru2 = ' ', guru3 = ' ', guru4 = ' ', pelajaran = ' ' WHERE kls ='$kls'";
mysqli_query($conn, $query);
header("location: p_jadwal_add.php?kelas=$kls");
?>