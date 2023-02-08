<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=8){
  header("Location: ../login.php");
  exit;
}
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];

$sql = mysqli_query($conn, "SELECT * FROM exstra");
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animasi.css">
    <link rel="stylesheet" href="../css/animate.css"> 
    <link rel="stylesheet" href="../css/cover.css"> 
    <link rel="stylesheet" href="../css/cover1.css">
    <title>Admin</title>
    <style>
      p {
        line-height: 0px;
        margin-bottom: 0px;
      }
      td {
        font-size: 16px;
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
      
       <p style="font-size: 20px; text-align: center;"><b>Exstra Kurikuler Terdaftar</b></p>
<br>
<br>
<table class="table">
          <tr>
            <th>No</th>
            <th>Exstra Kurikuler</th>
            <th>Hari</th>
            <th>Keterangan</th>
         </tr>
         <?php $s=1; ?>
         <?php while($sq = mysqli_fetch_assoc($sql)) : ?>
         <tr>
           <td><?= $s; ?></td>
           <td><?= $sq["exs"]; ?><br><i><?= $sq["pembimbing"]; ?></i></td>
           <td><?= $sq["hari"]; ?><br><i><?= $sq["jam"]; ?></i></td>
           <td><?= $sq["keterangan"]; ?><p class="mt-2"><i><?= $sq["tempat"]; ?></i></p></td>
         </tr>
         <?php $s++; ?>
         <?php endwhile; ?>
</table>
       
</div>

      <br>
   <!-- -------------- -->
   <nav class="navbar fixed-bottom navbar-light">
      <span class="navbar-text mx-auto d-block">
        <a href="../raihan.php">[Opti<a style="color: red">on</a>]</a> | <a href="../build.php">Build <?php echo tglIndonesia(date('F Y')); ?></a>
      </span>
    </nav>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>
