<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=1){
  header("Location: ../login.php");
  exit;
}
$id_ortu = $_SESSION["id_ortu"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM ortu WHERE id_ortu = '$id_ortu'");
$rowx = mysqli_fetch_assoc($sqlx);
$ortu = $rowx["ortu"];
$nis = $rowx["nis"];
$sqlz = mysqli_query($conn,"SELECT * FROM siswa WHERE nis = '$nis'");
$sqz = mysqli_fetch_assoc($sqlz);
$kls = $sqz["kls"];
$kl = explode("/", $kls);
$k = $kl[0];
$siswa=$sqz["siswa"];
$foto = $rowx["foto"];

$sql = mysqli_query($conn, "SELECT * FROM pass WHERE id_ortu = '$id_ortu'");
$sq = mysqli_fetch_assoc($sql);
if(isset($_POST["submit"])){
  $level = $sq["level"];
  $nama = ($_POST["nama"]) ;
   $use = mysqli_query($conn, "SELECT * FROM pass WHERE user = '$nama'");
     if (mysqli_fetch_assoc($use)){
     echo"<script>alert ('nama user sudah terdaftar !');document.location.href = 'ortu_pass.php?id=$id';</script>"; 
     exit;}else {$user = $nama;}
  $password = ($_POST["password"]);
  $password2 = ($_POST["password2"]);
    if( $password !== $password2){
    echo"<script>alert('konfirmasi password gagal');document.location.href = 'ortu_pass.php?id=$id';</script>";exit;}
  $pass = password_hash($password, PASSWORD_DEFAULT);
  $query = "UPDATE pass SET user = '$user', pass = '$pass' WHERE id_ortu = '$id_ortu'";
  mysqli_query($conn, $query);
  if (mysqli_affected_rows($conn) > 0) {
    echo"<script>alert('Data berhasil dirubah');document.location.href = 'ortu_db.php';</script>";
    }else{echo"<script>alert('Data gagal dirubah');document.location.href = 'ortu_db.php';
    </script>";}
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
    <title>Ortu</title>
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
      <a href="../logout.php"><img src="../img/ortu/<?= $foto; ?>" width="100" class="mx-auto d-block"></a>
      <SCRIPT language=JavaScript>var d = new Date();
                var h = d.getHours();
                if (h < 10) { document.write('Selamat pagi,'); }
                else { if (h < 15) { document.write('Selamat siang,'); }
                else { if (h < 19) { document.write('Selamat sore,'); }
                else { if (h <= 23) { document.write('Selamat malam,'); }
                }}}
      </SCRIPT>
        <p style="text-align: center; margin: 0px"><b><?= $ortu; ?></b></p>
    </div>
        <div class="menu-kiri">
          <div class="card mt-2" style="width: 100%;">
            <div class="card-header text-center">
             Orang Tua/ Wali
            </div>
              <ul>
               <li><a href="ortu.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
                 <div class="form">  
            <h3 style="margin: 0px">FORM Ganti User dan Password</h3>
         <hr>
    <form method="POST" action="">  
    <div class="row">
      <div class="col-md-4">
        <div class="form-group">
           <label for="user" class="control-label">User</label>
           <input type="text" name="nama"  class="form-control" id="user" value="<?=$sq['user'];?>" autocomplete="off" required>
        </div>
      </div> 
       <div class="col-md-3">
        <div class="form-group">
           <label for="pas" class="control-label">Password</label>
           <input type="text" name="password"  class="form-control" id="pas" placeholder="max 8" autocomplete="off">
        </div>
      </div>
      <div class="col-md-3">
        <div class="form-group">
           <label for="pas2" class="control-label">Konfirmasi Password</label>
           <input type="password" name="password2"  class="form-control" id="pas2"  autocomplete="off">
        </div>
      </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="level" class="control-label">Level</label>
           <input type="" name=""  class="form-control" id="level" placeholder="<?=$sq['level'];?>" disabled="">
        </div>
      </div>
      </div>
<hr> 
    <p style="margin-bottom: 50px;"><input type="submit" name="submit" class="btn btn-outline-dark" value="Ganti" disabled />
<a href="ortu.php" class="btn btn-outline-dark">Cancel</a></p>
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