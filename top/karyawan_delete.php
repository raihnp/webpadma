<?php
session_start();
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT id_guru, guru FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$gurux = $rowx["guru"];

$id = $_GET["id"];
$query = "UPDATE karyawan SET status = 'Inbox', switch = 'off' WHERE id_karyawan ='$id'";
mysqli_query($conn, $query);

$query2 = "DELETE FROM pass WHERE id_karyawan ='$id'";
mysqli_query($conn, $query2);

header("location: karyawan_db.php");
?>