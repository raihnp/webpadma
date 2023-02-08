<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=8){
  header("Location: ../login.php");
  exit;}
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$gurux = $rowx["guru"];
$jabatanx = $rowx["jabatan"];
$fotox = $rowx["foto"];
$statusx = $rowx["status"];
if( $statusx !=='Aktif'){
  echo"<script>
       alert('OPSSS....Hubungi Pengembang Anda');
       document.location.href = '../login.php';
       </script>";}
$id = $_GET["id"];
$sql = mysqli_query($conn, "SELECT * FROM karyawan WHERE id_karyawan = '$id'");
$row = mysqli_fetch_assoc($sql);
if(isset($_POST["submit"])){
  $karyawan = $_POST["karyawan"];
  $nik = $_POST["nik"];
  $agama = $_POST["agama"];
  $jk = $_POST["jk"];
  $tempat = $_POST["tempat"];
  $tanggal = $_POST["tanggal"];
  $alamat = $_POST["alamat"];
  $telpon = $_POST["telpon"];
  $email = $_POST["email"];
  $line = $_POST["line"];
  $jabatan = $_POST["jabatan"];
  $catatan = $_POST["catatan"];
 $fotolama = $_POST["fotolama"];
     if($_FILES['filefoto']['error']===4) {
    $foto = $fotolama;
  }else{
  $filefoto = $_FILES["filefoto"]["name"];
      $ekstensi_diperbolehkan = array('png','jpg');
      $x = explode('.', $filefoto);
      $ekstensi = strtolower(end($x));
      $ukuran = $_FILES['filefoto']['size'];
      $foto_tmp = $_FILES['filefoto']['tmp_name'];  
      if(in_array($ekstensi, $ekstensi_diperbolehkan) === true){
        if($ukuran < 500000){
         $filefotoBaru = uniqid();
          $filefotoBaru .= '.';
          $filefotoBaru .= $ekstensi;
         $move = move_uploaded_file($foto_tmp, '../img/karyawan/'.$filefotoBaru);
          if($move){
            if (unlink('../img/karyawan/'.$fotolama))
            { "Deleted ../img/karyawan/$fotolama";
              "<META HTTP-EQUIV=Refresh CONTENT='1; URL=karyawan_db.php'>";
            } $foto =$filefotoBaru;
          }else{echo"<script>
                      alert(' Gagal uploud foto');
                      document.location.href = 'karyawan_i_db.php';
                      </script>"; return false;}
        }else{echo"<script>
                    alert('Gagal uploud foto ... Ukuran FOTO max 500 kb');
                    document.location.href = 'karyawan_i_db.php'; 
                    </script>";return false;}
      }else{echo"<script>
                  alert('Gagal uploud foto ... Ekstensi Foto yang diperbolehkan png dan jpg');
                  document.location.href = 'karyawan_i_db.php';
                  </script>";return false;}
      } 
        $query = "UPDATE karyawan SET karyawan = '$karyawan', nik = '$nik',  agama = '$agama', jk = '$jk', tempat = '$tempat', tanggal = '$tanggal', alamat = '$alamat', telpon = '$telpon', email = '$email', line = '$line', jabatan = '$jabatan',  foto = '$foto',  catatan = '$catatan' WHERE id_karyawan = '$id'";
        mysqli_query($conn, $query); 
  if (mysqli_affected_rows($conn) > 0) {
    echo "<script>alert('Data berhasil dirubah');
    document.location.href = 'karyawan_i_db.php';
    </script>";} 
  else {
    echo"<script>alert('Data gagal dirubah');
    document.location.href = 'karyawan_i_db.php';
    </script>";}
}
$agm = mysqli_query($conn, "SELECT agama FROM agama");
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
     <a href="../logout.php"><img src="../img/guru/<?= $fotox; ?>" width="100" class="mx-auto d-block"></a>
      <SCRIPT language=JavaScript>var d = new Date();
                var h = d.getHours();
                if (h < 10) { document.write('Selamat pagi,'); }
                else { if (h < 15) { document.write('Selamat siang,'); }
                else { if (h < 19) { document.write('Selamat sore,'); }
                else { if (h <= 23) { document.write('Selamat malam,'); }
                }}}
      </SCRIPT>
        <p class="text-center"><b><?= $gurux; ?></b></p>
    </div>
        <div class="menu-kiri">
          <div class="card" style="width: 100%;">
            <div class="card-header text-center">
             <?= $jabatanx; ?>
            </div>
              <ul>
                <li><a href="admin.php">Home</a></li>
                <li><a href="karyawan_i_db.php">InboxDb</a></li>
              </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-10 mt-3">
   <!-- -------------- -->
   <div class="form">  
            <h3 style="margin: 0px">FORM Karyawan Edit Inbox</h3>
         <hr>
    <form method="POST" action="" enctype="multipart/form-data">     
    <div class="row">
      <div class="col-md-9">
        <div class="form-group">
           <label for="karyawan" class="control-label">Nama Lengkap</label>
           <input type="text" name="karyawan"  class="form-control" id="karyawan" value="<?=$row['karyawan'];?>" autocomplete="off" required>
        </div>
      </div>
      <div class="col-md-3">
        <div class="form-group">
           <label for="nik" class="control-label">NIK</label>
           <input type="text" name="nik"  class="form-control" id="nik" value="<?=$row['nik'];?>" autocomplete="off">
        </div>
      </div> 
    </div>
    <div class="row">
      <div class="col-md-3">
        <div class="form-group">
           <label for="tempat" class="control-label">Tempat Lahir</label>
           <input type="text" name="tempat"  class="form-control" id="tempat" value="<?=$row['tempat'];?>" autocomplete="off">
        </div>
      </div>
      <div class="col-md-3">
        <div class="form-group">
           <label for="tanggal" class="control-label">Tanggal Lahir</label>
           <input type="date" name="tanggal" class="form-control" id="tanggal" value="<?=$row['tanggal'];?>"  autocomplete="off">
        </div>
      </div> 
      <div class="col-md-3">
        <div class="form-group">
           <label for="jk" class="control-label">Gender</label><br>
           <input type="radio" name="jk" value="Laki-laki" <?php if($row["jk"]=='Laki-laki'){echo 'checked';}?>>Laki-laki |
           <input type="radio" name="jk" value="Perempuan" <?php if($row["jk"]=='Perempuan'){echo 'checked';}?>>Perempuan
        </div>
    </div>
      <div class="col-md-3">
        <div class="form-group">
           <label for="agama" class="control-label">Agama</label>
            <select name="agama" class="form-control" id="agama">
               <option> <?=$row['agama'];?> </option>
               <?php while($ag=mysqli_fetch_assoc($agm)): ?>
                <option><?=$ag["agama"]; ?></option>
               <?php endwhile;?>
            </select>
        </div>
      </div>
    </div>
      <div class="row">
      <div class="col-md-12">
        <div class="form-group">
           <label for="ala_guru" class="control-label">Alamat</label>
           <input type="text" name="alamat"  class="form-control" id="ala_guru" value="<?=$row['alamat'];?>"  autocomplete="off"> 
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="form-group">
           <label for="tel_guru" class="control-label">No Telpon</label>
           <input type="text" name="telpon"  class="form-control" id="tel_guru" value="<?=$row['telpon'];?>" autocomplete="off">
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="email" class="control-label">e-mail</label>
           <input type="text" name="email"  class="form-control" id="email" value="<?=$row['email'];?>" autocomplete="off">
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="line" class="control-label">line</label>
           <input type="text" name="line"  class="form-control" id="line"  value="<?=$row['line'];?>" autocomplete="off">
        </div>
      </div>
      </div>
    <div class="row">    
      <div class="col-md-6">
        <div class="form-group">
           <label for="jabatan" class="control-label">Jabatan Terakhir</label>
           <input type="text" name="jabatan"  class="form-control" id="jabatan"  value="<?=$row['jabatan'];?>" autocomplete="off">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3">
        <div class="form-group">
           <label for="filefoto" class="control-label">Foto Lama : </label><img src="../img/karyawan/<?=$row["foto"]; ?>" width = "50px">
           <input type="file" name="filefoto" value="" class="form-control" id="filefoto">
            <input type="hidden" name="fotolama" value="<?=$row["foto"]; ?>">
        </div>
      </div>
    </div>
<hr>
<div class="form-group">
        <label for="ket" class="control-label">Catatan</label>
      <textarea class="ckeditor" name="catatan" id="ket" class="form-control" ><?=$row["catatan"]; ?></textarea>
    </div>
 <hr>  
    <input type="submit" name="submit" class="btn btn-outline-dark" value="Ubah"/>
    <a href="karyawan_i_db.php" class="btn btn-outline-dark">Cancel</a>
    </form>
  </div>
     </div>
   </div>
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