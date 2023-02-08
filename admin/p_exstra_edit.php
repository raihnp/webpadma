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
$exstra = mysqli_query($conn, "SELECT * FROM exstra WHERE id_exstra = '$id'");
$ex= mysqli_fetch_assoc($exstra);

if(isset($_POST["submit"])){
  $exs = $_POST["exs"];
  $pembimbing = $_POST["pembimbing"];
  $hari = $_POST["hari"];
  $jam = $_POST["jam"];
  $keterangan = $_POST["keterangan"];
  $tempat = $_POST["tempat"];

 $query = "UPDATE exstra SET exs = '$exs', pembimbing = '$pembimbing', hari = '$hari', jam = '$jam', keterangan = '$keterangan', tempat = '$tempat'WHERE id_exstra = '$id'";
  mysqli_query($conn, $query);

  if (mysqli_affected_rows($conn) > 0) {
    echo "
    <script>
    alert('data berhasil dirubah');
    document.location.href = 'p_exstra_db.php';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Tidak ada perubahan data');
    document.location.href = 'p_exstra_db.php';
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
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>  
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
            <h3 style="margin: 0px">Edit Exstra Kurikuler</h3>
         <hr>
    <form method="POST" action="">     
    <div class="row">
      <div class="col-md-7">
        <div class="form-group">
           <label for="exstra" class="control-label">Exstra Kurikuler</label>
           <input type="text" name="exs"  value="<?= $ex["exs"]; ?>" class="form-control" id="exstra" autocomplete="off">
        </div>
      </div>
      </div>
      <div class="row">
      <div class="col-md-5">
        <div class="form-group">
           <label for="pembimbing" class="control-label">Pembimbing</label>
           <input type="text" name="pembimbing"  value="<?= $ex["pembimbing"]; ?>" class="form-control" id="pembimbing" autocomplete="off">
        </div>
      </div>
        <div class="col-md-3">
        <div class="form-group">
           <label for="hari" class="control-label">Hari</label>
           <input type="text" name="hari" value="<?= $ex["hari"]; ?>" class="form-control" id="hari" autocomplete="off">
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="jam" class="control-label">Jam</label>
           <input type="text" name="jam" value="<?= $ex["jam"]; ?>" class="form-control" id="jam" autocomplete="off">
        </div>
      </div>
      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="form-group">
          <label for="ket" class="control-label">Tempat</label>
          <textarea class="ckeditor" name="tempat" id="ket"class="form-control" ><?= $ex["tempat"]; ?></textarea>
          </div>
        </div>
      </div>

      <div class="row">
      <div class="col-md-12">
        <div class="form-group">
           <label for="tempat" class="control-label">Keterangan</label>
           <input type="text" name="keterangan"  class="form-control" id="tempat" value="<?= $ex["keterangan"]; ?>" autocomplete="off">
        </div>
      </div>
      </div>    
<hr> 
    <input type="submit" name="submit" class="btn btn-outline-dark" value="Ubah"/>
<a href="p_exstra_db.php" class="btn btn-outline-dark">Cancel</a>
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