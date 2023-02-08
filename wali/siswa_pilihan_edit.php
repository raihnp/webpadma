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
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, pelajaran, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$pelajaran = $rowx["pelajaran"];
$foto = $rowx["foto"];

$id=$_GET["id"];
$k = $_GET["k"];
$sqly = mysqli_query($conn, "SELECT * FROM siswa WHERE id_siswa = '$id'");
$rowy = mysqli_fetch_assoc($sqly);
$no = $rowy["nis"];

$pil=mysqli_query($conn,"SELECT * FROM pilihan WHERE nis = '$no'");
$si = mysqli_fetch_assoc($pil);
$id_pilihan = $si["id_pilihan"];
$nis = $si["nis"];
$pilih = $si["pilih"];
$pil = $si["pilih"];
$pilihan = explode(",", $pilih);
$p = $pilih;
// if(!empty($pil)){
// $p = $pilihan[0].", ".$pilihan[1];}else{$p = '-';}

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
             <?= $jabatan; ?>
            </div>
              <ul>
               <li><a href="wali.php">Home</a></li>
               <li><a href="siswa_db.php">SiswaDb</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
<div class="form p-1"> 
<div class="card p-1" style="width: 100%;">
    <div class="card-header"> 
    <form method="POST" action="" >
      <b style="font-size: 20px;">Pilihan Exstra-Kurikuler</b>
      <span class="float-right">
        <i><?=$rowy["siswa"]; ?></i> <img src="../img/siswa/<?=$rowy["foto"]; ?>" width="30">
      </span>
<p><i><?= $p;?></i>&nbsp;&nbsp;&nbsp;[<a href="exstra_db.php" target="_blank">bantuan</a>]</p>
</div>
<p>1 - <input type="checkbox" name="target[]" value="Pramuka Wajib" <?php if(in_array('Pramuka Wajib', $pilihan)){
  echo 'checked'; } ?>  > Pramuka Wajib --- Untuk kelas X dan XI</p>
<p>2 - <input type="checkbox" name="target[]" value="Pramuka Reguler" <?php if(in_array('Pramuka Reguler', $pilihan)){
  echo 'checked'; } ?>  > Pramuka Reguler </p>
<p>3 - <input type="checkbox" name="target[]" value="Ketaqwaan" <?php if(in_array('Ketaqwaan', $pilihan)){
  echo 'checked'; } ?>  > Keteaqwaan </p>
<p>4 - <input type="checkbox" name="target[]" value="Padmanaba Junior Rescue Club" <?php if(in_array('Padmanaba Junior Rescue Club', $pilihan)){echo 'checked'; } ?>  > Padmanaba Junior Rescue Club </p>
<p>5 - <input type="checkbox" name="target[]" value="Kelompok ilmiah Remaja" <?php if(in_array('Kelompok ilmiah Remaja', $pilihan)){echo 'checked'; } ?>  > Kelompok ilmiah Remaja  </p>
<p>6 - <input type="checkbox" name="target[]" value="Majalah Progrsif" <?php if(in_array('Majalah Progrsif', $pilihan)){echo 'checked'; } ?>  > Majalah Progrsif </p>
<p>7 - <input type="checkbox" name="target[]" value="Debat Bahasa Inggris" <?php if(in_array('Debat Bahasa Inggris', $pilihan)){echo 'checked'; } ?>  > Debat Bahasa Inggris  </p>
<p>8 - <input type="checkbox" name="target[]" value="English Conversation" <?php if(in_array('English Conversation', $pilihan)){echo 'checked'; } ?>  > English Conversation  </p>
<p>9 - <input type="checkbox" name="target[]" value="Bahasa Jerman" <?php if(in_array('Bahasa Jerman', $pilihan)){echo 'checked'; } ?>  > Bahasa Jerman  </p>
<p>10 - <input type="checkbox" name="target[]" value="Bahasa Jepang" <?php if(in_array('Bahasa Jepang', $pilihan)){echo 'checked'; } ?>  > Bahasa Jepang  </p>
<p>11 - <input type="checkbox" name="target[]" value="Robotik" <?php if(in_array('Robotik', $pilihan)){
  echo 'checked'; } ?>  > Robotik </p>
