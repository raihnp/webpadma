<?php
require '../functions.php';
$id =$_GET["id"];
$query = "DELETE FROM exstra WHERE id_exstra ='$id'";
mysqli_query($conn, $query);
header("location: p_exstra_db.php");
?>