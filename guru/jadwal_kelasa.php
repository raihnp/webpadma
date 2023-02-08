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


$kls = $_GET["kls"];
$hari = $_GET["hari"];
$senin = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Senin' ORDER BY id_jam ASC");
$selasa = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Selasa'ORDER BY id_jam ASC");
$rabu = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Rabu'ORDER BY id_jam ASC");
$kamis = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Kamis'ORDER BY id_jam ASC");
$jumat = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Jumat'ORDER BY id_jam ASC");
$saptu = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Saptu'ORDER BY id_jam ASC");

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
<div class="col-md-10">
    <!-- ------------ -->
    <p style="margin-top: 25px; font-size: 20px;">Jadwal Pelajaran kelas <?= $kls ?></p>
         <p style="text-align: right; padding-right: 10px;"><a href="jadwal_cetak.php?id=<?=$kls; ?>"> <span class="glyphicon glyphicon-print" aria-hidden="true"></span></a></p> 
    <div class="row">
      <div class="col-md-4">
           <div class='panel panel-default'>
            <div class="panel-heading">
              <p style="text-align: center; margin: 0px; color: blue;"><b>SENIN</b></p>
              </div>
                <div class="panel-body"> 
                  <table class="table">
                    <tr>
                      <th width="45px"><i>T</i></th>
                      <th>Pelajaran</th>
                      <th>Absen</th>
                    </tr>
                     <?php if($hari == 'Senin'){; ?>
                        <?php while($sen=mysqli_fetch_assoc($senin)): ?>
                          <tr>
                           <td><?=$sen["periode"]; ?></td>
                            <td><a href="absensi.php?id=<?=$sen["id_jadwal"]; ?>"><?=$sen["pelajaran"]; ?></a><br><i><?=$sen["guru1"]; ?><br><?=$sen["guru2"]; ?><br><?=$sen["guru3"]; ?></i></td>
                            <td><i class="material-icons"><?=$sen["gly"]; ?></i></td>
                          </tr>
                      <?php endwhile; ?>
                    <?php };?>
                  </table>
                </div>
          </div>
        </div>
         <div class="col-md-4">
           <div class='panel panel-default'>
              <div class="panel-heading">
               <p style="text-align: center; margin: 0px; color: blue;"><b>SELASA</b></p>
              </div>
                <div class="panel-body"> 
                  <table class="table">
                    <tr>
                      <th width="45px"><i>T</i></th>
                      <th>Pelajaran</th>
                      <th>Absen</th>
                    </tr>
                    <?php if($hari == 'Selasa'){; ?>
                        <?php while($sel=mysqli_fetch_assoc($selasa)): ?>
                          <tr>
                           <td><?=$sel["periode"]; ?></td>
                            <td><a href="absensi.php?id=<?=$sel["id_jadwal"]; ?>"><?=$sel["pelajaran"]; ?></a><br><i><?=$sel["guru1"]; ?><br>
                              <?=$sel["guru2"]; ?><br><?=$sel["guru3"]; ?></i></td>
                            <td><i class="material-icons"><?=$sel["gly"]; ?></i></td>
                          </tr>
                      <?php endwhile; ?>
                    <?php };?>
                  </table>
                </div>
          </div>
        </div>
         <div class="col-md-4">
           <div class='panel panel-default'>
              <div class="panel-heading">
                  <p style="text-align: center; margin: 0px; color: blue;"><b>RABU</b></p>
              </div>
                <div class="panel-body"> 
                  <table class="table">
                    <tr>
                      <th width="45px"><i>T</i></th>
                      <th>Pelajaran</th>
                      <th>Absen</th>
                    </tr>
                    <?php if($hari == 'Rabu'){; ?>
                      <?php while($rab=mysqli_fetch_assoc($rabu)): ?>
                        <tr>
                         <td><?=$rab["periode"]; ?></td>
                          <td><a href="absensi.php?id=<?=$rab["id_jadwal"]; ?>"><?=$rab["pelajaran"]; ?></a><br><i><?=$rab["guru1"]; ?><br>
                            <?=$rab["guru2"]; ?><br><?=$rab["guru3"]; ?></i></td>
                          <td><i class="material-icons"><?=$rab["gly"]; ?></i></td>
                        </tr>
                      <?php endwhile; ?>
                    <?php };?>
                  </table>
                </div>
          </div>
        </div>
      </div>
      <div class="row">
      <div class="col-md-4">
           <div class='panel panel-default'>
            <div class="panel-heading">
              <p style="text-align: center; margin: 0px; color: blue;"><b>KAMIS</b></p>
              </div>
                <div class="panel-body"> 
                  <table class="table">
                    <tr>
                      <th width="45px"><i>T</i></th>
                      <th>Pelajaran</th>
                      <th>Absen</th>
                    </tr>
                    <?php if($hari == 'Kamis'){; ?>
                      <?php while($kam=mysqli_fetch_assoc($kamis)): ?>
                        <tr>
                         <td><?=$kam["periode"]; ?></td>
                          <td><a href="absensi.php?id=<?=$kam["id_jadwal"]; ?>"><?=$kam["pelajaran"]; ?></a><br><i><?=$kam["guru1"]; ?><br>
                            <?=$kam["guru2"]; ?><br><?=$kam["guru3"]; ?></i></td>
                          <td><i class="material-icons"><?=$kam["gly"]; ?></i></td>
                        </tr>
                      <?php endwhile; ?>
                    <?php };?>
                  </table>
                </div>
          </div>
        </div>
         <div class="col-md-4">
           <div class='panel panel-default'>
              <div class="panel-heading">
               <p style="text-align: center; margin: 0px; color: blue;"><b>JUMAT</b></p>
              </div>
                <div class="panel-body"> 
                  <table class="table">
                    <tr>
                      <th width="45px"><i>T</i></th>
                      <th>Pelajaran</th>
                      <th>Absen</th>
                    </tr>
                    <?php if($hari == 'Jumat'){; ?>
                      <?php while($jum=mysqli_fetch_assoc($jumat)): ?>
                        <tr>
                         <td><?=$jum["periode"]; ?></td>
                          <td><a href="absensi.php?id=<?=$jum["id_jadwal"]; ?>"><?=$jum["pelajaran"]; ?></a><br><i><?=$jum["guru1"]; ?><br>
                            <?=$jum["guru2"]; ?><br><?=$jum["guru3"]; ?></i></td>
                          <td><i class="material-icons"><?=$jum["gly"]; ?></i></td>
                        </tr>
                      <?php endwhile; ?>
                    <?php };?>
                  </table>
                </div>
          </div>
        </div>
         <div class="col-md-4">
           <div class='panel panel-default'>
              <div class="panel-heading">
                  <p style="text-align: center; margin: 0px; color: blue;"><b>SAPTU</b></p>
              </div>
                <div class="panel-body"> 
                  <table class="table">
                    <tr>
                      <th width="45px"><i>T</i></th>
                      <th>Pelajaran</th>
                      <th>Absen</th>
                    </tr>
                    <?php if($hari == 'Saptu'){; ?>
                      <?php while($sap=mysqli_fetch_assoc($saptu)): ?>
                        <tr>
                         <td><?=$sap["periode"]; ?></td>
                          <td><a href="absensi.php?id=<?=$jum["id_jadwal"]; ?>"><?=$sap["pelajaran"]; ?></a><br><i><?=$sap["guru1"]; ?><br>
                            <?=$sap["guru2"]; ?><br><?=$sap["guru3"]; ?></i></td>
                          <td><i class="material-icons"><?=$sap["gly"]; ?></i></td>
                        </tr>
                      <?php endwhile; ?>
                    <?php };?>
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