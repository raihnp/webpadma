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
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];

$kls = $_GET["kls"];
$senin = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Senin' ORDER BY jam ASC");
$selasa = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Selasa'ORDER BY jam ASC");
$rabu = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Rabu'ORDER BY jam ASC");
$kamis = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Kamis'ORDER BY jam ASC");
$jumat = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Jumat'ORDER BY jam ASC");
$saptu = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kls' AND hari ='Saptu'ORDER BY jam ASC");

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
    <style>
     
    </style>
  </head>
  <body>
   <div class="container">
    <!-- Image and text -->
    <nav class="navbar fixed-top navbar-light">
      <a class="navbar-brand" href="#">
        <img src="../img/pad.gif" height="30" class="d-inline-block align-top" alt="">
        Padmanaba
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
                <li><a href="wali.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
    <div class="col-md-10 mt-3">
    <!-- ------------ -->
    <div class="card" style="width: 100%;">
        <div class="card-header">
          <h5>Jadwal pelajaran kelas <b><?= $kls;?></b></h5>
        </div>
    <div class="container">
    <div class="row">
      <div class="col-md">
        <div class="card mt-3" style="width: 100%;">
        <div class="card-header text-center">
          SENIN
        </div>
          <table class="table">
            <tr>
              <th><i>T</i></th>
              <th>Pelajaran</th>
            </tr>
            <?php $s=1;?>
            <?php while($sen=mysqli_fetch_assoc($senin)): ?>
            <tr>
              <td><?=$s; ?></td>
              <td><?=$sen["pelajaran"]; ?><br><i><?=$sen["guru1"]; ?><br>
                        <?=$sen["guru2"]; ?><br><?=$sen["guru3"]; ?></i></td>
              <td><i class="material-icons"><?=$sen["gly"]; ?></i></td>
              </tr>
              <?php $s++;?>
              <?php endwhile; ?>
          </table>
        </div>
        </div>
        <div class="col-md">
        <div class="card mt-3" style="width: 100%;">
        <div class="card-header text-center">
          SELASA
        </div> 
          <table class="table">
            <tr>
              <th><i>T</i></th>
              <th>Pelajaran</th>
            </tr>
            <?php $s=1;?>
            <?php while($sel=mysqli_fetch_assoc($selasa)): ?>
            <tr>              
              <td><?=$s; ?></td>
              <td><?=$sel["pelajaran"]; ?><br><i><?=$sel["guru1"]; ?><br>
                        <?=$sel["guru2"]; ?><br><?=$sel["guru3"]; ?></i></td>
              <td><i class="material-icons"><?=$sel["gly"]; ?></i></td>
              </tr>
              <?php $s++;?>
              <?php endwhile; ?>
          </table>
        </div>
        </div>
        <div class="col-md">
        <div class="card mt-3" style="width: 100%;">
        <div class="card-header text-center">
          RABU
        </div> 
          <table class="table">
            <tr>
              <th><i>T</i></th>
              <th>Pelajaran</th>
            </tr>
            <?php $s=1;?>
            <?php while($rab=mysqli_fetch_assoc($rabu)): ?>
            <tr>
              <td><?=$s; ?></td>
              <td><?=$rab["pelajaran"]; ?><br><i><?=$rab["guru1"]; ?><br>
                        <?=$rab["guru2"]; ?><br><?=$rab["guru3"]; ?></i></td>
             <td><i class="material-icons"><?=$rab["gly"]; ?></i></td>
              </tr>
              <?php $s++;?>
              <?php endwhile; ?>
          </table>
        </div>
        </div>
      </div>
      <div class="row">
      <div class="col-md">
        <div class="card mt-3" style="width: 100%;">
        <div class="card-header text-center">
          KAMIS
        </div>
          <table class="table">
            <tr>
              <th><i>T</i></th>
              <th>Pelajaran</th>
            </tr>
            <?php $s=1;?>
            <?php while($kam=mysqli_fetch_assoc($kamis)): ?>
            <tr>
              <td><?=$s; ?></td>
              <td><?=$kam["pelajaran"]; ?><br><i><?=$kam["guru1"]; ?><br>
                        <?=$kam["guru2"]; ?><br><?=$kam["guru3"]; ?></i></td>
              <td><i class="material-icons"><?=$kam["gly"]; ?></i></td>
              </tr>
              <?php $s++;?>
              <?php endwhile; ?>
          </table>
        </div>
        </div>
        <div class="col-md">
        <div class="card mt-3" style="width: 100%;">
        <div class="card-header text-center">
          JUMAT
        </div> 
          <table class="table">
            <tr>
              <th><i>T</i></th>
              <th>Pelajaran</th>
            </tr>
            <?php $s=1;?>
            <?php while($jum=mysqli_fetch_assoc($jumat)): ?>
            <tr>
              <td><?=$s; ?></td>
              <td><?=$jum["pelajaran"]; ?><br><i><?=$jum["guru1"]; ?><br>
                        <?=$jum["guru2"]; ?><br><?=$jum["guru3"]; ?></i></td>
              <td><i class="material-icons"><?=$jum["gly"]; ?></i></td>
              </tr>
              <?php $s++;?>
              <?php endwhile; ?>
          </table>
        </div>
        </div>
        <div class="col-md">
        <div class="card mt-3" style="width: 100%;">
        <div class="card-header text-center">
          SAPTU
        </div> 
          <table class="table">
            <tr>
              <th><i>T</i></th>
              <th>Pelajaran</th>
            </tr>
            <?php $s=1;?>
            <?php while($sap=mysqli_fetch_assoc($saptu)): ?>
            <tr>
              <td><?=$s; ?></td>
              <td><?=$sap["pelajaran"]; ?><br><i><?=$sap["guru1"]; ?><br>
                        <?=$sap["guru2"]; ?><br><?=$sap["guru3"]; ?></i></td>
             <td><i class="material-icons"><?=$sap["gly"]; ?></i></td>
              </tr>
              <?php $s++;?>
              <?php endwhile; ?>
          </table>
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