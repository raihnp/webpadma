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

if(isset($_POST["submit"])){
  $group = $_POST["group"];
  $kls = $_POST["kls"];
  $soal = $_POST["soal"];
  $a = $_POST["a"];
  $b = $_POST["b"];
  $c = $_POST["c"];
  $d = $_POST["d"];
  $e = $_POST["e"];
  $jawaban = $_POST["jawaban"];
  $pembahasan = $_POST["pembahasan"];
     $query = "INSERT INTO bank VALUES ('', '$guru', '$pelajaran', '$group', '$kls', '$soal', '$a', '$b', '$c', '$d', '$e', '$jawaban', '$pembahasan')";
     mysqli_query($conn, $query);
        if (mysqli_affected_rows($conn) > 0) {
          echo "
          <script>
          alert('data berhasil ditambah');
          document.location.href = 'soal_db.php';
          </script>
          ";
        } else {
          echo"
          <script>
          alert('Tidak ada perubahan data');
          document.location.href = 'soal_db.php';
          </script>
          ";
        }
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
            <div class="card-header text-center" style="font-size: 13px;">
             <?= $jabatan; ?><br><?= $pelajaran; ?>
            </div>
              <ul>
               <li><a href="wali.php">Home</a></li>
               <li><a href="kalender.php">Akademik</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
<div class="form"> 
      <p style="font-size: 20px;"><b>Form Tambah Soal</b></p>
    <form action="" method="POST">
      <div class="row">
        <div class="col-md-3">
        <div class="form-group">
          <label for="pelajaran">Mata Pelajaran</label>
          <input type="text" name="pelajaran" value="<?=$pelajaran;?>" disabled class="form-control" id="pelajaran">
         </div>
       </div>
     </div>
     <div class="row">
       <div class="col-md-2">
        <div class="form-group">
          <label for="group">Group</label>
          <input type="text" name="group" value="" class="form-control" id="group">
         </div>
       </div>
      <div class="col-md-3">
        <div class="form-group">
          <label for="kls">Kelas</label>
          <input type="text" name="kls" value="" placeholder="X, XI, XII" class="form-control" id="kls">
         </div>
      </div>
    </div>
      <div class="form-group">
          <label for="soal" class="control-label">Soal</label>
        <textarea class="ckeditor" name="soal" id="soal" class="form-control" ></textarea>
      </div>
      <div class="form-group">
          <label for="a" class="control-label">Pilihan jawaban a</label>
          <textarea class="ckeditor" name="a" id="a" class="form-control" ></textarea>
      </div>
      <div class="form-group">
          <label for="b" class="control-label">Pilihan jawaban b</label>
          <textarea class="ckeditor" name="b" id="b" class="form-control" ></textarea>
      </div>
      <div class="form-group">
          <label for="c" class="control-label">Pilihan jawaban c</label>
          <textarea class="ckeditor" name="c" id="c" class="form-control" ></textarea>
      </div>
      <div class="form-group">
          <label for="d" class="control-label">Pilihan jawaban d</label>
          <textarea class="ckeditor" name="d" id="d" class="form-control" ></textarea>
      </div>
      <div class="form-group">
          <label for="e" class="control-label">Pilihan jawaban e</label>
          <textarea class="ckeditor" name="e" id="e" class="form-control" ></textarea>
      </div>  
      <div class="form-group">
          <label for="jawaban" class="control-label">Jawaban</label>
          <textarea class="ckeditor" name="jawaban" id="jawaban" class="form-control" ></textarea>
      </div>   
  <div class="form-group">
      <label for="pembahasan" class="control-label">Pembahasan</label>
      <textarea class="ckeditor" name="pembahasan" id="pembahasan" class="form-control" ></textarea>
  </div>          
 <hr>     
      <input type="submit" name="submit" class="btn btn-outline-dark" value="Tambah"/>
      <a href="javascript:history.back()" class="btn btn-outline-dark">Cancel</a>
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