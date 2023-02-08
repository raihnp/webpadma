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
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];

$id = $_GET["id"];
$jad = mysqli_query($conn, "SELECT * FROM jadwal WHERE id_jadwal = '$id'");
$ja = mysqli_fetch_assoc($jad);
$kelas = $ja["kls"];

if( isset($_POST["submit"])) {
  // $perio = $_POST["perio"];
  // $p = explode(" ", $perio);
  // $periode =$p[0];
  // $jam = $p[2]." ".$p[3]." ".$p[4];
    $ga1 = $_POST["gurua"];
      if(empty($ga1)){
        $guru1 = $ja["guru1"];
        $pelajaran=$ja["pelajaran"];
      }else{
        $ga2 = explode('-', $ga1);
        $guru1=$ga2[1];
        $pelajaran=$ga2[2];
      }
      
      $gb1 = $_POST["gurub"];
      if(empty($gb1)){
        $guru2 = $ja["guru2"];
      }else{
        $gb2 = explode('-', $gb1);
        $guru2=$gb2[1];
      }

      $gc1 = $_POST["guruc"];
      if(empty($gc1)){
        $guru3 = $ja["guru3"];
      }else{
        $gc2 = explode('-', $gc1);
        $guru3=$gc2[1];
      }

      $gd1 = $_POST["gurud"];
      if(empty($gd1)){
        $guru4 = $ja["guru4"];
      }else{
        $gd2 = explode('-', $gd1);
        $guru4=$gd2[1];
      }

  // $query = "UPDATE jadwal SET periode ='$periode', jam = '$jam' WHERE id_jadwal = '$id'";

  $query = "UPDATE jadwal SET pelajaran = '$pelajaran', guru1 = '$guru1', guru2 = '$guru2', guru3 = '$guru3', guru4 = '$guru4' WHERE id_jadwal = '$id'";
  mysqli_query($conn, $query);

  if (mysqli_affected_rows($conn) > 0) {
    echo "
    <script>
    // alert('data berhasil dirubah');
    document.location.href = 'p_jadwal_add.php?kelas=$kelas';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Tidak ada perubahan data');
    document.location.href = 'p_jadwal_add.php?kelas=$kelas';
    </script>
    ";
  }
}
$per = mysqli_query($conn, "SELECT * FROM periode");
$perr = mysqli_query($conn, "SELECT * FROM periode");
$ajar = mysqli_query($conn, "SELECT pelajaran FROM pelajaran ORDER BY pelajaran ASC");
$gur1 = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY kodeg ASC");
$gur2 = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY kodeg ASC");
$gur3 = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY kodeg ASC");
$gur4 = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY kodeg ASC");
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
                <li><a href="admin.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
<div class="form">  
          <h2>Edit Jadwal Pelajaran</h2>
<form action="" method="POST">
  <div class="row">
    <div class="col-md-2">
      <label>Kelas : <?= $ja["kls"]; ?></label>
      <div class="form-group">
             <input type="hidden" name="kls" value="<?= $ja["kls"]; ?>" class="form-control">
          </div>
    </div>
    <div class="col-md-3">
      <label>Hari :<?= $ja["hari"]; ?></label>
      <div class="form-group">
             <input type="hidden" name=" " value="<?= $ja["hari"]; ?>" class="form-control">
          </div>
    </div>
  </div>
<hr>
  <div class="row" style="font-size: 20px;">
    <div class="col-md-3">
      Periode
    </div>
    <div class="col-md-3">
      Pelajaran
    </div>
    <div class="col-md-3">
      Guru
    </div>
    <div class="col-md-3">
    </div>
  </div>
<hr>
<div class="row">
  <div class="col-md-3">
        <div class="form-group">
          <input type="text" name="" value="<?= $ja["periode"]; ?>" disabled class="form-control" >
        </div>
    </div>

  <!-- <div class="col-md-3">
    <div class="form-group">
          <select name="perio" class="form-control" required>
            <option><?=$ja["periode"]; ?></option>
            <?php while($pe = mysqli_fetch_assoc($per)): ?>
            <option><?=$pe["periode"]; ?> | <?=$pe["jam"]; ?></option>
          <?php endwhile; ?>
          </select>
        </div>
    </div> -->
  <div class="col-md-3">
        <div class="form-group">
          <input type="text" name="" value="<?= $ja["pelajaran"]; ?>" disabled class="form-control" >
        </div>
    </div>
    <div class="col-md-3">
        <div class="form-group">
            <select name="gurua" class="form-control" id="pel">
              <option><?=$ja["guru1"]; ?></option>
              <?php while($gu1 = mysqli_fetch_assoc($gur1)): ?>
              <option><?=$gu1["kodeg"]; ?>-<?=$gu1["guru"]; ?>-<?=$gu1["pelajaran"]; ?></option>
              <?php endwhile; ?>
            </select>
        </div>
    </div>
    <div class="col-md-3">
        <div class="form-group">
           <select name="gurub" class="form-control" id="pel">
              <option><?=$ja["guru2"]; ?></option>
              <?php while($gu2 = mysqli_fetch_assoc($gur2)): ?>
              <option><?=$gu2["kodeg"]; ?>-<?=$gu2["guru"]; ?>-<?=$gu2["pelajaran"]; ?></option>
              <?php endwhile; ?>
            </select>
        </div>
    </div>
    </div>
    <div class="row">
      <div class="col-md-3">
        <div class="form-group">
            <input type="text" name="jam" value="<?= $ja["jam"]; ?>" disabled class="form-control" >
        </div>
      </div>
      <div class="col-md-3"></div>
      <div class="col-md-3">
            <div class="form-group">
               <select name="guruc" class="form-control" id="pel">
                <option><?=$ja["guru3"]; ?></option>
                <?php while($gu3 = mysqli_fetch_assoc($gur3)): ?>
                <option><?=$gu3["kodeg"]; ?>-<?=$gu3["guru"]; ?>-<?=$gu3["pelajaran"]; ?></option>
                <?php endwhile; ?>
              </select>
            </div>
      </div>
      <div class="col-md-3">
            <div class="form-group">
               <select name="gurud" class="form-control" id="pel">
                <option><?=$ja["guru4"]; ?></option>
                <?php while($gu4 = mysqli_fetch_assoc($gur4)): ?>
                <option><?=$gu4["kodeg"]; ?>-<?=$gu4["guru"]; ?>-<?=$gu4["pelajaran"]; ?></option>
                <?php endwhile; ?>
              </select>
            </div>
        </div>
    </div>
<hr>
    <input type="submit" name="submit" class="btn btn-outline-dark" value="Ubah"/>
    <a href="p_jadwal_add.php?kelas=<?= $ja["kls"]; ?>" class="btn btn-outline-dark">Cancel</a>
    </form>
<hr>
    <a href="bantuan.php" target="_blank">bantuan</a>
</div>
 <hr>
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

