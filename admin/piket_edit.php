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
$sqlx = mysqli_query($conn, "SELECT * FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];

$id = $_GET["id"];
$sql = mysqli_query($conn, "SELECT * FROM piket WHERE id_piket = '$id'");
$sq = mysqli_fetch_assoc($sql);


$gur1 = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY kodeg ASC");
$gur2 = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY kodeg ASC");
$gur3 = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY kodeg ASC");
$gur4 = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY kodeg ASC");
$gur5 = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY kodeg ASC");

if( isset($_POST["submit"])) {
  $hari = $sq["hari"];
  $u1 = $_POST["guru1"];
  $ua = explode("-", $u1);
  $guru1 = $ua[1];
  $u2 = $_POST["guru2"];
  $ub = explode("-", $u2);
  $guru2 = $ub[1];
  $u3 = $_POST["guru3"];
  $uc = explode("-", $u3);
  $guru3 = $uc[1];
  $u4 = $_POST["guru4"];
  $ud = explode("-", $u4);
  $guru4 = $ud[1];
  $u5 = $_POST["guru5"];
  $ue = explode("-", $u5);
  $guru5 = $ue[1];
  
  $query = "UPDATE piket SET hari = '$hari',guru1 = '$guru1',guru2 = '$guru2',guru3 = '$guru3',guru4 = '$guru4', guru5 = '$guru5' WHERE id_piket = '$id'";
  
  mysqli_query($conn, $query);

  echo "<meta http-equiv='refresh' content='0'>";

  if (mysqli_affected_rows($conn) > 0) {
    echo "
    <script>
    alert('data berhasil dirubah');
    document.location.href = 'jadwal_db.php';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Tidak ada perubahan data');
    document.location.href = 'jadwal_db.php';
    </script>
    ";
  }
}
$ajar = mysqli_query($conn, "SELECT * FROM pelajaran");
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
    <title>Admin</title>
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
            <div class="card-header text-center">
             <?= $jabatan; ?>
            </div>
              <ul>
                <li><a href="admin.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
    <div class="col-md-10 mt-4">
    <!-- ------------ -->
<div class="form">  
<p style="font-size: 20px;"><b>Form Jadwal Edit Guru Piket</b></p>
<hr>
<form action="" method="POST">
    <div class="row">
      <div class="col-md-3">
        <label>Hari :</label>
        <div class="form-group">
               <input type="" name="" value="<?=$sq["hari"];?>" class="form-control" disabled>
        </div>
      </div>
      <div class="col-md-2"></div>
      <div class="col-md-3">
            <label>Guru Piket</label>
            <div class="form-group">
                <select name="guru1" class="form-control" id="pel">
                  <option><?=$sq["guru1"]; ?></option>
                  <?php while($gu1 = mysqli_fetch_assoc($gur1)): ?>
                  <option><?=$gu1["kodeg"]; ?>-<?=$gu1["guru"]; ?></option>
                  <?php endwhile; ?>
                </select>
            </div>
      </div>
      <div class="col-md-3">
            <label>.</label>
            <div class="form-group">
                <select name="guru2" class="form-control" id="pel">
                  <option><?=$sq["guru2"]; ?></option>
                  <?php while($gu2 = mysqli_fetch_assoc($gur2)): ?>
                  <option><?=$gu2["kodeg"]; ?>-<?=$gu2["guru"]; ?></option>
                  <?php endwhile; ?>
                </select>
            </div>
        </div>
        <div class="col-md-1"></div>
    </div>
    <div class="row">
      <div class="col-md-2">
            
        </div>
      <div class="col-md-3">
            
        </div>
      <div class="col-md-3">
            <div class="form-group">
                <select name="guru3" class="form-control" id="pel">
                  <option><?=$sq["guru3"]; ?></option>
                  <?php while($gu3 = mysqli_fetch_assoc($gur3)): ?>
                  <option><?=$gu3["kodeg"]; ?>-<?=$gu3["guru"]; ?></option>
                  <?php endwhile; ?>
                </select>
            </div>
        </div>
      <div class="col-md-3">
            <div class="form-group">
                <select name="guru4" class="form-control" id="pel">
                  <option><?=$sq["guru4"]; ?></option>
                  <?php while($gu4 = mysqli_fetch_assoc($gur4)): ?>
                  <option><?=$gu4["kodeg"]; ?>-<?=$gu4["guru"]; ?></option>
                  <?php endwhile; ?>
                </select>
            </div>
        </div>
        <div class="col-md-1">     
        </div>
    </div>
    <div class="row">
      <div class="col-md-2">
            
        </div>
      <div class="col-md-3">
            
        </div>
      <div class="col-md-3">
            <div class="form-group">
                <select name="guru5" class="form-control" id="pel">
                  <option><?=$sq["guru5"]; ?></option>
                  <?php while($gu5 = mysqli_fetch_assoc($gur5)): ?>
                  <option><?=$gu5["kodeg"]; ?>-<?=$gu5["guru"]; ?></option>
                  <?php endwhile; ?>
                </select>
            </div>
        </div>
        <div class="col-md-4">     
        </div>
    </div>
<hr>
<input type="submit" name="submit" class="btn btn-outline-dark btn-sm" value="Ubah"/>
<a href="jadwal_db.php" class="btn btn-outline-dark btn-sm">Cancel</a>
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