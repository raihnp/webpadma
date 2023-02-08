<?php
require '../functions.php';
$id =$_GET["id"];
$query = "DELETE FROM exstra WHERE id_exstra ='$id'";
mysqli_query($conn, $query);
header("location: exstra_db.php");
?>