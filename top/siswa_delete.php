<?php
session_start();
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT id_guru, guru FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$gurux = $rowx["guru"];

$id = $_GET["id"];
$query = "UPDATE siswa SET status = 'Inbox' WHERE id_siswa ='$id'";
mysqli_query($conn, $query);
$query = mysqli_query($conn, "SELECT * FROM siswa WHERE id_siswa = '$id'");
$row = mysqli_fetch_assoc($query);
  $siswa = $row["siswa"] ;
  $nis = $row["nis"];
  $jk = $row["jk"];
  $tempat = $row["tempat"];
  $tanggal = $row["tanggal"];
  $alamat = $row["alamat"];
  $agama = $row["agama"];
  $telpon = $row["telpon"];
  $email = $row["email"];
  $line = $row["line"];
  $kls = $row["kls"];
  $klsb = $row["klsb"];
  $klsc = $row["klsc"];
  $klsd = $row["klsd"];
  $klsx = $row["klsx"];
  $status =$row["status"];
  $foto = $row["foto"];
$tgl = tglIndonesia(date('d-m-Y'));
$oleh = $gurux;

$query1 = "INSERT INTO siswa_i VALUES ('', '$siswa', '$nis', '$jk', '$tempat', '$tanggal', '$alamat', '$agama', '$telpon', '$email', '$line', '$kls', '$klsb', '$klsc', '$klsd', '$klsx', '$status',  '$foto', '$tgl', '$oleh')";
mysqli_query($conn, $query1); 

$query2 = "DELETE FROM pass WHERE id_siswa ='$id'";
mysqli_query($conn, $query2);

$query3 = "DELETE FROM siswa WHERE id_siswa ='$id'";
mysqli_query($conn, $query3);

header("location: siswa_db.php");
?>