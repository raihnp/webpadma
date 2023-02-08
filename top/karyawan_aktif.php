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
$sql = mysqli_query($conn, "SELECT id_karyawan, karyawan, code, status FROM karyawan WHERE id_karyawan = '$id'");
$row=mysqli_fetch_assoc($sql);

if(isset($_POST["simpan"])){
  $status = $_POST["status"];
  
  $query = "UPDATE karyawan SET status = '$status' WHERE id_karyawan = '$id'";
  mysqli_query($conn, $query);
  
  if (mysqli_affected_rows($conn) > 0) {echo "<script>alert('data berhasil dirubah');
      document.location.href = 'karyawan_db.php';</script>";}else{echo"<script>alert('Tidak ada perubahan data'); document.location.href = 'karyawan_db.php';</script>";}
}
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
    <title>Top</title>
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
           <div class="form">  
            <p style="font-size: 20px; margin: 0px"><b>Aktivasi login</b></p>
           <hr>
           <form action="" method="POST">
            <div class="row">
              <div class="col-md-8">
                <div class="form-group">
                   <label for="karyawan" class="control-label">Nama Lengkap</label>
                   <input type="text" name="karyawan" value="<?=$row["karyawan"]; ?>" class="form-control" id="karyawan" disabled >
                </div>
              </div>
            <div class="col-md-2">
              <div class="form-group">
                 <label for="code" class="control-label">Code</label>
                 <input type="text" name="code" value="<?=$row["code"]; ?>" class="form-control" id="code" disabled >
              </div>
            </div>
              <div class="col-md-2">
                <div class="form-group">
                   <label for="status" class="control-label">Status</label><br>
                   <input type="radio" name="status" value="Aktif" <?php if($row["status"]=='Aktif'){echo 'checked';}?>>Aktif
                   <input type="radio" name="status" value="Pasif" <?php if($row["status"]=='Pasif'){echo 'checked';}?>>Pasif
                </div>
              </div>
         </div> 
         <hr>
         <input type="submit" name="simpan" class="btn btn-outline-dark" value="Rubah" />
          <a href="karyawan_db.php" class="btn btn-outline-dark">Cancel</a>
      </form>
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