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
$pel = $rowx["pelajaran"];
$foto = $rowx["foto"];

$tanggal=tglIndonesia(date('d-m-Y'));
$day = hari();
$id = $_GET["id"];
$hari = $_GET["hari"];
$result = mysqli_query($conn, "SELECT * FROM jadwal WHERE id_jadwal = '$id'");
$re = mysqli_fetch_assoc($result);
if($re["gly"]=='done'){ header("Location: absensi_edit.php?id=$id");}
$jad = $re["id_jadwal"];
$h = $re["hari"];
$kelas = $re["kls"];
$te = $re["periode"];
$p = $re["pelajaran"];
if ($p == $pel){$pelajaran = $pel; $t = $te;}else{$pelajaran = $p; $t = $te.'*';}
$sql = mysqli_query($conn, "SELECT * FROM siswa WHERE kls LIKE  '%$kelas%' ORDER BY nis ASC");
while($row = mysqli_fetch_assoc($sql)){
$siswa[] = $row["siswa"];
$nis[] = $row["nis"];
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
    <div class="row mt-5">
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
             <?= $jabatan; ?><br><?= $pel; ?>
            </div>
              <ul>
               <li><a href="guru.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-4">
    <!-- ------------ -->
    <div class="form">
    <p style="font-size: 20px; margin: 0px"><b><a href="riwayat.php?id=<?=$jad;?>">Absensi Siswa <?=$kelas; ?></a></b><br><i><?=$p; ?></i></p>
     <br>
<?php if($hari==$day){;?>
<?php $s=1; ?>
<?php for($i=0;$i<count($siswa);$i++){?>
<form action="" method="post">
  <?php echo "<input type='hidden'value='$nis[$i]' name='nis[$i]'>"; ?>
   <?php echo "<input type='hidden'value='$siswa[$i]' name='siswa[$i]'>"; ?>
   <?php echo "<input type='hidden'value=' ' name='kosong[$i]'>"; ?>
    <div class='panel panel-default' >
      <div class="row pt-3">
        <div class="col-md-1">
          <?= $s; ?>-<i><?php echo "$nis[$i]"; ?></i>
        </div>
        <div class="col-md-4">
          <?php echo "$siswa[$i]"; ?>
        </div>
        <div class="col-md-3">
          <?php echo "<input type='radio' name='ab[$i]' value='Hadir' checked>Hadir | <input type='radio' name='ab[$i]' value='Ijin'>Ijin | <input type='radio' name='ab[$i]' value='Sakit'>Sakit | <input type='radio' name='ab[$i]' value='X'>X"; ?>
        </div>
        <div class="col-md-4">
          <div class="form-group">
               <?php echo "<input type='text' name='keterangan[$i]' value= ''class='form-control' id='guru' autocomplete='off'>"; ?>
          </div>
        </div>
      </div>
    </div>
    <hr class="mt-0">
       <?php $s++; ?>
        <?php } ?>
        <input type="submit" name="submit" class="btn btn-outline-dark" value="Tambah"/>
    <a href="kalender.php" class="btn btn-outline-dark">Cancel</a>
</form>
<?php
     
    if(isset($_POST['submit'])){
    for($q=0;$q<count($siswa);$q++){
         $nis =implode(",", $_POST['nis']);
         $siswa =implode(",", $_POST['siswa']);
         $absensi =implode(",", $_POST['ab']);
         $kosong =implode(",", $_POST['kosong']);
         $keterangan = implode(",", $_POST['keterangan']);}

     $query ="Insert into absen value('','$guru','$pelajaran','$kosong','$tanggal','$kelas','$t', '$siswa', '$nis','$absensi','$keterangan')";
      mysqli_query($conn, $query);
     $query = "UPDATE jadwal SET   tanggal = '$tanggal', gly ='done', nis = '$nis' , absensi = '$absensi' , keterangan = '$keterangan'  WHERE id_jadwal = '$id'";
     mysqli_query($conn, $query);

      if($query){
      echo "
        <script>
        alert('Data berhasil ditambah');
        document.location.href = 'kalender.php';
        </script>";
      } else {
        echo"
        <script>
        alert('Data gagal ditambahkan');
        document.location.href = 'kalender.php';
        </script>";
     }
    }
?>
<?php }else{ echo "Maaf absensi,  edit absensi hanya diijinkan pada kelas, hari dan tanggal yang sama";} ?></p>

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