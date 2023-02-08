<?php
session_start();
if( !isset($_SESSION["login"])){
  if($_SESSION["level"]!='9'){
      header("Location: ../login.php");
    }}
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = 'TOP Admin';
$foto = $rowx["foto"];
$id = $_GET["id"];
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <link rel="stylesheet" href="../css/animasi.css">
    <link rel="stylesheet" href="../css/animate.css"> 
    <link rel="stylesheet" href="../css/cover.css"> 
    <link rel="stylesheet" href="../css/cover1.css">
    <title>Top</title>
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
            <div class="card-header text-center">
             <?= $jabatan; ?>
            </div>
              <ul>
               <li><a href="top.php">Home</a></li>
               <li><a href="guru_db.php">GuruDb</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
      <div class="card" style="width: 100%;">
              <div class="card-header pt-3 pb-0">
               <h5><b>Jadwal Ajar <?=$id;?></b></h5>
              </div>
  <div class="row m-2">
    <div class="col-md mt-2">
        <div class="card" style="width: 100%;">
              <div class="card-header pt-3 pb-0">
               <p  class="text-center"><b>SENIN</b></p>
              </div>
              <table class="table">
                  <tr>
                    <td><i><b>T</b></i></td>
                    <td><b>Jam</b></td>
                    <td><b>Kelas</b></td>     
                 </tr>
                    <?php $seni =  mysqli_query($conn, "SELECT * FROM jadwal Where hari = 'Senin' AND (guru1 LIKE '$id' OR guru2 LIKE '$id' OR guru3 LIKE '$id' OR guru4 LIKE '$id') ORDER BY jam ASC");
                        while($sen = mysqli_fetch_assoc($seni)): ?>
                  <tr>
                    <td><?= $sen["periode"]; ?></td>
                    <td><?=$sen["jam"]; ?>&nbsp;<i class="material-icons"><?=$sen["gly"]; ?></i></td>
                    <td><?=$sen["kls"]; ?></td>

                  </tr>
                <?php endwhile; ?>
              </table>
      </div>
    </div>

      <div class="col-md mt-2">
        <div class="card" style="width: 100%;">
              <div class="card-header pt-3 pb-0">
               <p  class="text-center"><b>SELASA</b></p>
              </div>
              <table class="table">
                   <tr>
                    <td><i><b>T</b></i></td>
                    <td><b>Jam</b></td>
                    <td><b>Kelas</b></td> 
                 </tr>
                    <?php $sela =  mysqli_query($conn, "SELECT * FROM jadwal Where hari = 'Selasa' AND (guru1 LIKE '$id' OR guru2 LIKE '$id' OR guru3 LIKE '$id' OR guru4 LIKE '$id') ORDER BY jam ASC");
                        while($sel = mysqli_fetch_assoc($sela)): ?>
                  <tr>
                    <td><?= $sel["periode"]; ?></td>
                    <td><?=$sel["jam"]; ?>&nbsp;<i class="material-icons"><?=$sel["gly"]; ?></i></td>
                    <td><?=$sel["kls"]; ?></td>
                  </tr>
                <?php endwhile; ?>
              </table>
      </div>
    </div>

 <div class="col-md mt-2">
        <div class="card" style="width: 100%;">
              <div class="card-header pt-3 pb-0">
               <p  class="text-center"><b>RABU</b></p>
              </div>
              <table class="table">
                   <tr>
                    <td><i><b>T</b></i></td>
                    <td><b>Jam</b></td>
                    <td><b>Kelas</b></td>      
                 </tr>
                    <?php $rab =  mysqli_query($conn, "SELECT * FROM jadwal Where hari = 'Rabu' AND (guru1 LIKE '$id' OR guru2 LIKE '$id' OR guru3 LIKE '$id' OR guru4 LIKE '$id') ORDER BY jam ASC");
                        while($ra = mysqli_fetch_assoc($rab)): ?>
                  <tr>
                    <td><?= $ra["periode"]; ?></td>
                    <td><?=$ra["jam"]; ?>&nbsp;<i class="material-icons"><?=$ra["gly"]; ?></i></td>
                    <td><?=$ra["kls"]; ?></td>
                  </tr>
                <?php endwhile; ?>
              </table>
        </div>
      </div>
    </div>

      <div class="row m-2">
    <div class="col-md mt-2">
        <div class="card" style="width: 100%;">
              <div class="card-header pt-3 pb-0">
               <p  class="text-center"><b>KAMIS</b></p>
              </div>
              <table class="table">
                  <tr>
                    <td><i><b>T</b></i></td>
                    <td><b>Jam</b></td>
                    <td><b>Kelas</b></td>     
                 </tr>
                    <?php $kami =  mysqli_query($conn, "SELECT * FROM jadwal Where hari = 'Kamis' AND (guru1 LIKE '$id' OR guru2 LIKE '$id' OR guru3 LIKE '$id' OR guru4 LIKE '$id') ORDER BY jam ASC");
                        while($kam = mysqli_fetch_assoc($kami)): ?>
                  <tr>
                    <td><?= $kam["periode"]; ?></td>
                    <td><?=$kam["jam"]; ?>&nbsp;<i class="material-icons"><?=$kam["gly"]; ?></i></td>
                    <td><?=$kam["kls"]; ?></td>
                  </tr>
                <?php endwhile; ?>
              </table>
      </div>
    </div>

      <div class="col-md mt-2">
        <div class="card" style="width: 100%;">
              <div class="card-header pt-3 pb-0">
               <p  class="text-center"><b>JUMAT</b></p>
              </div>
              <table class="table">
                   <tr>
                    <td><i><b>T</b></i></td>
                    <td><b>Jam</b></td>
                    <td><b>Kelas</b></td> 
                 </tr>
                    <?php $juma =  mysqli_query($conn, "SELECT * FROM jadwal Where hari = 'Jumat' AND (guru1 LIKE '$id' OR guru2 LIKE '$id' OR guru3 LIKE '$id' OR guru4 LIKE '$id') ORDER BY jam ASC");
                        while($jum = mysqli_fetch_assoc($juma)): ?>
                  <tr>
                    <td><?= $jum["periode"]; ?></td>
                    <td><?=$jum["jam"]; ?>&nbsp;<i class="material-icons"><?=$jum["gly"]; ?></i></td>
                    <td><?=$jum["kls"]; ?></td>
                  </tr>
                <?php endwhile; ?>
              </table>
      </div>
    </div>

 <div class="col-md mt-2">
        <div class="card" style="width: 100%;">
              <div class="card-header pt-3 pb-0">
               <p  class="text-center"><b>SAPTU</b></p>
              </div>
              <table class="table">
                   <tr>
                    <td><i><b>T</b></i></td>
                    <td><b>Jam</b></td>
                    <td><b>Kelas</b></td>      
                 </tr>
                    <?php $sapt =  mysqli_query($conn, "SELECT * FROM jadwal Where hari = 'Saptu' AND (guru1 LIKE '$id' OR guru2 LIKE '$id' OR guru3 LIKE '$id' OR guru4 LIKE '$id') ORDER BY jam ASC");
                        while($sap = mysqli_fetch_assoc($sapt)): ?>
                  <tr>
                    <td><?= $sap["periode"]; ?></td>
                    <td><?=$sap["jam"]; ?>&nbsp;<i class="material-icons"><?=$sap["gly"]; ?></i></td>
                    <td><?=$sap["kls"]; ?></td>
                  </tr>
                <?php endwhile; ?>
              </table>
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