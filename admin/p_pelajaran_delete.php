<?php
require '../functions.php';
$id =$_GET["id"];
$query = "DELETE FROM pelajaran WHERE id_pelajaran ='$id'";
mysqli_query($conn, $query);
header("location:p_pelajaran_db.php");
?>