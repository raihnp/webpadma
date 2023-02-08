<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=7){
  header("Location: ../login.php");
  exit;
}
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$pelajaran = $rowx["pelajaran"];
$foto = $rowx["foto"];
$ke = explode(" ", $jabatan);
$kls = $ke[2].' '.$ke[3].' '.$ke[4];
$pelajaran = $rowx["pelajaran"];
      if(isset($_POST['submit']) AND !empty($_POST['exstra'])){
        $tglx = $_POST['exstra'];
        $g = explode("-", $tglx);
        $tgl = $g[2]."-".$g[1]."-".$g[0];
      }else{
        $tgl = date('d-m-Y');
      }
$ts = explode("-", $tgl);
$tg = $ts[2]."-".$ts[1]."-".$ts[0];
$sis = mysqli_query($conn, "SELECT * FROM siswa WHERE kls LIKE '%$kls%' ORDER BY nis asc");
$row = mysqli_fetch_assoc($sis);
$siswa = $row["siswa"];
if (empty($siswa)){
  header("Location: absensi1_db.php");}else{
  header("Location: absensi_db.php");}