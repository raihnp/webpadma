<?php
require '../functions.php';
$nis = $_GET["nis"];
$ijin = $_GET["ijin"];
$id = $_GET["id"];
$sql = mysqli_query($conn, "SELECT * FROM siswa WHERE nis = '$nis'");
$row = mysqli_fetch_assoc($sql);
$nama = $row["siswa"];
$tempat = $row["tempat"];
$tanggal = $row["tanggal"];
$kls = $row["kls"];
$k = explode("/", $kls);
$kelas = $k[0];
$alamat = $row["alamat"];
$ortu = $row["ortu"];

$query = "UPDATE ijin SET done = ' ' WHERE id_ijin = '$id'";
mysqli_query($conn, $query);
?>
<!doctype html>
<html lang="en">
  <head>
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
    </style>
  </head>
  <body>
   <div class="container">
      <table align="center">
        <td><img src="../img/logodiy.png" width="120px" align="right"></td>
        <td style="text-align: center; line-height:16px; font-family: Times New Roman;"><p style="letter-spacing: 2px; font-size: 20px;">PEMERINTAH DAERAH ISTIMEWA YOGYAKARTA</p><br><p style="letter-spacing: 2px; font-size: 20px;">DINAS PENDIDIKAN, PEMUDA DAN OLAHRAGA</p><br><p><b style="letter-spacing: 5px; font-size: 22px;">SMA NEGERI 3 YOGYAKARTA</b></p><br><p style="font-size: 16px;">Jalan Laksda Yos Sudarso 7, Yogyakarta. 55224 Telepon (0274)512856, Fak (0274)556443</p><br><p style="font-size: 16px;"> Laman: www.sman3-yog.sch.id  Email: sman3_yk@yahoo.com  Kode Pos : 55224</p></td>
      </div>
      </table>
     <hr style="border-width: 2px; border-color: black">
<br>
       <div style="font-size: 20px; text-align: center;"><b><u>Surat Keterangan</u></b><br>No :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;.</div>
<br>
<div style="font-size: 18px; margin-left: 100px; margin-bottom: 10px;">Yang bertanda tangan dibawah ini :</div>
<table style="font-size: 18px; margin-left: 100px;">
  <tr>
    <td>Nama</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;Drs. Maman Surachman, M.Pd.I</td>
  </tr>
  <tr>
    <td>NIP</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;19600607 1981103 1 008</td>
  </tr>
  <tr>
    <td>Pangkat/ Gol&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;Pembina / IV a</td>
  </tr>
  <tr>
    <td>Jabatan</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;Kepala SMA 3 Yogyakarta</td>
  </tr>
</table>
<div style="font-size: 18px; margin-left: 100px; margin-top: 10px; margin-bottom: 10px;">Dengan ini menerangkan bahwa :</div>
<table style="font-size: 16px; margin-left: 100px; margin-bottom: 10px;">
  <tr>
    <td>Nama</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;<?=$nama;?></td>
  </tr>
  <tr>
    <td>Tempat/ Tgl Lahir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;<?=$tempat;?> <?=$tanggal;?></td>
  </tr>
  <tr>
    <td>Kelas&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;<?=$kelas;?></td>
  </tr>
  <tr>
    <td>No Induk</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;<?=$nis;?></td>
  </tr>
  <tr>
    <td>Orang Tua</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;<?=$ortu;?></td>
  </tr>
  <tr>
    <td>Alamat</td>
    <td> : </td>
    <td>&nbsp;&nbsp;&nbsp;<?=$alamat;?></td>
  </tr>
</table>
<div style="font-size: 18px; margin-left: 100px; margin-right: 100px; margin-bottom: 10px;">
<?=$ijin;?>
<!-- Adalah benar siswa aktif SMA Negeri 3 Yogyakarta Tahun Ajaran 2018/2019.   Surat keterangan ini diterbitkan untuk mengikuti lomba FLS. -->
</div>
<div style="font-size: 18px; margin-left: 100px; margin-right: 100px;">
Demikian surat keterangan ini diterbitkan, agar dapat dipergunakan sebagaimana mestinya.   Atas perhatian dan kerjasama yang baik disampikan terima kasih.
</div>
<br>
<br>
<div style="font-size: 18px; margin-left: 600px; margin-right: 100px;">
      Yogyakarta, <?php echo tglIndonesia(date('d-M-Y')); ?><br> 
      Kepala Sekolah<br>
<br>
<br>

      Drs. Maman Surachman, M.Pd.I<br>
      19600607 1981103 1 008
</div>
</div>
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
