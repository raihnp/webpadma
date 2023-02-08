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

$id_nilai = $_SESSION["id_nilai"];
$sql = mysqli_query($conn, "SELECT * FROM nilai WHERE id_nilai='$id_nilai'");
$sq = mysqli_fetch_assoc($sql);
$id_jadwal = $sq["id_jadwal"];
$kls = $sq["kls"];
$judul = $sq["judul"];
$niai = unserialize($sq["nilai"]);
$siwa = unserialize($sq["siswa"]);

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
<div class="form">
       <p style="font-size: 20px; margin: 0px"><b>Input Nilai Siswa <?=$kls; ?></b><br><i><?=$pelajaran; ?> - <?=$judul; ?></i></p>

<form  action="" method="post">
<?php $s=1;?>

<?php foreach ($siwa as $val =>$sis){ ?>
  <div class='panel panel-default' >
   <div class="row" style="padding: 5px; margin-bottom: 0px">
      <div class="col-md-1">
        <?= $s; ?>
      </div>
      <div class="col-md-3">
        <input type="hidden" name="no[]" class="form-control" value="<?= $val; ?>"><?= $val; ?>
      </div>
      <div class="col-md-4">
        <input type="hidden" name="siswa[]" class="form-control" value="<?= "$sis"; ?>"><?= "$sis"; ?>
      </div>
      <div class="col-md-4">
        <div class="form-group">
          <input type="number" name="nilai[]" class="form-control" value="<?= "$niai[$val]" ; ?>">
             
        </div>
      </div>
   </div>
</div>
<?php $s++; ?>
  <?php } ?>
  <input type="submit" name="submit" class="btn btn-outline-dark" value="Rubah"/>
    <a href="javascript:history.back()" class="btn btn-outline-dark">Cancel</a>
</form>
<?php
if(isset($_POST['submit'])){
    $siswax = $_POST["siswa"];
     $nilaix = $_POST["nilai"];
     $no = $_POST["no"];
    $data = array_combine($no, $siswax);
  $siswa = serialize($data);
    $data1 = array_combine($no, $nilaix);
  $nilai = serialize($data1);

$query ="UPDATE nilai SET id_jadwal = '$id_jadwal', guru = '$guru', pelajaran = '$pelajaran',judul = '$judul',kls = '$kls', siswa = '$siswa', nilai = '$nilai' WHERE id_nilai = '$id_nilai'";
 mysqli_query($conn, $query);

 
 if($query){
  echo "
    <script>
    alert('Data berhasil dirubah');
    // document.location.href = 'nilai.php';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Data gagal dirubah');
    // document.location.href = 'nilai.php';
    </script>
    ";
 }
}

?>
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