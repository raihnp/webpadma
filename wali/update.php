<?php
require '../functions.php';

$id = $_GET["id"];
$sqlx = mysqli_query($conn, "SELECT * FROM siswa  WHERE id_siswa = '$id'");
$rowx = mysqli_fetch_assoc($sqlx);
$kls = $rowx["kls"];
$kl = explode("/", $kls);
$k = $kl[0];
$nis = $rowx["nis"];
$sqly = mysqli_query($conn, "SELECT * FROM record WHERE kls = '$k' ORDER BY tanggal asc"); 
  if(empty($sqly)){}else
   {while($sq = mysqli_fetch_assoc($sqly)):
        $rec=$sq["rec"];
        $unrec = unserialize($rec);
        $data[] = $unrec[$nis];
        $data2 = array_count_values($data);
        arsort($data2);
      endwhile; 
        $j_hari = count($data);
         if(in_array("Hadir", $data)){$hadir = $data2['Hadir'];}else{$hadir = '0';}
         if(in_array("Ijin", $data)){$ijin = $data2['Ijin'];}else{$ijin = '0';}
         if(in_array("Sakit", $data)){$sakit = $data2['Sakit'];}else{$sakit = '0';}
         if(in_array("XXX", $data)){$xxx = $data2['XXX'];}else{$xxx = '0';}
         $query = "UPDATE siswa SET j_hari = '$j_hari', hadir = '$hadir', ijin = '$ijin', sakit = '$sakit', xxx = '$xxx' WHERE id_siswa = '$id'";
         mysqli_query($conn, $query);
         header("Location:absensi_dball.php");
       }