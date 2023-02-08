<?php
require '../functions.php';
$id =$_GET["id"];
$query = "DELETE FROM kalender WHERE id_kalender ='$id'";
mysqli_query($conn, $query);
header("location: ujian_db.php");
?>