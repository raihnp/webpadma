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
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, pelajaran, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$k = $_GET["k"];
$pelajaran = $rowx["pelajaran"];
$foto = $rowx["foto"];

$que = mysqli_query($conn, "SELECT * FROM siswa WHERE  kls like '%$k%' ORDER BY nis ASC");
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
    <title>BK</title>
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
             <?= $jabatan; ?><br><?= $pelajaran; ?>
            </div>
              <ul>
               <li><a href="bk.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10">
    <!-- ------------ -->
    <div class="form mt-4">
    <div class="container">
            <h3>Absensi siswa <?=$k; ?></h3>
            <table class="table table-striped table-bordered table-list">
              <tr>
                <th>No</th>
                <th>Nis</th>
                <th>Nama</th>
                <th>J_Hari</th>
                <th>Hadir</th>
                <th>Sakit</th>
                <th>Ijin</th>
                <th>XXX</th>
              </tr>
              <?php $z=1;?>
              <?php while($q=mysqli_fetch_assoc($que)):?>
              <tr>
                <td><?= $z;?></td>
                <td><?= $q["nis"];?></td>
                <td><a href="update.php?id=<?=$q["id_siswa"];?>"><?= $q["siswa"];?></td></a>
                <td><?php $j = $q["j_hari"]; echo "$j";?></td>
                <?php if($j=='0'){;?>
                  <td>0|0%</td>
                  <td>0|0%</td>
                  <td>0|0%</td>
                  <td>0|0%</td>
                <?php }else{ ;?>
                <td><?php $h = $q["hadir"]; echo "$h";?> | <?php $hh=number_format(($h/$j)*'100','1'); echo "$hh"."%"; ?></td>
                <td><?php $s = $q["sakit"]; echo "$s";?> | <?php $ss=number_format(($s/$j)*'100','1'); echo "$ss"."%"; ?></td>
                <td><?php $i = $q["ijin"]; echo "$i";?> | <?php $ii=number_format(($i/$j)*'100','1'); echo "$ii"."%"; ?></td>
                <td><?php $xx = $q["xxx"]; echo "$xx";?> | <?php $x=number_format(($xx/$j)*'100','1'); echo "$x"."%"; ?></td>
                <?php } ;?>
              </tr>
              <?php $z++;?>
            <?php endwhile; ?>
            </table>
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
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>