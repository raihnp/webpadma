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

$jdw = mysqli_query($conn, "SELECT * FROM jadwal WHERE guru1 LIKE '$guru' OR guru2 LIKE '$guru' OR guru3 LIKE '$guru' OR guru4 LIKE '$guru'GROUP BY kls");

if( isset($_POST["submit"])){
  $judul = $_POST["judul"];
  $nil = $_POST["nil"];

  $_SESSION["judul"]=$judul;
  $_SESSION["nil"]=$nil;
  header("Location:nilaiTambah.php");
}

if( isset($_POST["kirim"])){
  $deskripsi = $_POST["deskripsi"];
  $klass = $_POST["klass"];
  $cl=mysqli_query($conn,"SELECT * FROM nilai WHERE id_jadwal = '$klass' AND judul = '$deskripsi'");
  $c = mysqli_fetch_assoc($cl);
  $id_nilai = $c["id_nilai"];
  $_SESSION["id_nilai"]=$id_nilai;
  header("Location:nilaiSiswa.php");
}

if( isset($_POST["cetak"])){
  $deskripsi = $_POST["deskripsi"];
  $klass = $_POST["klass"];
  $cl=mysqli_query($conn,"SELECT * FROM nilai WHERE id_jadwal = '$klass' AND judul = '$deskripsi' AND guru = '$guru'");
  $c = mysqli_fetch_assoc($cl);
  $id_nilai = $c["id_nilai"];
  $_SESSION["id_nilai"]=$id_nilai;
  header("Location:nilaiCetak.php");
}

$query3 = "UPDATE guru SET nilai = 'outline-success' WHERE id_guru = '$id_guru'";
mysqli_query($conn, $query3);

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
             <?= $jabatan; ?><br><?= $pelajaran; ?>
            </div>
              <ul>
               <li><a href="guru.php">Home</a></li>
               <li><a href="kalender.php">Akademik</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
    <div class="form p-1">
    <div class="card p-1" style="width: 100%;">
        <div class="card-header" style="font-size: 14px;">
             <p style="font-size: 20px;"><b>Nilai Siswa <?= $pelajaran; ?></b></p>
        </div>
        <table class="table table-striped table-bordered table-list">
          <tr>
            <th>No</th>
            <th>NIS</th>
            <th>Nama</th>
            <th>nilai</th>
         </tr>
        </table> 
       <h3 style="text-align: center">Pilih Kelas dahulu ..</h3>
        <hr style="border-color: grey;">
       <form action="" method="POST">
        <div class="row">
      <div class="col-md-2">
        Baru
      </div>
      <div class="col-md-6">
        <div class="form-group">
           <label for="guru" class="control-label">Judul Ujian</label>
           <input type="text" name="judul" value="" class="form-control" id="guru" autocomplete="off" required>
        </div>
      </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="code" class="control-label">Kelas</label>
           <select name="nil" value="" class="form-control" required>
            <option value=""></option>
            <?php while($rt = mysqli_fetch_assoc($jdw)): ?>
             <option><?= $rt["kls"]; ?></option>
            <?php endwhile; ?>
           </select>
        </div>
      </div>  
    </div>
    <div class="row">
      <div class="col-md-2">
      </div>
      <div class="col-md-8">
        <input type="submit" name="submit" class="btn btn-outline-success" value="Pilih"/>
        <a href="kalender.php" class="btn btn-outline-dark">Cancel</a>
      </div>
    </div>
    </form>

<!-- +++++++++++++++++++++++ -->

     <hr style="border-color: grey;">


     <form action="" method="POST">
        <div class="row">
      <div class="col-md-2">
        Edit
      </div>
      <div class="col-md-2">

        <div class="form-group">
           <label for="code" class="control-label">Kelas</label>
           <select name="klass" id="kls" class="form-control" required>
           <option value=""></option>
            <?php $sql = mysqli_query($conn, "SELECT DISTINCT kls, id_jadwal FROM jadwal WHERE guru1 LIKE '$guru' OR guru2 LIKE '$guru' OR guru3 LIKE '$guru' OR guru4 LIKE '$guru' GROUP BY kls");
            While($row = mysqli_fetch_assoc($sql)): ?>
             <option value="<?=$row["id_jadwal"]; ?>">
                <?=$row["kls"]; ?>
             </option>
            <?php endwhile; ?>
           </select>
        </div>

      </div>  
      <div class="col-md-6">

        <div class="form-group">
          <label for="code" class="control-label">Judul</label>
          <?php 
          $sql = mysqli_query($conn, "SELECT * FROM nilai JOIN jadwal ON nilai.id_jadwal = jadwal.id_jadwal WHERE guru = '$guru'");
          ?>
          <select name="deskripsi" id="judul" class="form-control" required>
               <option value=""></option>
                  <?php While($row = mysqli_fetch_assoc($sql)): ?>
               <option  class="<?=$row["id_jadwal"]; ?>" value="<?=$row["judul"]; ?>">
                  <?=$row["judul"]; ?>
               </option>
                  <?php endwhile; ?>
          </select>

        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-2">
      </div>
      <div class="col-md-8">
        <input type="submit" name="kirim" class="btn btn-outline-success" value="Pilih"/>
        <a href="kalender.php" class="btn btn btn-outline-dark">Cancel</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="cetak" class=" hidden btn btn-outline-secondary" value="Cetak"/>
      </div>
    </div>
    </form>
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
    
    <script src="../js/jquery.chained.min.js"></script>
        <script>
            $("#judul").chained("#kls");
        </script>

  </body>
</html>