<p>12 - <input type="checkbox" name="target[]" value="Aero Modeling" <?php if(in_array('Aero Modeling', $pilihan)){
  echo 'checked'; } ?>  > Aero Modeling </p>
<p>13 - <input type="checkbox" name="target[]" value="Seni Tari" <?php if(in_array('Seni Tari', $pilihan)){
  echo 'checked'; } ?>  > Seni Tari </p>
<p>14 - <input type="checkbox" name="target[]" value="Teater Jubah Macan" <?php if(in_array('Teater Jubah Macan', $pilihan)){echo 'checked'; } ?>  > Teater Jubah Macan  </p>
<p>15 - <input type="checkbox" name="target[]" value="Karawitan" <?php if(in_array('Karawitan', $pilihan)){echo 'checked'; } ?>  > Karawitan   </p>
<p>16 - <input type="checkbox" name="target[]" value="Paduan Suara Padmanaba" <?php if(in_array('Paduan Suara Padmanaba', $pilihan)){echo 'checked'; } ?>  > Paduan Suara Padmanaba </p>
<p>17 - <input type="checkbox" name="target[]" value="Pencak Silat" <?php if(in_array('Pencak Silat', $pilihan)){echo 'checked'; } ?>  > Pencak Silat  </p>
<p>18 - <input type="checkbox" name="target[]" value="Padmanaba Hiking Club" <?php if(in_array('Padmanaba Hiking Club', $pilihan)){echo 'checked'; } ?>  > Padmanaba Hiking Club  </p>
<p>19 - <input type="checkbox" name="target[]" value="Futsal" <?php if(in_array('Futsal', $pilihan)){echo 'checked'; } ?>  > Futsal  </p>
<p>20 - <input type="checkbox" name="target[]" value="Basket" <?php if(in_array('Basket', $pilihan)){echo 'checked'; } ?>  > Basket  </p>  
<p>21 - <input type="checkbox" name="target[]" value="Bulu tangkis"<?php if(in_array('Bulu tangkis', $pilihan)){
  echo 'checked'; } ?>  > Bulu tangkis </p>
<p>22 - <input type="checkbox" name="target[]" value="Bhayangkara Padmanba" <?php if(in_array('Bhayangkara Padmanba', $pilihan)){
  echo 'checked'; } ?>  > Bhayangkara Padmanba </p>
<p>23 - <input type="checkbox" name="target[]" value="d All Star Padmanaba" <?php if(in_array('d All Star Padmanaba', $pilihan)){
  echo 'checked'; } ?>  > d All Star Padmanaba </p>
<p>24 - <input type="checkbox" name="target[]" value="Tenis Meja" <?php if(in_array('Tenis Meja', $pilihan)){echo 'checked'; } ?>  > Tenis Meja </p>
<p>25 - <input type="checkbox" name="target[]" value="Padmanaba Orchestra" <?php if(in_array('Padmanaba Orchestra', $pilihan)){echo 'checked'; } ?>  > Padmanaba Orchestra  </p>
  </div>
 <input type="submit" name="simpan" class="btn btn-outline-dark" value="Rubah"/>
<a href="wali_kelas.php?id=<?=$k;?>" class="btn btn-outline-dark">Cancel</a>
    </form>
    <?php
    if(isset($_POST["simpan"])){
      $target=$_POST['target'];
      $pilih= implode(",", $target);

      $query ="UPDATE pilihan SET nis = '$nis', pilih = '$pilih' WHERE id_pilihan = '$id_pilihan'";
 mysqli_query($conn, $query);
 if($query){
  echo "
    <script>
    alert('Data berhasil dirubah');
    document.location.href = 'wali_kelas.php?id=$k';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Data gagal dirubah');
    document.location.href = 'wali_kelas.php?id=$k';
    </script>
    ";
 }
}
    ?>
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

  </body>
</html>