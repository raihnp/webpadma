<?php
require '../functions.php';
$nis = $_GET["nis"];
$nama = $_GET["nama"];
$kls =$_GET["kls"];
$sql = mysqli_query($conn, "SELECT * FROM ortu WHERE nis = '$nis'");
          if( mysqli_num_rows($sql) === 1 ){
			  header("Location: ortu_edit.php?nis=$nis&nama=$nama&kls=$kls");
			}else{
			  header("Location: ortu_add.php?nis=$nis&nama=$nama&kls=$kls");
			}