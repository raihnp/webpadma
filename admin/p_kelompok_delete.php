<?php
require '../functions.php';
$id =$_GET["id"];
$query = "DELETE FROM kelompok WHERE id_kelompok ='$id'";
mysqli_query($conn, $query);
header("location: p_kelompok_db.php");
?>