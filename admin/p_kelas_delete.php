<?php
require '../functions.php';
$id =$_GET["id"];
$query = "DELETE FROM kelas WHERE id_kelas ='$id'";
mysqli_query($conn, $query);
header("location: p_kelas_db.php");
?>