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

$judul = $_SESSION["judul"];
$nil = $_SESSION["nil"];
$sql = mysqli_query($conn, "SELECT * FROM siswa WHERE switch = 'on' AND kls LIKE '%$nil%' ORDER BY nis asc");
while($row = mysqli_fetch_assoc($sql)){
$sis[] = $row["siswa"];
$no[] = $row["nis"];
}

$jdw = mysqli_query($conn, "SELECT DISTINCT kls, id_jadwal FROM jadwal WHERE kls = '$nil' AND (guru1 LIKE '$guru' OR guru2 LIKE '$guru' OR guru3 LIKE '$guru' OR guru4 LIKE '$guru') GROUP BY kls");
$j = mysqli_fetch_assoc($jdw);
$id_jadwal = $j["id_jadwal"];

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
               <li><a href="admin.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
    <div class="form">
           <p style="font-size: 20px; margin: 0px"><b>Input Nilai Siswa <?=$nil; ?></b><br><i><?=$pelajaran; ?> - <?=$judul; ?></i></p>
<form  action="" method="post">
    <?php $s=1; ?>
    <?php for($i=0;$i<count($no);$i++):?>
<div class='panel panel-default' >
   <div class="row" style="padding: 5px; margin-bottom: 0px">
      <div class="col-md-1">
        <?= $s; ?>
      </div>
      <div class="col-md-3">
        <?= "$no[$i]"; ?>
      </div>
      <div class="col-md-4">
        <?= "$sis[$i]"; ?>
      </div>
      <div class="col-md-4">
        <div class="form-group">
             <?= "<input type='number' name=nilai[$i]  class='form-control'>"; ?>
        </div>
      </div>
   </div>
</div>
   <?php $s++; ?>
   <?php endfor; ?>
    <input type="submit" name="submit" class="btn btn-outline-dark" value="Tambah"/>
    <a href="javascript:history.back()" class="btn btn-outline-dark">Cancel</a>
</form>
</div>
</div>

<?php
    $kls=$nil; 
   
if(isset($_POST['submit'])){
     for($i=0;$i<count($no);$i++){
       $nilaix=$_POST['nilai'];
      $nilaixx[]=$nilaix[$i];}
      $data = array_combine($no, $nilaixx);
      $nilai = serialize($data);  
      $data2 = array_combine($no, $sis);
      $siswa = serialize($data2);
 $query ="Insert into nilai value('', '$id_jadwal', '$guru','$pelajaran','$judul','$kls', '$siswa','$nilai')";
 mysqli_query($conn, $query);
 
 if($query){
  echo "
    <script>
    alert('Data berhasil ditambah');
    document.location.href = 'nilai.php';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Data gagal ditambahkan');
    document.location.href = 'nilai.php';
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