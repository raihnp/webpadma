<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=0){
  header("Location: ../login.php");
  exit;
}
require '../functions.php';
if(isset($_POST["submit"])){
  $guru = $_POST["guru"];
  $code = "";
  $nip = "";
  $nuptk = "";
  $agama = "";
  $jk = "";
  $tempat = "";
  $tanggal = "";
  $alamat = "";
  $telpon = "";
  $email = "";
  $line = "";
  $jabatan = "";
  $catatan = "";
  $pelajaran = "";
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
           $move = move_uploaded_file($foto_tmp, '../img/guru/'.$filefotoBaru);
              if($move){$foto = $filefotoBaru; 
              }else{echo 'GAGAL MENGUPLOAD foto';}
          }else{echo"<script>
                alert('Data gagal ditambahkan ... Ukuran FOTO max 200 kb');
                document.location.href = 'guru_db.php';</script>";}
        }else{echo"<script>
              alert('Data gagal ditambahkan ... Ekstensi Foto yang diperbolehkan png dan jpg');
              document.location.href = 'guru_db.php';</script>";}
  $status = "Aktif";
  $kal = " ";
  $info = " ";
  $abs = " ";
  $nilai = " ";
  $ujian = " ";
  $tugas = " ";
  $switch = "on";
        $query = "INSERT INTO guru VALUES ('', '$guru', '$code', '$nip', '$nuptk', '$agama', '$jk', '$tempat', '$tanggal', '$alamat', '$telpon', '$email', '$line', '$jabatan', '$pelajaran', '$foto', '$status', '$kal', '$info', '$abs', '$nilai', '$ujian', '$tugas', '$switch', '$catatan')";
        mysqli_query($conn, $query);
  $id_guru =  mysqli_insert_id($conn);
  $cod = 'g'.$id_guru;
  $query1 = "UPDATE guru SET code = '$cod' WHERE id_guru = '$id_guru'";
  mysqli_query($conn, $query1);
  $id_karyawan = '';
  $id_siswa = '';
  $id_alumni = '';
  $id_ortu = '';
  $level = '9';
  $user = $cod;
  $pass = password_hash($cod, PASSWORD_DEFAULT);
  $query = "INSERT INTO pass VALUES ('', '$id_guru', '$id_karyawan', '$id_siswa', '$id_alumni', '$id_ortu', '$user', '$pass', '$level')";
  mysqli_query($conn, $query);
  if (mysqli_affected_rows($conn) > 0) {
    echo "<script>alert('Data berhasil ditambah');
    document.location.href = 'guru_db.php';
    </script>";} 
  else {
    echo"<script>alert('Data gagal ditambahkan');
    document.location.href = 'guru_db.php';
    </script>";}
  }
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="../css/animasi.css">
    <link rel="stylesheet" href="../css/animate.css"> 
    <link rel="stylesheet" href="../css/cover.css"> 
    <link rel="stylesheet" href="../css/cover1.css">
    <link href="https://fonts.googleapis.com/css?family=Petit+Formal+Script" rel="stylesheet">
    <title>Admin</title>
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
      <SCRIPT language=JavaScript>var d = new Date();
                var h = d.getHours();
                if (h < 10) { document.write('Selamat pagi,'); }
                else { if (h < 15) { document.write('Selamat siang,'); }
                else { if (h < 19) { document.write('Selamat sore,'); }
                else { if (h <= 23) { document.write('Selamat malam,'); }
                }}}
      </SCRIPT>
        <p class="text-center"><b>XXxXX</b></p>
    </div>
        <div class="menu-kiri">
          <div class="card mt-2" style="width: 100%;">
            <div class="card-header text-center">
             Administrator
            </div>
              <ul>
               <li><a href="nol.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-4 mb-5">
    <!-- ------------ -->
<div class="form">  
            <h3 style="margin: 0px">FORM Guru</h3>
         <hr>
    <form method="POST" action="" enctype="multipart/form-data">     
    <div class="row">
      <div class="col-md-7">
        <div class="form-group">
           <label for="guru" class="control-label">Nama Lengkap</label>
           <input type="text" name="guru"  class="form-control" id="guru" autocomplete="off" required>
        </div>
      </div>
      </div> 
    <div class="row">
      <div class="col-md-3">
        <div class="form-group">
           <label for="filefoto" class="control-label">Foto</label>
           <input type="file" name="filefoto"  class="form-control" id="filefoto" required>
        </div>
      </div>
    </div>
<hr> 
    <input type="submit" name="submit" class="btn btn-outline-dark" value="Tambah"/>
    <a href="guru_db.php" class="btn btn-outline-dark">Cancel</a>
    </form>
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