<?php
require '../functions.php';
$id =$_GET["id"];
$query = "DELETE FROM periode WHERE id_periode ='$id'";
mysqli_query($conn, $query);
header("location:p_periode_db.php");
?>