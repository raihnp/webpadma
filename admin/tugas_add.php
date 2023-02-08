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
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, pelajaran, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$pelajaran = $rowx["pelajaran"];
$foto = $rowx["foto"];

$sql = mysqli_query($conn,"SELECT * FROM jadwal WHERE guru1 ='$guru' OR guru2 ='$guru' OR guru3 ='$guru' OR guru4 ='$guru' GROUP BY kls");


if(isset($_POST["submit"])){
  $kls = $_POST["kls"];
  $tanggal = $_POST["tanggal"];
  $judul = $_POST["judul"];
  $keterangan = $_POST["keterangan"];
     $query = "INSERT INTO tugas VALUES ('', '$guru', '$pelajaran', '$tanggal', '$kls', '$judul', '$keterangan')";
     mysqli_query($conn, $query);
        if (mysqli_affected_rows($conn) > 0) {
          echo "
          <script>
          alert('data berhasil ditambah');
          document.location.href = 'tugas_db.php';
          </script>
          ";
        } else {
          echo"
          <script>
          alert('Tidak ada perubahan data');
          document.location.href = 'tugas_db.php';
          </script>
          ";
        }
    $query = "UPDATE siswa SET tugas = 'success' WHERE kls = '$kls'";
    mysqli_query($conn, $query);

    $query1 = "UPDATE guru SET tugas = 'success' WHERE id_guru = '$id_guru'";
    mysqli_query($conn, $query1);
}

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
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <title>Admin</title>
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
               <li><a href="admin.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
<div class="form"> 
      <p style="font-size: 20px;"><b>Form Tugas</b></p>
    <form action="" method="POST">
      <div class="row">
         <div class="col-md-3">
        <div class="form-group">
        <label for="date">Untuk Tanggal</label>
        <input type="date" name="tanggal" class="form-control" id="date" placeholder="Date" required>
      </div>
    </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="kls" class="control-label">Kelas</label>
           <select name="kls" class="form-control" id="kls">
            <option></option>
           <?php while($sq= mysqli_fetch_assoc($sql)): ?>
           <option><?=$sq["kls"]; ?></option>
           <?php endwhile; ?>
          </select>
        </div>
      </div>
    </div>
<div class="row">
      <div class="col-md-5">
      <div class="form-group">
        <label for="judul">Judul</label>
        <input type="text" name="judul" class="form-control" id="judul" placeholder="Title" required>
      </div>
    </div>
  </div>
      <div class="form-group">
        <label for="ket" class="control-label">Keterangan</label>
      <textarea class="ckeditor" name="keterangan" id="ket" class="form-control" ></textarea>
    </div>
 <hr>     
      <input type="submit" name="submit" class="btn btn-outline-dark" value="Tambah"/>
      <a href="kalender.php" class="btn btn-outline-dark">Cancel</a>
    </form>
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