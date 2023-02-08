<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=7){
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

$halamanAktif = isset($_GET["halaman"])?($_GET["halaman"]) : $halaman=1;
$halaman = 5000;
$mulai = ($halamanAktif - 1) * $halaman;
$no = $mulai + 1;
if(isset($_POST["search"])) {
      $keyword =$_POST["keyword"];
      $sql = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kelas' AND tanggal LIKE '%$keyword%' OR guru LIKE '%$keyword%' OR pelajaran LIKE '%$keyword%' ORDER BY id_absen DESC");
      $sql2 = mysqli_num_rows($sql);
      $sq= mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kelas'");
      $sql3 = $sql2;
      $no = 1;
  }else{
      $sql = mysqli_query($conn, "SELECT * FROM absen  WHERE kelas = '$kelas' ORDER BY id_absen DESC LIMIT $mulai,$halaman"); 
      $sql2 = mysqli_num_rows($sql);
      $sq= mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kelas'");
      $sql3 = mysqli_num_rows($sq);   
    }
    $akhir = ceil($sql3/$halaman);
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
    <title>Wali kelas</title>
  </head>
  <body>
   <div class="container">
    <!-- Image and text -->
    <nav class="navbar fixed-top navbar-light">
      <a class="navbar-brand" href="#">
        <img src="../img/pad.gif" height="30" class="d-inline-block align-top" alt="">        Padmanaba
      </a>
    </nav>
    <div class="row mt-4">
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
               <li><a href="wali.php">Home</a></li>
               <li><a href="wali_kelas.php?id=<?=$kelas;?>">KelasDb</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
    <div class="form p-1">
    <div class="card p-1" style="width: 100%;">
      <div class="card-header">
      <span style="font-size: 20px">Absensi <?= $siswa; ?></span>
      <span class="float-right">
       <form action="" method="POST">
               <div class="input-group input-group-sm">
                  <input type="text" class="form-control" placeholder="Pencarian..." name="keyword" autocomplete="off">
                    <button class="btn btn-outline-primary btn-sm" type="submit" name="search">SEARCH</button>
                    <a href="?halaman=<?= $no=1; ?>&id=<?=$id;?>" class="btn btn-outline-warning btn-sm">RESET</a>
                </div>    
          </form>
          </span>    
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
            <?php while($ro = mysqli_fetch_assoc($sql)): ?>
            <tr>
              <td><?= $no++; ?></td>
              <td><?=$ro["tanggal"]; ?></td>
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
        <?php endwhile; ?>
        </table>
        <p style="margin: 0px"><i>Tampil <b><?= $sql2; ?></b> dari <b><?= $sql3; ?></b></i></p>
          <ul class="pagination">
          <?php if($halamanAktif>1): ?>
            <li><a href="?halaman=<?=$i=1; ?>&id=<?=$id;?>">First</a></li>&nbsp;
            <li><a href="?halaman=<?=$halamanAktif - 1; ?>&id=<?=$id;?>">&laquo;</a> </li>&nbsp;
          <?php endif; ?>     
          <?php $jumlah_number = 2;
          $start_number = ($halamanAktif > $jumlah_number)? $halamanAktif - $jumlah_number : 1;
          $end_number = ($halamanAktif < ($akhir - $jumlah_number))? $halamanAktif + $jumlah_number : $akhir; 
          ?>
            <?php $mulai = $halamanAktif-2; ?>
            <?php  for ($i=$start_number; $i <=$end_number  ; $i++) : ?>
            <?php if($i == $halamanAktif): ?>
            <li><a href="?halaman=<?= $i; ?>&id=<?=$id;?>"style="font-weight:bold; color: red" ><?= $i; ?></a></li>&nbsp;
            <?php else: ?>
            <li><a href="?halaman=<?= $i; ?>&id=<?=$id;?>"><?= $i; ?></a></li>&nbsp;
            <?php endif; ?>
            <?php endfor; ?>
          <?php if($halamanAktif<$akhir): ?>
            <li><a href="?halaman=<?=$halamanAktif + 1; ?>&id=<?=$id;?>">&raquo;</a></li>&nbsp;
            <li><a href="?halaman=<?=$i=$akhir; ?>&id=<?=$id;?>">Last</a></li>
          <?php endif; ?> 
      </ul>
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