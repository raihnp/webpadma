<?php
require '../functions.php';
$nis = $_GET["nis"];
$nama = $_GET["nama"];
$sql = mysqli_query($conn, "SELECT * FROM ortu WHERE nis = '$nis'");
          if( mysqli_num_rows($sql) === 1 ){
			  header("Location: ortu_edit.php?nis=$nis&nama=$nama");
			}else{
			  header("Location: ortu_add.php?nis=$nis&nama=$nama");
			}