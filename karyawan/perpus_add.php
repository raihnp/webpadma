<?php
session_start();
if( !isset($_SESSION["login"])){
  if($_SESSION["level"]!='4'){
    if($_SESSION["level"]!='41'){
      if($_SESSION["level"]!='42'){
      header("Location: ../login.php");
    }}}}
$id_karyawan = $_SESSION["id_karyawan"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT id_karyawan, karyawan, jabatan, status, foto FROM karyawan WHERE id_karyawan = '$id_karyawan'");
$rowx = mysqli_fetch_assoc($sqlx);
$karyawan = $rowx["karyawan"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];

$id_siswa = $_GET["id"];
$k = $_GET["k"];
$query = mysqli_query($conn,"SELECT * FROM siswa WHERE id_siswa = '$id_siswa'");
$sql = mysqli_fetch_assoc($query);
$siswa = $sql["siswa"];
$nis = $sql["nis"];

if(isset($_POST["submit"])){
$kirim = tglIndonesia(date('d-m-Y'));
$pesan = $_POST["pesan"];
 $query1 = "INSERT INTO perpus VALUES ('', '$nis', '$kirim', '$pesan')";
        mysqli_query($conn, $query1); 
if (mysqli_affected_rows($conn) > 0){
     echo "
    <script>
     alert('Data berhasil ditambah');
    document.location.href = 'siswa_db.php';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Data gagal ditambah');
    document.location.href = 'siswa_db.php';
    </script>
    ";
  }
}
  $query2 = "UPDATE siswa SET perpus = 'success' WHERE id_siswa = '$id_siswa'";
mysqli_query($conn, $query2);

$query3 = mysqli_query($conn,"SELECT * FROM perpus WHERE nis  = '$nis'");
$sq = mysqli_fetch_assoc($query3);
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
    <title>Karyawan</title>
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
      <div align="center" style="margin-top: 30px;">
      <a href="../logout.php"><img src="../img/karyawan/<?= $foto; ?>" width="100" class="mx-auto d-block"></a>
      <SCRIPT language=JavaScript>var d = new Date();
                var h = d.getHours();
                if (h < 10) { document.write('Selamat pagi,'); }
                else { if (h < 15) { document.write('Selamat siang,'); }
                else { if (h < 19) { document.write('Selamat sore,'); }
                else { if (h <= 23) { document.write('Selamat malam,'); }
                }}}
      </SCRIPT>
        <p class="text-center"><b><?= $karyawan; ?></b></p>
    </div>
        <div class="menu-kiri">
          <div class="card mt-2" style="width: 100%;">
            <div class="card-header text-center">
             <?= $jabatan; ?>
            </div>
              <ul>
               <li><a href="karyawan.php">Home</a></li>
               <li><a href="Siswa_db.php">SiswaDb</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10">
    <!-- ------------ -->
    <div class="form p-1">
      <div class="card p-1" style="width: 100%;">
        <div class="card-header">
      <span style="font-size: 20px">Perpustakaan</span>
      <span class="float-right">
        <?= $siswa; ?> | <?= $nis; ?> | <?= $k; ?> 
        <img src="../img/siswa/<?= $sql["foto"]; ?>" width="30">
      </span>
    </div>
    <form action="" method="POST">
    <div class="form-group">
        <label for="ket" class="control-label">Pesan</label>
      <textarea class="ckeditor" name="pesan" id="ket" class="form-control" ></textarea>
    </div>
    <hr>     
      <input type="submit" name="submit" class="btn btn-outline-dark btn-sm" value="Tambah"/>
      <a href="siswa_db.php" class="btn btn-outline-dark btn-sm">Cancel</a>
    </form>
  </div>
</div>
   <!-- -------------- -->
</div>
   <nav class="navbar fixed-bottom navbar-light">
      <span class="navbar-text mx-auto d-block">
        <a href="../raihan.php">Raihan Putri Imanda</a> | <a href="../build.php">Build <?php echo tglIndonesia(date('F Y')); ?></a>
      </span>
    </nav>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

  </body>
</html>






