<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=6){
  header("Location: ../login.php");
  exit;
}
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$pelajaran = $rowx["pelajaran"];
$foto = $rowx["foto"];
$kal = $rowx["kal"];
$info = $rowx["info"];
$masuk = $rowx["masuk"];

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
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <link rel="stylesheet" href="../css/eventCalendar.css">
    <link rel="stylesheet" href="../css/Calendar_theme_responsive.css">
    <link rel="stylesheet" href="../css/cover.css">
    <title>BK</title>
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
    <div class="row mt-4 ">
    <div class="col-md-2">
      <div class="container">
      <div class="text-center mt-4">
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
             <?= $jabatan; ?>
            </div>
              <ul>
                <li><a href="bk.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
    <div class="col-md-10 mt-3">
    <!-- ------------ -->
    <div class="container"> 
        <p style="font-size: 20px;"><b>Kalender Padmanaba</b></p><br>
          <div id="eventCalendarHumanDate"></div>
        <p><a class="btn btn-<?=$kal;?> btn-sm" href="kalender_db.php" role="button">KalendeDb</a>  <a class="btn btn-<?=$info;?> btn-sm" href="doc_k_db.php" role="button">InfoDb</a>  <a class="btn btn-<?=$masuk;?> btn-sm" href="doc_m_db.php" role="button">SuratDb</a></p>
    <br>
   <?php $piket =  mysqli_query($conn, "SELECT * FROM piket Where hari = '$hari'");
   $pik = mysqli_fetch_assoc($piket); ?>
        <hr style="border-color: black">
        <p style="font-size: 20px; margin: 0px"><b> Guru Piket</b> hari ini</p> <?= $tanggal ?> <br><a href="jadwal_dba.php?id=<?=$pik["guru1"]; ?>"><?=$pik["guru1"]; ?></a> | <a href="jadwal_dba.php?id=<?=$pik["guru2"]; ?>"><?=$pik["guru2"]; ?></a> | <a href="jadwal_dba.php?id=<?=$pik["guru3"]; ?>"><?=$pik["guru3"]; ?></a> | <a href="jadwal_dba.php?id=<?=$pik["guru4"]; ?>"><?=$pik["guru4"]; ?></a> | <a href="jadwal_dba.php?id=<?=$pik["guru5"]; ?>"><?=$pik["guru5"]; ?></a> | <a href="jadwal_dba.php?id=<?=$pik["guru6"]; ?>"><?=$pik["guru6"]; ?></a>
        <hr style="border-color: black">
    </div>
   <!-- -------------- -->
 </div>
</div>
   <nav class="navbar fixed-bottom navbar-light">
      <span class="navbar-text mx-auto d-block">
        <a href="../raihan.php">[Opti<a style="color: red">on</a>]</a> | <a href="../build.php">Build <?php echo tglIndonesia(date('F Y')); ?></a>
      </span>
    </nav>
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
