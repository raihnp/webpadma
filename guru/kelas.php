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

$id = '';
$query = mysqli_query($conn, "SELECT * FROM siswa WHERE kls LIKE  '%$id%' ORDER BY nis ASC");

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
    <div class="card" style="width: 100%;">
  <div class="card-header">
  <span style="font-size: 20px">Manajemen Siswa <?= $id; ?></span> <span class="hidden float-right"><a href=""><img src="../img/print.png"></a></span>
  </div>
 <table class="table table-hover">
    <tr>
      <th>No</th>
      <th>Foto</th>
      <th>Nama</th>
      <th>Kelas</th>
      <th class="hidden">Akademik</th>
      <th class="hidden">Status</th>
      <th class="hidden text-center"><img src="../img/setting.png"></th>
    </tr>
    <?php $s=1; ?>
    <?php while($row=mysqli_fetch_assoc($query)): ?>
      <?php $kkls = $row["kls"];
      $kk = explode("/", $kkls);
      $k = $kk[0];
      ?> 
    <tr>
      <th><?= $s;?></th>
      <td class="d-inline-block align-top" style="text-align: center;"><img src="../img/siswa/<?=$row["foto"];?>"width ="50px"><br><?=$row["nis"];?></td>
      <td><?=$row["siswa"];?></td>
      <td><?= $k;?></td>
      <td class="hidden"><a href="naik.php?id=<?=$row["id_siswa"];?>">Naik</a><br><a href="tinggal.php?id=<?=$row["id_siswa"];?>">Tinggal</a><br><a href="lulus.php?id=<?=$row["id_siswa"];?>">Lulus</a><br><a href="pindah.php?id=<?=$row["id_siswa"];?>">Pindah</a></td>
      <td class="hidden"><a href="siswa_pilihan.php?id=<?=$row["id_siswa"];?>">Pilihan</a><br><a href="">Konseling</a><br><a href="absen.php?id=<?=$row["id_siswa"];?>">Absensi</a></td>
      <td class="hidden text-center"><a href="siswa_edit.php?id=<?=$row["id_siswa"]; ?>">O</a> <br><a href="siswa_aktif.php?id=<?=$row["id_siswa"]; ?>"><?=$row["status"]; ?></a><br><a href="siswa_reset.php?id=<?=$row["id_siswa"]; ?>" onclick = "return confirm('yakin ?');">Reset</a><br></td>
    </tr>
    <?php $s++;?>
   <?php endwhile; ?>
</table>
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