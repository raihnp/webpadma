<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=5){
  header("Location: ../login.php");
  exit;
}
$id_guru = $_SESSION["id_guru"];
$id_nilai = $_SESSION["id_nilai"];

require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$jabatan = $rowx["jabatan"];
$guru = $rowx["guru"];
$pelajaran = $rowx["pelajaran"];

$sql = mysqli_query($conn, "SELECT * FROM nilai WHERE id_nilai='$id_nilai'");
$sq = mysqli_fetch_assoc($sql);
$id_jadwal = $sq["id_jadwal"];
$kls = $sq["kls"];
$judul = $sq["judul"];
$niai = unserialize($sq["nilai"]);
$siwa = unserialize($sq["siswa"]);
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Guru Kelas</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="../css/cover.css" rel="stylesheet">
    <link href="../css/cover1.css" rel="stylesheet">
    <style>
     
      p {
        line-height: 0px;
        margin-bottom: 0px;
      }
      td {
        font-size: 12px;
      }

    </style>
  </head>
  <body>
    <div class="container">
      <table align="center">
        <th><img src="../img/logodiy.png" width="120px" align="right"></th>
        <th style="text-align: center;"><p style="letter-spacing: 2px; ">PEMERINTAH DAERAH ISTIMEWA YOGYAKARTA</p><br><p>DINAS PENDIDIKAN, PEMUDA DAN OLAHRAGA</p><br><p><b>SMA NEGERI 3 YOGYAKARTA</b></p><br><p style="font-size: 12px;">Jalan Laksda Yos Sudarso 7, Yogyakarta. 55224 Telepon (0274)512856, Fak (0274)556443</p><br><p style="font-size: 12px;">Email: smn3_yk@yahoo.com, Website: www.sman3-yog.sch.id</p></th>
      </table>
     <hr style="border-width: 2px; border-color: black">
<br>
      
       <p style="font-size: 20px; text-align: center;"><b>Nilai Siswa <?=$kls; ?></b></p>
       <br><br><p style="font-size: 18px;"><i><?=$pelajaran; ?> - <?=$judul; ?></i></p>
<br>
<br>

<table class="table table-striped table-bordered table-list">
          <tr>
            <th>No</th>
            <th>NIS</th>
            <th>Nama</th>
            <th>Nilai</th>
         </tr>
         <?php $s=1;?>
         <?php foreach ($siwa as $val =>$sis){ ?>
         <tr>
           <td><?= $s; ?></td>
           <td><?= $val; ?></td>
           <td><?= "$sis"; ?></td>
           <td><?= "$niai[$val]" ; ?></td>
         </tr>
         <?php $s++; ?>
         <?php } ?>
</table>
       
</div>

      <br>

<!-- ======================================================================== -->
       <nav class="navbar fixed-bottom navbar-light">
      <span class="navbar-text mx-auto d-block">
        <a href="../raihan.php">[Opti<a style="color: red">on</a>]</a> | <a href="../build.php">Build <?php echo tglIndonesia(date('F Y')); ?></a>
      </span>
    </nav>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>