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

$sql = mysqli_query($conn, "SELECT kelas FROM kelas");

$senin = mysqli_query($conn, "SELECT * FROM piket WHERE  hari ='Senin'");
$selasa = mysqli_query($conn, "SELECT * FROM piket WHERE  hari ='Selasa'");
$rabu = mysqli_query($conn, "SELECT * FROM piket WHERE  hari ='Rabu'");
$kamis = mysqli_query($conn, "SELECT * FROM piket WHERE  hari ='Kamis'");
$jumat = mysqli_query($conn, "SELECT * FROM piket WHERE  hari ='Jumat'");
$saptu = mysqli_query($conn, "SELECT * FROM piket WHERE  hari ='Saptu'");
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
    <title>Top</title>
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
               <li><a href="top.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
    <div class="col-md-10 mt-3">
    <!-- ------------ -->
    <div class="container">
    <div class="form p-1">
      <div class="card p-1" style="width: 100%;">
        <div class="card-header">
      <span style="font-size: 20px">Jadwal Pelajaran</span>
      </div>
      <div class="row clear">
          <?php while($row=mysqli_fetch_assoc($sql)):?>
          <div class="kotak text-center"><a href="jadwal_kelas.php?kls=<?=$row["kelas"]; ?>"><b><?=$row["kelas"]; ?></b></a></div>
          <?php endwhile; ?>
    </div>
  </div>
</div>
</div>
      <div class="container">
      <div class="form p-1">
      <div class="card p-1" style="width: 100%;">
        <div class="card-header">
      <span style="font-size: 20px">Jadwal Guru Piket</span>
      </div>
      <div class="row">
        <div class="col-md-4">
           <div class='panel panel-default p-1 mt-1'>
            <div class="panel-heading">
              <p class="text-center m-0"><b>SENIN</b></p>
            </div>
              <table class="table">
                 <?php $sen= mysqli_fetch_assoc($senin); ?>
                 <tr>
                  <td><i><?=$sen["guru1"]; ?><br><?=$sen["guru2"]; ?><br><?=$sen["guru3"]; ?><br><?=$sen["guru4"]; ?></i></td>
                 </tr>
               </table>
          </div>
        </div>
        <div class="col-md-4">
           <div class='panel panel-default p-1 mt-1'>
            <div class="panel-heading">
              <p class="text-center m-0"><b>SELASA</b></p>
            </div>
              <table class="table">
                <?php $sel= mysqli_fetch_assoc($selasa); ?>
                <tr>
                  <td><i><?=$sel["guru1"]; ?><br><?=$sel["guru2"]; ?><br><?=$sel["guru3"]; ?><br><?=$sel["guru4"]; ?></i></td>
                </tr>
              </table>
            </div>
        </div>
        <div class="col-md-4">
           <div class='panel panel-default p-1 mt-1'>
            <div class="panel-heading">
              <p class="text-center m-0"><b>RABU</b></p>
            </div> 
              <table class="table">
                <?php $rab= mysqli_fetch_assoc($rabu); ?>
                <tr>
                 <td><i><?=$rab["guru1"]; ?><br><?=$rab["guru2"]; ?><br><?=$rab["guru3"]; ?><br><?=$rab["guru4"]; ?></i></td>
                </tr>
              </table>
           </div>
        </div>
      </div>
      <div class="row">
      <div class="col-md-4">
          <div class='panel panel-default p-1 mt-1'>
            <div class="panel-heading">
            <p class="text-center m-0"><b>KAMIS</b></p>
              </div> 
                  <table class="table">
                    <?php $kam= mysqli_fetch_assoc($kamis); ?>
                    <tr>
                      <td><i><?=$kam["guru1"]; ?><br><?=$kam["guru2"]; ?><br><?=$kam["guru3"]; ?><br><?=$kam["guru4"]; ?></i></td>
                    </tr>
                  </table>
          </div>
        </div>
          <div class="col-md-4">
           <div class='panel panel-default p-1 mt-1'>
            <div class="panel-heading">
              <p class="text-center m-0"><b>JUMAT</b></p>
              </div>
                  <table class="table">
                    <?php $jum= mysqli_fetch_assoc($jumat); ?>
                    <tr>
                      <td><i><?=$jum["guru1"]; ?><br><?=$jum["guru2"]; ?><br><?=$jum["guru3"]; ?><br><?=$jum["guru4"]; ?></i></td>
                    </tr>
                  </table>
            </div>
        </div>
        <div class="col-md-4">
           <div class='panel panel-default p-1 mt-1'>
            <div class="panel-heading">
              <p class="text-center m-0"><b>SAPTU</b></p>
              </div>
                  <table class="table">
                    <?php $sap= mysqli_fetch_assoc($saptu); ?>
                    <tr>
                      <td><i><?=$sap["guru1"]; ?><br><?=$sap["guru2"]; ?><br><?=$sap["guru3"]; ?><br><?=$sap["guru4"]; ?></i></td>
                    </tr>
                  </table>
            </div>
        </div>
      </div>
    </div>
  </div>
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