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

$id = $_GET["id"];
$row = mysqli_query($conn, "SELECT * FROM masuk WHERE id_masuk = '$id'");
$ro = mysqli_fetch_assoc($row);

if(isset($_POST["simpan"])){
  $dari = $_POST["dari"] ;
  $no = $_POST["no"];
  $di = $_POST["diterima"];
  $d = explode('-',$di);
  $diterima = $d[2].'-'.$d[1].'-'.$d[0];
  $des = $_POST["des"];
  $un = $_POST["untuk"];
  $u = explode('-',$un);
  $untuk  = $u[2].'-'.$u[1].'-'.$u[0];
  $disposisi = $_POST["disposisi"];
  $kepada1 = $_POST["kepada1"];
  $kepada2 = $_POST["kepada2"];
  $kepada3 = $_POST["kepada3"];

  $fotolama1 = $_POST["fotolama1"];
     if($_FILES['filefoto1']['error']===4) {
    $scan1 = $fotolama1;
  }else{
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
         $move = move_uploaded_file($foto_tmp, '../img/masuk/'.$filefoto1Baru);
          if($move){
            if (unlink('../img/masuk/'.$fotolama1))
            { "Deleted ../img/masuk/$fotolama1";
              "<META HTTP-EQUIV=Refresh CONTENT='1; URL=doc_m_db.php'>";
            } $scan1 =$filefoto1Baru;
          }else{echo"<script>
                      alert(' Gagal uploud foto');
                      document.location.href = 'doc_m_db.php';
                      </script>"; return false;}
        }else{echo"<script>
                    alert('Gagal uploud foto ... Ukuran FOTO max 500 kb');
                    document.location.href = 'doc_m_db.php'; 
                    </script>";return false;}
      }else{echo"<script>
                  alert('Gagal uploud foto ... Ekstensi Foto yang diperbolehkan png dan jpg');
                  document.location.href = 'doc_m_db.php';
                  </script>";return false;}
      } 

  $fotolama3 = $_POST["fotolama3"];
     if($_FILES['filefoto3']['error']===4) {
    $scan3 = $fotolama3;
  }else{
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
         $move = move_uploaded_file($foto_tmp, '../img/masuk/'.$filefoto3Baru);
          if($move){
            if (unlink('../img/masuk/'.$fotolama3))
            { "Deleted ../img/masuk/$fotolama3";
              "<META HTTP-EQUIV=Refresh CONTENT='1; URL=doc_m_db.php'>";
            } $scan3 =$filefoto3Baru;
          }else{echo"<script>
                      alert(' Gagal uploud foto');
                      document.location.href = 'doc_m_db.php';
                      </script>"; return false;}
        }else{echo"<script>
                    alert('Gagal uploud foto ... Ukuran FOTO max 500 kb');
                    document.location.href = 'doc_m_db.php'; 
                    </script>";return false;}
      }else{echo"<script>
                  alert('Gagal uploud foto ... Ekstensi Foto yang diperbolehkan png dan jpg');
                  document.location.href = 'doc_m_db.php';
                  </script>";return false;}
      } 

  $fotolama2 = $_POST["fotolama2"];
     if($_FILES['filefoto2']['error']===4) {
    $scan2 = $fotolama2;
  }else{
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
         $move = move_uploaded_file($foto_tmp, '../img/masuk/'.$filefoto2Baru);
          if($move){
            if (unlink('../img/masuk/'.$fotolama2))
            { "Deleted ../img/masuk/$fotolama2";
              "<META HTTP-EQUIV=Refresh CONTENT='1; URL=doc_m_db.php'>";
            } $scan2 =$filefoto2Baru;
          }else{echo"<script>
                      alert(' Gagal uploud foto');
                      document.location.href = 'doc_m_db.php';
                      </script>"; return false;}
        }else{echo"<script>
                    alert('Gagal uploud foto ... Ukuran FOTO max 500 kb');
                    document.location.href = 'doc_m_db.php'; 
                    </script>";return false;}
      }else{echo"<script>
                  alert('Gagal uploud foto ... Ekstensi Foto yang diperbolehkan png dan jpg');
                  document.location.href = 'doc_m_db.php';
                  </script>";return false;}
      } 

                $query = "UPDATE masuk SET dari = '$dari', no = '$no', diterima = '$diterima', des = '$des', untuk = '$untuk', disposisi = '$disposisi', kepada1 = '$kepada1', kepada2 = '$kepada2', kepada3 = '$kepada3', scan1 = '$scan1', scan2 = '$scan2', scan3 = '$scan3' WHERE id_masuk = '$id'";
                mysqli_query($conn, $query);

  if (mysqli_affected_rows($conn) > 0) {
    echo "
    <script>
    alert('data berhasil dirubah');
    document.location.href = 'doc_m_db.php';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Tidak ada perubahan data');
    document.location.href = 'adoc_m_db.php';
    </script>
    ";
}
}else{
  $kepada1 = ' ';
  $kepada2 = ' ';
  $kepada3 = ' ';
}
$kpd = mysqli_query($conn, "SELECT guru FROM guru");
$kpd2 = mysqli_query($conn, "SELECT guru FROM guru");
$kpd3 = mysqli_query($conn, "SELECT guru FROM guru");

$query = "UPDATE guru SET masuk = 'success' WHERE guru = '$kepada1'";
mysqli_query($conn, $query);

$query2 = "UPDATE guru SET masuk = 'success' WHERE guru = '$kepada2'";
mysqli_query($conn, $query2);

$query3 = "UPDATE guru SET masuk = 'success' WHERE guru = '$kepada3'";
mysqli_query($conn, $query3);


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
            <h3 style="margin: 0px">FORM Surat Masuk</h3>
         <hr>
    <form method="POST" action="" enctype="multipart/form-data">
     
    <div class="row">
      <div class="col-md-5">
        <div class="form-group">
           <label for="dari" class="control-label">Dari</label>
           <input type="text" name="dari" value="<?=$ro["dari"];?>" class="form-control" id="dari" autocomplete="off">
        </div>
      </div>
      <div class="col-md-3">
        <div class="form-group">
           <label for="no" class="control-label">Nomer</label>
           <input type="text" name="no" value="<?=$ro["no"];?>" class="form-control" id="no" autocomplete="off">
        </div>
      </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="diterima" class="control-label">Tanggal Diterima</label>
           <input type="text" name="diterima" value="<?=$ro["diterima"];?>" class="form-control" id="diterima" autocomplete="off">
        </div>
      </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="untuk" class="control-label">Untuk Tanggal</label>
           <input type="text" name="untuk" value="<?=$ro["untuk"];?>" class="form-control" id="untuk" autocomplete="off">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
           <label for="des" class="control-label">Deskripsi</label>
            <input type="text" name="des" value="<?=$ro["des"];?>" class="form-control" id="des" autocomplete="off">
        </div>
      </div>
      <div class="col-md-6">
        <div class="form-group">
           <label for="disposisi" class="control-label">Keterangan Disposisi</label>
           <input type="text" name="disposisi" value="<?=$ro["disposisi"];?>" class="form-control" id="disposisi" autocomplete="off">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="form-group">
           <label for="kepada" class="control-label">Kepada 1</label>
           <select name="kepada1" class="form-control" id="kepada">
               <option><?=$ro["kepada1"];?></option>
               <?php while($kp = mysqli_fetch_assoc($kpd)): ?>
                <option><?=$kp["guru"]; ?></option>
               <?php endwhile;?>
            </select>
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="kepada" class="control-label">Disposisi 1</label>
           <select name="kepada2" class="form-control" id="kepada">
               <option><?=$ro["kepada2"];?></option>
               <?php while($kp2 = mysqli_fetch_assoc($kpd2)): ?>
                <option><?=$kp2["guru"]; ?></option>
               <?php endwhile;?>
            </select>
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="kepada" class="control-label">Disposisi 2</label>
           <select name="kepada3" class="form-control" id="kepada">
               <option><?=$ro["kepada3"];?></option>
               <?php while($kp3 = mysqli_fetch_assoc($kpd3)): ?>
                <option><?=$kp3["guru"]; ?></option>
               <?php endwhile;?>
            </select>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="form-group">
           <label for="filefoto1" class="control-label">Scan 1 Lama: </label><img src="../img/masuk/<?=$ro["scan1"]; ?>" width = "100px">
           <input type="file" name="filefoto1" value="" class="form-control" id="filefoto1" >
           <input type="hidden" name="fotolama1" value="<?=$ro["scan1"]; ?>">
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="filefoto2" class="control-label">Scan 2 Lama: </label><img src="../img/masuk/<?=$ro["scan2"]; ?>" width = "100px">
           <input type="file" name="filefoto2" value="" class="form-control" id="filefoto2" >
           <input type="hidden" name="fotolama2" value="<?=$ro["scan2"]; ?>">
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="filefoto3" class="control-label">Scan 3 Lama: </label><img src="../img/masuk/<?=$ro["scan3"]; ?>" width = "100px">
           <input type="file" name="filefoto3" value="" class="form-control" id="filefoto3" >
           <input type="hidden" name="fotolama3" value="<?=$ro["scan3"]; ?>">
        </div>
      </div>
    </div>
 <hr>    
 <input type="submit" name="simpan" class="btn btn-outline-dark" value="Rubah"/>
<a href="doc_m_db.php" class="btn btn-outline-dark">Cancel</a>
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






