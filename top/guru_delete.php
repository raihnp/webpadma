<?php
session_start();
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' AND id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$gurux = $rowx["guru"];

$id = $_GET["id"];
$query = "UPDATE guru SET status = 'Inbox', switch = 'off' WHERE id_guru ='$id'";
mysqli_query($conn, $query);

$query2 = "DELETE FROM pass WHERE id_guru ='$id'";
mysqli_query($conn, $query2);

header("location: guru_db.php");
?>