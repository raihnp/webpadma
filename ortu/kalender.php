<?php
session_start();
$id_ortu = $_SESSION["id_ortu"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM ortu WHERE id_ortu = '$id_ortu'");
$rowx = mysqli_fetch_assoc($sqlx);
$nis = $rowx["nis"];
$sqly = mysqli_query($conn, "SELECT * FROM siswa WHERE nis = '$nis'");
$rowy = mysqli_fetch_assoc($sqly);
$kls = $rowy["kls"];
$kl = explode("/", $kls);
$k = $kl[0];

$day = tglIndonesia(date('D')); 
$hari = str_replace("'", "", $day);
$sql =  mysqli_query($conn, "SELECT * FROM jadwal Where kls = '$k' AND hari = '$hari'");
// $row = mysqli_fetch_assoc($sql);
// $gly=$row["gly"];

while($row = mysqli_fetch_assoc($sql)):
$gly[]=$row["gly"];
endwhile;
if (in_array("done",$gly)){
	header("location: kalender_b.php");
}else{
	header("location: kalender_a.php");
}
?>