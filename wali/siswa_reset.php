<?php
require '../functions.php';
$id =$_GET["id"];
$k = $_GET["kls"];
$sql = mysqli_query($conn, "SELECT * FROM pass WHERE id_siswa ='$id'");
if( mysqli_num_rows($sql) === 1 ){
    $sql = mysqli_query($conn, "SELECT nis FROM siswa WHERE id_siswa = '$id'");
    $row = mysqli_fetch_assoc($sql);
      $user = $row["nis"];  
      $password = $row["nis"];
      $pass = password_hash("$password", PASSWORD_DEFAULT);
      $query = "UPDATE pass set  user = '$user', pass = '$pass' WHERE id_siswa = '$id'";
      mysqli_query($conn, $query);
      header("location:wali_kelas.php?id=$k");
  }
      $query1 = "UPDATE siswa set  line = 'ok' WHERE id_siswa = '$id'";
      mysqli_query($conn, $query1);
?>
