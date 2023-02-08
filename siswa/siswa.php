<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=3){
  header("Location: ../login.php");
  exit;
}
$id_siswa = $_SESSION["id_siswa"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM siswa WHERE switch = 'on' AND id_siswa = '$id_siswa'");
$rowx = mysqli_fetch_assoc($sqlx);
$siswa = $rowx["siswa"];
$kls = $rowx["kls"];
$kl = explode("/", $kls);
$k = $kl[0];
$nis = $rowx["nis"];
$foto = $rowx["foto"];
$status = $rowx["status"];
if( $status !=='Aktif'){
  echo"
              <script>
              alert('OPSSS....Hubungi Wali kelas Anda');
              document.location.href = '../login.php';
              </script>
              ";
}

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
    <title>Siswa</title>
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
    <div class="col-md-2">
      <div class="container">
      <div align="center" style="margin-top: 30px;">
      <a href="../logout.php"><img src="../img/siswa/<?= $foto; ?>" width="100" class="mx-auto d-block"></a>
      <SCRIPT language=JavaScript>var d = new Date();
                var h = d.getHours();
                if (h < 10) { document.write('Selamat pagi,'); }
                else { if (h < 15) { document.write('Selamat siang,'); }
                else { if (h < 19) { document.write('Selamat sore,'); }
                else { if (h <= 23) { document.write('Selamat malam,'); }
                }}}
      </SCRIPT>
        <p style="text-align: center; margin: 0px"><b><?= $siswa; ?></b></p>
    </div>
        <div class="menu-kiri">
          <div class="card mt-2" style="width: 100%;">
            <div class="card-header text-center">
             <?= $k; ?>
            </div>
              <ul>
               <li><a href="kalender.php">Akademik</a></li>
               <li><a href="guru_db.php">GuruDb</a></li>
               <li><a href="karyawan_db.php">KaryawanDb</a></li>
               <li><a href="siswa_db.php">SiswaDb</a></li>
               <li><a href="ortu_db.php">OrtuDb</a></li>
               <li><a href="alumni_db.php">AlumniDb</a></li>
               <li><a href="jadwal_db.php">JadwalDb</a></li>
               <li><a href="siswa_pass.php?id=<?=$id_siswa;?>">Password</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
<div class="container-fluit">
          <div class="ani">
            <div class="a1"><span><b></b></span></div>
                <div class="a2"><span><b></b></span></div>
                <div class="a3"><span><b></b></span></div>
                <div class="a4"><span><b></b></span></div>
                <div class="a5"><span><b></b></span></div>
                <div class="a6"><span><b></b></span></div>
                <div class="a7"><span><b></b></span></div>
                <div class="a8"><span><b></b></span></div>
                <div class="a9"><span><b></b></span></div>
                <div class="a10"><span><b></b></span></div>
          </div>
          <div role="main" class="home">
             <div class="d-none d-sm-block">
               <div>
                  <h2 class="animated infinite pulse" style="margin-top: 75px"><b>Padmanaba</b></h2>
                  <p class="intro" style="font-size: 2rem">Yogyakarta</p>
               </div>
             </div>
             <div class=" d-sm-none d-md-block‘ d-md-none d-lg-block‘ ">
              <div>
                  <h4 class="animated infinite pulse" style="margin-top: 75px"><b>Padmanaba</b></h4>
                  <p class="intro" style="font-size: 1rem" >Yogyakarta</p>
               </div>
            </div>
          </div>
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