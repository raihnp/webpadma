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
$pelajaran = $rowx["pelajaran"];
$foto = $rowx["foto"];

$id_siswa = $_GET["id"];
$n = $_GET["n"];
$k = $_GET["k"];
$sqly = mysqli_query($conn, "SELECT * FROM siswa WHERE id_siswa = '$id_siswa'");
$rowy = mysqli_fetch_assoc($sqly);
$siswa = $rowy["siswa"];
$kls = $rowy["kls"];
$kl = explode("/", $kls);
$k = $kl[0];
$nis = $rowy["nis"];

$sql = mysqli_query($conn, "SELECT * FROM nilai WHERE kls = '$k' GROUP BY pelajaran ");



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
            <div class="card-header text-center" style="font-size: 14px;">
             <?= $jabatan; ?>
            </div>
              <ul>
               <li><a href="bk.php">Home</a></li>
               <li><a href="siswa_db.php">SiswaDb</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10">
    <!-- ------------ -->
     <div class="form mt-3 p-1">
    <div class="card p-1" style="width: 100%;">
    <div class="text-center card-header mb-2">
     <span style="font-size: 20px">Nilai Ujian<br><?=$n;?> [<i><?=$k;?></i>]</span>
   </div>
<?php while($row = mysqli_fetch_assoc($sql)): ?>
  <?php $pelajaran = $row["pelajaran"]; ?>
          <div class="row">
            <div class="col-md-6 offset-md-3">
              <div class='panel panel-default'>
                  <div class="panel-heading">
                    <?php $s=1; ?>
                    <p style="text-align: center; margin: 0px"><b><?=$pelajaran; ?>
                    </b></p>
                  </div>
                    <div class="panel-body"> 
                      <div class="menu-kiri">
                       <table class="table table-striped table-bordered table-list">
                        <thead>
                          <tr>
                            <th>No</th>
                            <th>Ujian</th>
                            <th>Nilai</th>
                         </tr>
                        </thead>
                        <?php $sq = mysqli_query($conn, "SELECT * FROM nilai WHERE kls = '$k' AND pelajaran = '$pelajaran'"); ?>
                        <?php $s=1; ?>
                        <?php while($ros = mysqli_fetch_assoc($sq)){ ?>
                          <tr>
                            <td><?= $s; ?></td>
                            <td><?=$ros["judul"]; ?></td>
                            <td> <?php $nilai = unserialize($ros["nilai"]);
                                  echo $nilai[$nis];
                                ?>
                              </td>
                          </tr>
                          <?php $s++; ?>
                          <?php }; ?>
                      </table>   
                      </div>
                    </div>
              </div>
            </div>
          </div>
<?php $s++; ?>
<?php endwhile; ?>
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