<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=8){
  header("Location: ../login.php");
  exit;
}
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
if($id_guru == 'fe3+'){$guru = ' ';
$jabatan = 'TOP Admin';}else{
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];
$status = $rowx["status"];
if( $status !=='Aktif'){
  echo"<script>
       alert('OPSSS....Hubungi Pengembang Anda');
       document.location.href = '../login.php';
       </script>";
}}
$kelas = $_GET["kelas"];
$hari = $_GET["hari"];

$query1 = mysqli_query($conn, "SELECT * FROM jadwal WHERE kls = '$kelas' AND hari ='$hari'");

if( isset($_POST["submit"])) {
  $kls = $kelas;
  $hari = $hari;
  $perio = $_POST["perio"];
  $p = explode(" ", $perio);
  $periode =$p[0];
  $jam = $p[2]." ".$p[3]." ".$p[4];
  $pelajaran = ' ';
  $guru1 = ' ';
  $guru2 = ' ';
  $guru3 = ' ';
  $guru4 = ' ';
  $tanggal = ' ';
  $gly = ' ';
  $nis = ' ';
  $absensi = ' ';
  $keterangan = ' ';
  
  $query = "INSERT INTO jadwal VALUES ('', '$kls', '$hari', '$periode', '$jam', '$pelajaran', '$guru1', '$guru2', '$guru3', '$guru4', '$tanggal' ,'$gly', '$nis', '$absensi', '$keterangan')";
    mysqli_query($conn, $query);

  echo "<meta http-equiv='refresh' content='0'>";

}
$per = mysqli_query($conn, "SELECT * FROM periode");
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animasi.css">
    <link rel="stylesheet" href="../css/animate.css"> 
    <link rel="stylesheet" href="../css/cover.css">
    <title>Admin</title>
  </head>
  <body>
   <div class="container">
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
          <div class="card" style="width: 100%;">
            <div class="card-header text-center">
             <?= $jabatan; ?>
            </div>
              <ul>
                <li><a href="admin.php">Home</a></li>
                <li><a href="p_jadwal_db.php">JadwalDb</a></li>
              </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-10 mt-3">
   <!-- -------------- -->
   <div class="card" style="width: 100%;">
        <div class="card-header">
          <h5>Edit Jadwal pelajaran kelas <b><?= $kelas;?></b></h5>
          <span class="hidden float-right"><a href="p_jadall.php?kls=<?= $kelas;?>"  onclick = "return confirm('yakin ?');" class="btn btn-outline-info btn-sm">R</a></span>
        </div>
    <div class="container">
    <div class="row">
      <div class="col-md">
        <div class="card mt-3" style="width: 100%;">
        <div class="card-header text-center">
          <?=$hari;?>
        </div>
          <table class="table">
            <tr>
              <th><i>T</i></th>
              <th>Pelajaran</th>
              <th width="70px"></th>
            </tr>
            <?php $s=1;?>
            <?php while($que=mysqli_fetch_assoc($query1)): ?>
            <tr>
              <td><?=$s; ?></td>
              <td><?=$que["pelajaran"]; ?><br><i><?=$que["guru1"]; ?><br>
                        <?=$que["guru2"]; ?><br><?=$que["guru3"]; ?><br><?=$que["guru4"]; ?></i></td>
              <td><a href="p_jadwal_edit.php?id=<?=$que["id_jadwal"]; ?>">O</a> | <a href="p_jadwal_delete.php?id=<?=$que["id_jadwal"]; ?>&kelas=<?=$kelas;?>" onclick = "return confirm('yakin ?');">R</a></td>
              </tr>
              <?php $s++;?>
              <?php endwhile; ?>
          </table>
        </div>
        </div>
      </div>
    </div>
    </div>
    <br>
    <div class="form">

<p style="font-size: 18px; margin: 0px"><b>Tambah Jadwal Pelajaran</b></p>
<form action="" method="POST">
<div class="row">
  <div class="col-md-3">
    <label>Hari :</label>
    <div class="form-group">
      <input type="" name="" value="<?=$hari;?>" disabled>
    </div>
  </div>
  <div class="col-md-2">
    <label>Periode | Jam</label>
        <div class="form-group">
          <select name="perio" class="form-control" required>
            <option></option>
            <?php while($pe = mysqli_fetch_assoc($per)): ?>
            <option><?=$pe["periode"]; ?> | <?=$pe["jam"]; ?></option>
          <?php endwhile; ?>
          </select>
        </div>
    </div>
</div>
<hr>
<a href="?kelas=<?= $kelas; ?>"><input type="submit" name="submit" class="btn btn btn-outline-dark" value="Tambah"/></a>
<a href="p_jadwal_add.php?kelas=<?= $kelas; ?>" class="btn btn btn-outline-dark">Cancel</a>
</form>
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