<?php
session_start();
$id_siswa = $_SESSION["id_siswa"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT kls FROM siswa WHERE id_siswa = '$id_siswa'");
$rowx = mysqli_fetch_assoc($sqlx);
$kls = $rowx["kls"];
$kls = $rowx["kls"];
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