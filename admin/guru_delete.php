<?php
require '../functions.php';
$id = $_GET["id"];
$query = "UPDATE guru SET switch = 'off' , status = 'Pasif' WHERE id_guru ='$id'";
mysqli_query($conn, $query);
$query = "DELETE FROM pass WHERE id_guru ='$id'";
header("location: guru_db.php");
?>