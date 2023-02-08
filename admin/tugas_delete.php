<?php
require '../functions.php';
$id =$_GET["id"];
$query = "DELETE FROM tugas WHERE id_guru ='$id'";
mysqli_query($conn, $query);
header("location: tugas_db.php");
?>