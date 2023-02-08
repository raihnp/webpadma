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
$sqlx = mysqli_query($conn, "SELECT * FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];
$j = explode(" ", $jabatan);
$kls = $j[2]." ".$j[3]." ".$j[4];

$id = $_GET["id"];
$query = mysqli_query($conn, "SELECT * FROM siswa WHERE id_siswa = '$id'");
$row = mysqli_fetch_assoc($query);
if(isset($_POST["simpan"])){
  $alumni = $_POST["alumni"] ;
  $nis = $_POST["nis"];
  $lulus = $_POST["lulus"] ;
  $jk = $_POST["jk"];
  $tempat = $_POST["tempat"];
  $tanggal = $_POST["tanggal"];
  $alamat = $_POST["alamat"];
  $agama = $_POST["agama"];
  $telpon = $_POST["telpon"];
  $email = $_POST["email"];
  $line = $_POST["line"];
  $status = 'Pasif';
  $fotolama = $row["foto"];
  unlink('../img/siswa/'.$fotolama);
  echo "<META HTTP-EQUIV=Refresh CONTENT='1; URL=siswa_db.php'>";
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
         $move = move_uploaded_file($foto_tmp, '../img/alumni/'.$filefotoBaru);
            if($move){$foto = $filefotoBaru; 
                    }else{echo 'GAGAL MENGUPLOAD foto';}
                }else{echo"<script>
                      alert('Data gagal ditambahkan ... Ukuran FOTO max 200 kb');
                      document.location.href = 'wali_kelas.php?id=$kls';</script>";}
              }else{echo"<script>
                    alert('Data gagal ditambahkan ... Ekstensi Foto yang diperbolehkan png dan jpg');
                    document.location.href = 'wali_kelas.php?id=$kls';</script>";}
                   
                $query = "INSERT INTO alumni VALUES ('', '$alumni', '$nis', '$lulus','$jk', '$tempat', '$tanggal', '$alamat', '$agama', '$telpon', '$email', '$line', '$status', '$foto')";
                mysqli_query($conn, $query);

  $id_guru =  '';
  $id_karyawan = '';
  $id_siswa = '';
  $id_alumni = mysqli_insert_id($conn);
  $id_ortu = '';
  $level = '2';
  $user = $nis;
  $pass = password_hash("$nis", PASSWORD_DEFAULT);

$query1 = "INSERT INTO pass VALUES ('', '$id_guru', '$id_karyawan', '$id_siswa', '$id_alumni', '$id_ortu', '$user', '$pass', '$level')";
  mysqli_query($conn, $query1);
 
$query2 = "DELETE FROM siswa WHERE id_siswa ='$id'";
mysqli_query($conn, $query2);

$query3 = "DELETE FROM pass WHERE id_siswa ='$id'";
mysqli_query($conn, $query3);

  if (mysqli_affected_rows($conn) > 0) {
    echo "
    <script>
    alert('data berhasil ditambah');
    document.location.href = 'wali_kelas.php?id=$kls';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Tidak ada perubahan data');
    document.location.href = 'wali_kelas.php?id=$kls';
    </script>
    ";
}
}
$agm = mysqli_query($conn, "SELECT agama FROM agama");
?>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/animasi.css">
    <link rel="stylesheet" href="../css/animate.css"> 
    <link rel="stylesheet" href="../css/cover.css">
    <title>Wali kelas</title>
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
            <h3 style="margin: 0px">FORM Alumni</h3>
            <p style="color: red"><i>Perbaiki menggunakan data dan foto terakhir</i></p>
         <hr>
    <form method="POST" action="" enctype="multipart/form-data">
    <div class="row">
      <div class="col-md-6">
        <div class="form-group">
           <label for="alumni" class="control-label">Nama Lengkap</label>
           <input type="text" name="alumni" value="<?=$row["siswa"];?>" class="form-control" id="alumni" autocomplete="off">
        </div>
      </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="nis" class="control-label">NIS</label>
           <input type="text" name="nis" value="<?=$row["nis"];?>" class="form-control" id="nis" autocomplete="off">
        </div>
      </div>
      
      <div class="col-md-2">
        <div class="form-group">
           <label for="kls" class="control-label">Lulus</label>
            <input type="date" name="lulus"  class="form-control" id="kls" required="" autocomplete="off">
        </div>
      </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="agama" class="control-label">Agama</label>
            <select name="agama" class="form-control" id="agama">
               <option><?=$row["agama"];?></option>
               <?php while($ag=mysqli_fetch_assoc($agm)): ?>
                <option><?=$ag["agama"]; ?></option>
               <?php endwhile;?>
            </select>
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-3">
        <div class="form-group">
           <label for="jk" class="control-label">Gender</label><br>
           <input type="radio" name="jk" value="Laki-laki" <?php if($row["jk"]=='Laki-laki'){echo 'checked';}?>>Laki-laki |
           <input type="radio" name="jk" value="Perempuan" <?php if($row["jk"]=='Perempuan'){echo 'checked';}?>>Perempuan
        </div>
    </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="tempat" class="control-label">Tempat Lahir</label>
           <input type="text" name="tempat" value="<?=$row["tempat"];?>" class="form-control" id="tempat" autocomplete="off">
        </div>
      </div>
      <div class="col-md-2">
        <div class="form-group">
           <label for="Tanggal" class="control-label">Tanggal Lahir</label>
           <input type="date" name="tanggal" value="<?=$row["tanggal"];?>" class="form-control" id="tanggal" >
        </div>
      </div>
      <div class="col-md-5">
        <div class="form-group">
           <label for="ala_siswa" class="control-label">Alamat</label>
           <input type="textarea" name="alamat" value="<?=$row["alamat"];?>" class="form-control" id="ala_siswa" autocomplete="off">
        </div>
      </div>
    </div>
    <div class="row">
      <div class="col-md-4">
        <div class="form-group">
           <label for="tel_siswa" class="control-label">No Telpon</label>
           <input type="text" name="telpon" value="<?=$row["telpon"];?>" class="form-control" id="tel_siswa" autocomplete="off">
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="email" class="control-label">e-mail</label>
           <input type="text" name="email" value="<?=$row["email"];?>" class="form-control" id="email" autocomplete="off">
        </div>
      </div>
      <div class="col-md-4">
        <div class="form-group">
           <label for="line" class="control-label">line</label>
           <input type="text" name="line" value="<?=$row["line"];?>" class="form-control" id="line" autocomplete="off">
        </div>
      </div> 
    </div> 
    <div class="row">
      <div class="col-md-2">
        <div class="form-group">
           <label for="filefoto" class="control-label">Foto</label>
           <input type="file" name="filefoto" value="" class="form-control" id="filefoto" required>
        </div>
      </div>
    </div>
<hr>
 <input type="submit" name="simpan" class="btn btn-outline-dark" value="Tambah"/>
<a href="wali_kelas.php?id=<?=$kls;?>" class="btn btn-outline-dark">Cancel</a>
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