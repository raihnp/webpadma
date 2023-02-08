<?php
require '../functions.php';
$id =$_GET["id"];
$query = "DELETE FROM agama WHERE id_agama ='$id'";
mysqli_query($conn, $query);
header("location: p_agama_db.php");
?>