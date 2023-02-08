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
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, pelajaran, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$pelajaran = $rowx["pelajaran"];
$foto = $rowx["foto"];

$jbt = explode(" ", $jabatan);
$kelas = $jbt[2]." ".$jbt[3]." ".$jbt[4];
$id = $_GET["id"];
$n=mysqli_query($conn,"SELECT * FROM siswa Where id_siswa = '$id'");
$ni = mysqli_fetch_assoc($n);
$nis = $ni["nis"];
$siswa = $ni["siswa"];
$sql = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kelas' ORDER BY tanggal DESC");
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
    <title>Guru Kelas</title>
  </head>
  <body>
   <div class="container">
    <!-- Image and text -->
    <nav class="navbar fixed-top navbar-light">
      <a class="navbar-brand" href="#">
        <img src="../img/pad.gif" height="30" class="d-inline-block align-top" alt="">        Padmanaba
      </a>
    </nav>
    <div class="row mt-5">
    <div class="col-md-2 mt-4">
      <div class="container">
      <div class="text-center">
      <a href="../logout.php"><img src="../img/guru/<?= $foto; ?>" width="100" class="mx-auto d-block"></a>
      <SCRIPT language=JavaScript>var d = new Date();
                var h = d.getHours();
                if (h < 10) { document.write('Selamat pagi,'); }
                else { if (h < 15) { document.write('Selamat siang,'); }
                else { if (h < 19) { document.write('Selamat sore,'); }
                else { if (h <= 23) { document.write('Selamat malam,'); }
                }}}
      </SCRIPT>
         <p class="text-center"><b><?= $guru; ?></b></p>
    </div>
        <div class="menu-kiri">
          <div class="card mt-2" style="width: 100%;">
            <div class="card-header text-center" style="font-size: 14px;">
             <?= $jabatan; ?><br><?= $pelajaran; ?>
            </div>
              <ul>
               <li><a href="guru.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-4">
    <!-- ------------ -->
    <div class="form p-1">
       <div class="card p-1" style="width: 100%;">
        <div class="card-header">
         <span style="font-size: 20px">Absensi <?= $siswa; ?></span>
       </div>
<table class="table table-hover">
            <tr>
              <th>No</th>
              <th>Tanggal</th>
              <th>T</th>
              <th>Pelajaran</th>
              <th>Guru</th>
              <th>Kehadiran</th>
              <th>Keterangan</th>
            </tr>
            <?php $i=1 ;?>
            <?php while($ro = mysqli_fetch_assoc($sql)): ?>
            <tr>
              <td><?= $i; ?></td>
              <td>
                <?php $tanggal = $ro["tanggal"]; 
                  $t = explode("-", $tanggal);
                  $tgl = $t[2]."-".$t[1]."-".$t[0];
                  echo "$tgl";
                ?>
                </td>
              <td><?=$ro["t"]; ?></td>
              <td><?=$ro["pelajaran"]; ?></td>
              <td><?=$ro["guru"]; ?></td>
              <td><?php
                     $ni = $ro["nis"];
                      $nisxy = explode(",",$ni);
                      $nisx =str_replace('Array', '', $nisxy);
                      array_pop($nisx);
                      // var_dump($nisx);
                      $absen = $ro["absensi"];
                      $abs = explode(",", $absen);
                      array_pop($abs);
                      // echo "<br>";
                      // var_dump($abs);
                      $data = array_combine($nisx, $abs);
                      echo $data[$nis];
                ?>
              </td>
            <td><?php 
                 $ni = $ro["nis"];
                $nisxy = explode(",",$ni);
                $nisx =str_replace('Array', '', $nisxy);
                array_pop($nisx);
                $keterangan = $ro["keterangan"];
                $ket = explode(",", $keterangan);
                array_pop($ket);
                $dat1 = array_combine($nisx, $ket);
                $data1 =str_replace("Array", " ", $dat1);
                echo $data1[$nis];
                ?>
              </td>
            </tr>
        <?php $i++;?>
        <?php endwhile; ?>
        </table>
        </div>
        </div> 

   <!-- -------------- -->
</div>
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