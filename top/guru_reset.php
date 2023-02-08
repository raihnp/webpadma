<?php
require '../functions.php';
$id =$_GET["id"];
$sql = mysqli_query($conn, "SELECT * FROM guru WHERE id_guru ='$id'");
$sql2 = mysqli_query($conn, "SELECT * FROM pass WHERE id_guru ='$id'");

if( mysqli_num_rows($sql2) === 1 ){
      $row = mysqli_fetch_assoc($sql);
      $user = $row["code"];  
      $password = $row["code"];
      $pass = password_hash("$password", PASSWORD_DEFAULT);
      $query = "UPDATE pass set  user = '$user', pass = '$pass' WHERE id_guru = '$id'";
      mysqli_query($conn, $query);
      header("location:guru_db.php");
  }else{
  	  $id_guru =  $id;
  	  $id_karyawan = '';
  	  $cod = 'g'.$id;
  	  $id_siswa = '';
  	  $id_alumni = '';
 	  $id_ortu = '';
  	  $level = '';
  	  $user = $cod;
  	  $pass = password_hash($cod, PASSWORD_DEFAULT);
  	  $query2 = "INSERT INTO pass VALUES ('', '$id_guru', '$id_karyawan', '$id_siswa', '$id_alumni', '$id_ortu', '$user', '$pass', '$level')";
  	  mysqli_query($conn, $query2);
      header("location:guru_db.php"); 
  }
?>

