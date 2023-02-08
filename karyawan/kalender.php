<?php
session_start();
if( !isset($_SESSION["login"])){
  if($_SESSION["level"]!='4'){
    if($_SESSION["level"]!='41'){
      if($_SESSION["level"]!='42'){
      header("Location: ../login.php");
    }}}}
$id_karyawan = $_SESSION["id_karyawan"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM karyawan WHERE id_karyawan = '$id_karyawan'");
$rowx = mysqli_fetch_assoc($sqlx);
$karyawan = $rowx["karyawan"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];
$kal = $rowx["kal"];
$info = $rowx["info"];
$ijin = $rowx["ijin"];
$tanggal = tglIndonesia(date('D, d F, Y'));
$har = tglIndonesia(date('D'));
$hari = str_replace("'", "", $har);
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/eventCalendar.css">
    <link rel="stylesheet" href="../css/Calendar_theme_responsive.css">
    <link rel="stylesheet" href="../css/cover.css">
    <title>Karyawan</title>
  </head>
  <body>
   <div class="container-liquit">
    <!-- Image and text -->
    <nav class="navbar fixed-top navbar-light">
      <a class="navbar-brand" href="#">
        <img src="../img/pad.gif" height="30" class="d-inline-block align-top" alt="">
        Padmanaba
      </a>
    </nav>
    <div class="row mt-5 mb-5 ">
    <div class="col-md-2">
      <div class="container">
      <div align="center" style="margin-top: 30px;">
      <a href="../logout.php"><img src="../img/karyawan/<?= $foto; ?>" width="100" class="mx-auto d-block"></a>
      <SCRIPT language=JavaScript>var d = new Date();
                var h = d.getHours();
                if (h < 10) { document.write('Selamat pagi,'); }
                else { if (h < 15) { document.write('Selamat siang,'); }
                else { if (h < 19) { document.write('Selamat sore,'); }
                else { if (h <= 23) { document.write('Selamat malam,'); }
                }}}
      </SCRIPT>
        <p class="text-center"><b><?= $karyawan; ?></b></p>
    </div>
        <div class="menu-kiri">
          <div class="card mt-2" style="width: 100%;">
            <div class="card-header text-center">
             <?= $jabatan; ?>
            </div>
              <ul>
               <li><a href="karyawan.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
    <div class="col-md-10">
    <!-- ------------ -->
    <div class="container">      
        <p style="font-size: 20px; margin-top: 25px"><b>Kalender Padmanaba</b></p><br>
          <div id="eventCalendarHumanDate"></div>
        <p><a class="btn btn-<?=$kal;?> btn-sm" href="kalender_db.php" role="button">KalendeDb</a>  <a class="btn btn-<?=$info;?> btn-sm" href="doc_m_db.php" role="button">DocMasuk</a>  <a class="btn btn-<?=$info;?> btn-sm" href="doc_k_db.php" role="button">DocKeluar</a>    <a class="btn btn-<?=$ijin;?> btn-sm" href="ijin_db.php" role="button">IjinDb</a></p>     
         
          <?php $piket =  mysqli_query($conn, "SELECT * FROM piket Where hari = '$hari'");
          $pik = mysqli_fetch_assoc($piket); ?>
        <hr style="border-color: black">
        <p style="font-size: 20px; margin: 0px"><b> Guru Piket</b> hari ini</p> <?= $tanggal ?> <br><?=$pik["guru1"]; ?> | <?=$pik["guru2"]; ?> | <?=$pik["guru3"]; ?> | <?=$pik["guru4"]; ?> | <?=$pik["guru5"]; ?> | <?=$pik["guru6"]; ?>
        <hr style="border-color: black">
    </div>
  </div>
</div>
<!-- Modal -->
<div class="modal fade" id="ketsiswa" tabindex="-1" role="dialog" aria-labelledby="ketsiswaLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="ketsiswaLabel">Keterangan Siswa</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form action="ket_cetak.php" method="POST">
          <div class="form-group">
             <label for="nis" class="control-label">NIS</label>
             <input type="text" name="nis" value="" class="form-control" id="nis" autocomplete="off">
          </div>
           <div class="form-group">
            <label for="kep">Keperluan</label>
            <textarea class="form-control" name="kep" id="kep" rows="3">Adalah benar siswa aktif SMA Negeri 3 Yogyakarta Tahun Ajaran 2018/2019.   Surat keterangan ini diterbitkan untuk mengikuti lomba FLS.</textarea>
          </div>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
        <button type="submit" name="submit" class="btn btn-primary">Kirim</button>
      </div>
      </form>
    </div>
  </div>
</div>
   <!-- -------------- -->
   <nav class="navbar fixed-bottom navbar-light">
      <span class="navbar-text mx-auto d-block">
        <a href="../raihan.php">Raihan Putri Imanda</a> | <a href="../build.php">Build <?php echo tglIndonesia(date('F Y')); ?></a>
      </span>
    </nav>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../js/jquery.eventCalendar.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function() {
                $("#eventCalendarHumanDate").eventCalendar({
                    eventsjson: 'json.php',
                    showDescription: 'true',
                    jsonDateFormat: 'human'  // 'YYYY-MM-DD HH:MM:SS'
                });
            });
        </script>
  </body>
</html>
