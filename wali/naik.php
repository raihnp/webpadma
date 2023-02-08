<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=7){
  header("Location: ../login.php");
  exit;
}
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$pelajaran = $rowx["pelajaran"];
$foto = $rowx["foto"];

$id = $_GET["id"];
$sql = mysqli_query($conn, "SELECT * FROM siswa WHERE id_siswa = '$id'");
$row = mysqli_fetch_assoc($sql);
$kkls = $row["kls"];
      $kk = explode("/", $kkls);
      $k = $kk[0];
  $kelas = $row["kls"];
  $kelasb = $row["klsb"];
  $kelasc = $row["klsc"];
  $kelasd = $row["klsd"];
  $kelasx = $row["klsx"];
$yaa= $k;
$ya = explode(" ", $yaa);
$y = $ya[0];

if($y == 'XII'){header("Location:lulus.php?id=$id");}

if($y =='X'){$na = 'XI';}
if($y == 'XI'){$na = 'XII';}
if(isset($_POST["simpan"])){
  $kelompok = $_POST["kelompok"];
  $t = $_POST["tgl"];
  $tg =explode("-", $t);
  $tgl = $tg[2]."-".$tg[1]."-".$tg[0];
 if ($na == 'XI'){
            $klsb = $kelas;
            $klsc = '';
            $klsd = '';
            $klsx = $kelasx;
            $kls =  $na.' '. $kelompok.'/'.$tgl;
          }
 if ($na == 'XII'){
            $klsb = $kelasb;
            $klsc = $kelas;
            $klsd = ' ';
            $klsx = $kelasx;
            $kls = $na.' '. $kelompok.'/'.$tgl;
          }
  $query = "UPDATE siswa SET kls = '$kls', klsb = '$klsb', klsc = '$klsc', klsd = '$klsd', klsx = '$klsx', klsn = 'done' WHERE id_siswa = '$id'";

                mysqli_query($conn, $query);
                if (mysqli_affected_rows($conn) > 0) {
                  echo "
                  <script>
                  alert('data berhasil dirubah');
                  document.location.href = 'wali_kelas.php?id=$k';
                  </script>
                  ";
                } else {
                  echo"
                  <script>
                  alert('Tidak ada perubahan data');
                  document.location.href = 'wali_kelas.php?id=$k';
                  </script>
                  ";
                }
}
$kel = mysqli_query($conn,"SELECT * FROM kelompok");
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
    <title>Wali kelas</title>
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
               <li><a href="wali.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
    <div class="form">
    <p style="font-size: 20px; margin: 0px"><b>Kenaikan Kelas</b></p>
           <hr>
           <form action="" method="POST">
            <div class="row">
              <div class="col-md-8">
              <div class="form-group">
                 <label for="siswa" class="control-label">Nama Lengkap</label>
                 <input type="hidden" name="siswa" value="<?=$row["siswa"]; ?>" >
                 <input type="text" name="" value="<?=$row["siswa"]; ?>" class="form-control" id="siswa" disabled>
              </div>
            </div>
            <div class="col-md-2">
              <div class="form-group">
                 <label for="nis" class="control-label">NIS</label>
                 <input type="hidden" name="nis" value="<?=$row["nis"]; ?>">
                 <input type="text" name="" value="<?=$row["nis"]; ?>" class="form-control" id="nis" disabled>
              </div>
            </div>
          </div>
          <div class="row">
           <div class="col-md-3">
              <div class="form-group">
                 <label for="klsa" class="control-label">Kelas</label>
                 <input type="hidden" name="kelas" value="<?=$k; ?>">
                 <input type="text" name="" value="<?=$k; ?>" class="form-control" id="klsa" disabled>
              </div>
            </div>
              <div class="col-md-3">
                <div class="form-group">
                   <label for="naik" class="control-label">Naik ke Kelas</label>
                   <input type="text" name="naik" value="<?= $na;?>" class="form-control" id="naik" disabled>
                </div>
              </div>
              <!-- <div class="col-md-3">
                <div class="form-group">
                   <label for="kelompok" class="control-label">Kelompok</label>
                   <select name="kelompok" class="form-control" id="kelompok" required>
                     <option></option>
                     <?php while($row=mysqli_fetch_assoc($kel)):?>
                     <option><?=$row["kelompok"];?></option>
                     <?php endwhile;?>
                   </select>
                </div>
              </div> -->
              <!-- <div class="col-md-3">
                <div class="form-group">
                   <label for="tgl" class="control-label">Tanggal di tetapkan</label>
                   <input type="date" name="tgl" value="<?= $na;?>" class="form-control" id="tgl" required>
                </div>
              </div> -->
         </div> 
         <hr>
         <input type="submit" name="simpan" class="btn btn-outline-dark" value="Rubah"/>
      <a href="wali_kelas.php?id=<?=$k;?>" class="btn btn-outline-dark">Cancel</a>
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
