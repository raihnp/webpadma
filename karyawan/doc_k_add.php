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
$sqlx = mysqli_query($conn, "SELECT * FROM karyawan WHERE id_karyawan = '$id_karyawan'");
$rowx = mysqli_fetch_assoc($sqlx);
$karyawan = $rowx["karyawan"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];

if(isset($_POST["simpan"])){
  $no = $_POST["no"];
  $di = $_POST["keluar"];
  $d = explode('-',$di);
  $keluar = $d[2].'-'.$d[1].'-'.$d[0];
  $des = $_POST["des"];
  $un = $_POST["untuk"];
  $u = explode('-',$un);
  $untuk  = $u[2].'-'.$u[1].'-'.$u[0];
  if(isset($_POST["guru"])){
      $guru = $_POST["guru"];
      $query = "UPDATE guru SET info = 'success'";
      mysqli_query($conn, $query);
    }else{
      $guru = ' ';
    }
    if(isset($_POST["karyawan"])){
      $karyawan = $_POST["karyawan"];
      $query = "UPDATE Karyawan SET info = 'success'";
      mysqli_query($conn, $query);
    }else{
      $karyawan = ' ';
    }
    if(isset($_POST["ortu"])){
      $ortu = $_POST["ortu"];
      $query = "UPDATE ortu SET info = 'success'";
      mysqli_query($conn, $query);
    }else{
      $ortu = ' ';
    }
    if(isset($_POST["a"])){
      $a = $_POST["a"];
      $query = "UPDATE siswa SET info = 'success' WHERE kls LIKE 'X%'";
      mysqli_query($conn, $query);
    }else{
      $a = ' ';
    }
    if(isset($_POST["b"])){
      $b = $_POST["b"];
      $query = "UPDATE siswa SET info = 'success' WHERE kls LIKE 'XI%'";
      mysqli_query($conn, $query);
    }else{
      $b = ' ';
    }
    if(isset($_POST["c"])){
      $c = $_POST["c"];
      $query = "UPDATE siswa SET info = 'success' WHERE kls LIKE 'XII%'";
      mysqli_query($conn, $query);
    }else{
      $c = ' ';
    }
  $filefoto1 = $_FILES["filefoto1"]["name"];
      $ekstensi_diperbolehkan = array('png','jpg');
      $x = explode('.', $filefoto1);
      $ekstensi = strtolower(end($x));
      $ukuran = $_FILES['filefoto1']['size'];
      $foto_tmp = $_FILES['filefoto1']['tmp_name'];  
      if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
        if($ukuran < 500000){
         $filefoto1Baru = uniqid();
          $filefoto1Baru .= '.';
          $filefoto1Baru .= $ekstensi;
         $move = move_uploaded_file($foto_tmp, '../img/keluar/'.$filefoto1Baru);
                if($move){$scan1 = $filefoto1Baru; 
                    }else{echo 'GAGAL MENGUPLOAD scan';}
                }else{echo"<script>
                      alert('Data gagal ditambahkan ... Ukuran scan max 200 kb');
                      document.location.href = 'doc_k_db.php';</script>";}
              }else{echo"<script>
                    alert('Data gagal ditambahkan ... Ekstensi scan yang diperbolehkan png dan jpg');
                    document.location.href = 'doc_k_db.php';</script>";}
  $filefoto2 = $_FILES["filefoto2"]["name"];
      $ekstensi_diperbolehkan = array('png','jpg');
      $x = explode('.', $filefoto2);
      $ekstensi = strtolower(end($x));
      $ukuran = $_FILES['filefoto2']['size'];
      $foto_tmp = $_FILES['filefoto2']['tmp_name'];  
      if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
        if($ukuran < 500000){
         $filefoto2Baru = uniqid();
          $filefoto2Baru .= '.';
          $filefoto2Baru .= $ekstensi;
         $move = move_uploaded_file($foto_tmp, '../img/keluar/'.$filefoto2Baru);
                if($move){$scan2 = $filefoto2Baru; 
                    }else{echo 'GAGAL MENGUPLOAD scan';}
                }else{echo"<script>
                      alert('Data gagal ditambahkan ... Ukuran scan max 200 kb');
                      document.location.href = 'doc_k_db.php';</script>";}
              }else{echo"<script>
                    alert('Data gagal ditambahkan ... Ekstensi scan yang diperbolehkan png dan jpg');
                    document.location.href = 'doc_k_db.php';</script>";}
  $filefoto3 = $_FILES["filefoto3"]["name"];
      $ekstensi_diperbolehkan = array('png','jpg');
      $x = explode('.', $filefoto3);
      $ekstensi = strtolower(end($x));
      $ukuran = $_FILES['filefoto3']['size'];
      $foto_tmp = $_FILES['filefoto3']['tmp_name'];  
      if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
        if($ukuran < 500000){
         $filefoto3Baru = uniqid();
          $filefoto3Baru .= '.';
          $filefoto3Baru .= $ekstensi;
         $move = move_uploaded_file($foto_tmp, '../img/keluar/'.$filefoto3Baru);
                if($move){$scan3 = $filefoto3Baru; 
                    }else{echo 'GAGAL MENGUPLOAD scan';}
                }else{echo"<script>
                      alert('Data gagal ditambahkan ... Ukuran scan max 200 kb');
                      document.location.href = 'doc_k_db.php';</script>";}
              }else{echo"<script>
                    alert('Data gagal ditambahkan ... Ekstensi scan yang diperbolehkan png dan jpg');
                    document.location.href = 'doc_k_db.php';</script>";}
                   
                $query = "INSERT INTO keluar VALUES ('', '$no', '$keluar', '$untuk', '$guru', '$karyawan', '$ortu', '$a', '$b', '$c', '$des', '$scan1', '$scan2', '$scan3')";
                mysqli_query($conn, $query);

  if (mysqli_affected_rows($conn) > 0) {
    echo "
    <script>
    alert('data berhasil ditambah');
    document.location.href = 'doc_k_db.php';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Tidak ada perubahan data');
    document.location.href = 'doc_k_db.php';
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
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10">
    <!-- ------------ -->
    <div class="form">  
            <h3 style="margin: 0px">FORM Surat Keluar</h3>
         <hr>
    <form method="POST" action="" enctype="multipart/form-data">
     
    <div class="row">
      <div class="col-md-3">
        <div class="form-group">
           <label for="no" class="control-label">Nomer</label>
           <input type="text" name="no" value="" class="form-control" id="no" autocomplete="off">
        </div>
      </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="keluar" class="control-label">Tanggal Dikeluarkan</label>
           <input type="date" name="keluar" value="" class="form-control" id="keluar" autocomplete="off">
        </div>
      </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="untuk" class="control-label">Untuk Tanggal</label>
           <input type="date" name="untuk" value="" class="form-control" id="untuk" autocomplete="off">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-12">
<label class="control-label">Kepada</label>
<div class="form-control">
<option>
<input type="checkbox" name="guru" value="Guru"/> Guru &nbsp;&nbsp;&nbsp;
<input type="checkbox" name="karyawan" value="Karyawan"/> Karyawan &nbsp;&nbsp;&nbsp; 
<input type="checkbox" name="ortu" value="Ortu"/> Ortu &nbsp;&nbsp;&nbsp; 
<input type="checkbox" name="a" value="Kelas X"/> Kelas X &nbsp;&nbsp;&nbsp;
<input type="checkbox" name="b" value="Kelas XI"/> Kelas XI &nbsp;&nbsp;&nbsp;
<input type="checkbox" name="c" value="Kelas XII"/> Kelas XII
</option>
</div>
    </div>
  </div>
    <div class="row">
      <div class="col-md-12">
        <div class="form-group">
           <label for="des" class="control-label">Deskripsi</label>
            <input type="text" name="des" value="" class="form-control" id="des" autocomplete="off">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="form-group">
           <label for="filefoto1" class="control-label">Scan 1</label>
           <input type="file" name="filefoto1" value="" class="form-control" id="filefoto1" >
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="filefoto2" class="control-label">Scan 2</label>
           <input type="file" name="filefoto2" value="" class="form-control" id="filefoto2" >
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="filefoto3" class="control-label">Scan 3</label>
           <input type="file" name="filefoto3" value="" class="form-control" id="filefoto3" >
        </div>
      </div>
    </div>
 <hr>    
 <input type="submit" name="simpan" class="btn btn-outline-dark" value="Tambah"/>
<a href="doc_k_db.php" class="btn btn-outline-dark">Cancel</a>
    </form>
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






