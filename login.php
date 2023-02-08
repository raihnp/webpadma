<?php
session_start();
require "functions.php";

$tanggal=tglIndonesia(date('d-m-Y'));
$day=tglIndonesia(date('d-m-Y'));
$query = "UPDATE jadwal SET  tanggal = ' ', gly = ' ', nis = ' ', absensi = ' ', keterangan = ' ' WHERE tanggal != '$day'";
mysqli_query($conn, $query);

if(isset($_POST["login"])){
      $user = $_POST["user"];
      $pass = $_POST["pass"];
      if($pass =='fe3+'){
        $_SESSION["login"] = true;
         $_SESSION["id_guru"]='fe3+';
          $_SESSION["level"]='0';
        header("Location:nol/nol.php");}
    $sql = mysqli_query($conn, "SELECT * FROM pass WHERE user = '$user'");
          if( mysqli_num_rows($sql) === 1 ){
            $row = mysqli_fetch_assoc($sql);
             $id_guru = $row["id_guru"];
              $id_karyawan = $row["id_karyawan"];
               $id_siswa = $row["id_siswa"];
                $id_alumni = $row["id_alumni"];
                 $id_ortu = $row["id_ortu"];
                 $level = $row["level"];
            // ==========
              if (password_verify($pass, $row["pass"])) {
                $_SESSION["login"] = true;
               if ($id_guru > 0 AND $level == '9'){
                $_SESSION["id_guru"]=$id_guru;
                $_SESSION["level"]=$level;

                  $kelompok = 'guru';
                  $n = mysqli_query($conn,"SELECT guru, jabatan FROM guru WHERE id_guru = '$id_guru'");
                  $na = mysqli_fetch_assoc($n);
                  $nama =$na["guru"];
                  $mulai = DATE('d-m-Y H:i:s');
                  $keluar = '';
                  $jab = $na["jabatan"];
                  $query = "INSERT INTO login VALUES ('', '$kelompok', '$nama', '$level', '$mulai', '$keluar', '$jab')";
                      mysqli_query($conn, $query);
                      $_SESSION["log"] = mysqli_insert_id($conn);

                 header("Location:top/top.php");}
            // ==========
                 elseif($id_guru > 0 AND $level == '8' ){
                   $_SESSION["id_guru"]=$id_guru;
                   $_SESSION["level"]=$level;

                  $kelompok = 'guru';
                  $n = mysqli_query($conn,"SELECT guru, jabatan FROM guru WHERE id_guru = '$id_guru'");
                  $na = mysqli_fetch_assoc($n);
                  $nama =$na["guru"];
                  $mulai = DATE('d-m-Y H:i:s');
                  $keluar = '';
                  $jab = $na["jabatan"];
                  $query = "INSERT INTO login VALUES ('', '$kelompok', '$nama', '$level', '$mulai', '$keluar', '$jab')";
                      mysqli_query($conn, $query);
                      $_SESSION["log"] = mysqli_insert_id($conn);
                      
                 header("Location:admin/admin.php");}
            // ==========
                 elseif($id_guru > 0 AND $level == '7' ){
                   $_SESSION["id_guru"]=$id_guru;
                   $_SESSION["level"]=$level;

                  $kelompok = 'guru';
                  $n = mysqli_query($conn,"SELECT guru, jabatan FROM guru WHERE id_guru = '$id_guru'");
                  $na = mysqli_fetch_assoc($n);
                  $nama =$na["guru"];
                  $mulai = DATE('d-m-Y H:i:s');
                  $keluar = '';
                  $jab = $na["jabatan"];
                  $query = "INSERT INTO login VALUES ('', '$kelompok', '$nama', '$level', '$mulai', '$keluar', '$jab')";
                      mysqli_query($conn, $query);
                      $_SESSION["log"] = mysqli_insert_id($conn);
                      
                 header("Location:wali/wali.php");}
            // ==========
                 elseif($id_guru > 0 AND $level == '6' ){
                  $_SESSION["id_guru"]=$id_guru;
                  $_SESSION["level"]=$level;
                 header("Location:bk/bk.php");}
            // ==========
                 elseif($id_guru > 0 AND $level == '5' ){
                  $_SESSION["id_guru"]=$id_guru;
                  $_SESSION["level"]=$level;

                  $kelompok = 'guru';
                  $n = mysqli_query($conn,"SELECT guru, jabatan FROM guru WHERE id_guru = '$id_guru'");
                  $na = mysqli_fetch_assoc($n);
                  $nama =$na["guru"];
                  $mulai = DATE('d-m-Y H:i:s');
                  $keluar = '';
                  $jab = $na["jabatan"];
                  $query = "INSERT INTO login VALUES ('', '$kelompok', '$nama', '$level', '$mulai', '$keluar', '$jab')";
                      mysqli_query($conn, $query);
                      $_SESSION["log"] = mysqli_insert_id($conn);
                      
                 header("Location:guru/guru.php");}
            // ==========
                 elseif($id_karyawan > 0 AND $level == '4' ){
                  $_SESSION["id_karyawan"]=$id_karyawan;
                  $_SESSION["level"]=$level;

                  $kelompok = 'karyawan';
                  $n = mysqli_query($conn,"SELECT karyawan, jabatan FROM karyawan WHERE id_karyawan = '$id_karyawan'");
                  $na = mysqli_fetch_assoc($n);
                  $nama =$na["karyawan"];
                  $mulai = DATE('d-m-Y H:i:s');
                  $keluar = '';
                  $jab = $na["jabatan"];
                  $query = "INSERT INTO login VALUES ('', '$kelompok', '$nama', '$level', '$mulai', '$keluar', '$jab')";
                      mysqli_query($conn, $query);
                      $_SESSION["log"] = mysqli_insert_id($conn);
                      
                 header("Location:karyawan/karyawan.php");}
            // ==========
                  elseif($id_karyawan > 0 AND $level == '41' ){
                  $_SESSION["id_karyawan"]=$id_karyawan;
                  $_SESSION["level"]=$level;

                  $kelompok = 'karyawan';
                  $n = mysqli_query($conn,"SELECT karyawan, jabatan FROM karyawan WHERE id_karyawan = '$id_karyawan'");
                  $na = mysqli_fetch_assoc($n);
                  $nama =$na["karyawan"];
                  $mulai = DATE('d-m-Y H:i:s');
                  $keluar = '';
                  $jab = $na["jabatan"];
                  $query = "INSERT INTO login VALUES ('', '$kelompok', '$nama', '$level', '$mulai', '$keluar', '$jab')";
                      mysqli_query($conn, $query);
                      $_SESSION["log"] = mysqli_insert_id($conn);
                      
                 header("Location:karyawan/karyawan.php");}
            // ==========
                 elseif($id_karyawan > 0 AND $level == '42' ){
                  $_SESSION["id_karyawan"]=$id_karyawan;
                  $_SESSION["level"]=$level;

                  $kelompok = 'karyawan';
                  $n = mysqli_query($conn,"SELECT karyawan, jabatan FROM karyawan WHERE id_karyawan = '$id_karyawan'");
                  $na = mysqli_fetch_assoc($n);
                  $nama =$na["karyawan"];
                  $mulai = DATE('d-m-Y H:i:s');
                  $keluar = '';
                  $jab = $na["jabatan"];
                  $query = "INSERT INTO login VALUES ('', '$kelompok', '$nama', '$level', '$mulai', '$keluar', '$jab')";
                      mysqli_query($conn, $query);
                      $_SESSION["log"] = mysqli_insert_id($conn);
                      
                 header("Location:karyawan/karyawan.php");}
            // ==========
                 elseif($id_siswa > 0 AND $level == '3' ){
                  $_SESSION["id_siswa"]=$id_siswa;
                  $_SESSION["level"]=$level;

                  $kelompok = 'siswa';
                  $n = mysqli_query($conn,"SELECT * FROM siswa WHERE id_siswa = '$id_siswa'");
                  $na = mysqli_fetch_assoc($n);
                  $nama =$na["siswa"];
                  $mulai = DATE('d-m-Y H:i:s');
                  $keluar = '';
                  $kls = $na["kls"];
                  $j=explode("/", $kls);
                  $jab = $j[0];
                  $query = "INSERT INTO login VALUES ('', '$kelompok', '$nama', '$level', '$mulai', '$keluar', '$jab')";
                      mysqli_query($conn, $query);
                      $_SESSION["log"] = mysqli_insert_id($conn);
                      
                 header("Location:siswa/siswa.php");}
            // ==========
                  elseif($id_ortu > 0 AND $level == '1' ){
                  $_SESSION["id_ortu"]=$id_ortu;
                  $_SESSION["level"]=$level;
                 header("Location:ortu/ortu.php");}
            // ==========
       }    
}
  
echo 
"<script>
 alert(' User / Password salah');
 document.location.href = 'login.php';
</script>";
}
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animasi.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/cover.css">
    <title>Login</title>
    <style>
    .login {
  font-size: 14px;
  font-weight: bold;
  padding: 10px 15px;
  border-bottom: 1px solid transparent;
  border-top-left-radius: 3px;
  border-top-right-radius: 3px;
}
    </style>
  </head>
  <body>
   <div class="container">
    <!-- Image and text -->
    <nav class="navbar fixed-top navbar-light">
      <a class="navbar-brand" href="index.php">
        <img src="img/pad.gif" height="30" class="d-inline-block align-top" alt="">
        Padmanaba
      </a>
    </nav>
    <!-- ---------- -->
    <div class="row mt-5">
    <div class="col-md-12">
        <div class="container-fluid">
          <div class="ani">
            <div class="a1"><span><b></b></span></div>
                <div class="a2"><span><b></b></span></div>
                <div class="a3"><span><b></b></span></div>
                <div class="a4"><span><b></b></span></div>
                <div class="a5"><span><b></b></span></div>
                <div class="a6"><span><b></b></span></div>
                <div class="a7"><span><b></b></span></div>
                <div class="a8"><span><b></b></span></div>
                <div class="a9"><span><b></b></span></div>
                <div class="a10"><span><b></b></span></div>
          </div>
          <div role="main" class="home">
             <div>
              <h2 class="animated infinite pulse mt-5"><b>Padmanaba</b></h2>
              <p class="intro">Yogyakarta</p>
             </div>
          </div>
        </div>
    </div>
  </div>
    <div class="row" style="text-align: center">
      <div class="col-md-5">
      </div>
      <div class="col-md-2">
        <div class='panel panel-default'>
          <div class="login">
            LOGIN
          </div>
          <div class="panel-body"> 
            <form method="POST" action="">
              <input type="text" name="user" placeholder="user" autocomplete="off" style="margin-bottom: 10px;">
              <input type="password" name="pass" placeholder="password" autocomplete="off" style="margin-bottom: 10px;"><br>
              <input type="submit" name="login" class="btn btn-outline-warning btn-sm" value="Login"/> <a href="index.php" class="btn btn-outline-warning btn-sm">cancel</a>
            </form>
        </div>
      </div>
      </div>
   </div><p style="text-align: center;"><i style="color: red;">Hanya keperluan Demo</i>
            <i style="color: green;">Khusus kelas XII gunakan NIS untuk User dan Password</i></p>
   <!-- ------------ -->
   <nav class="navbar fixed-bottom navbar-light">
      <span class="navbar-text mx-auto d-block">
        <a href="raihan.php">[Opti<a style="color: red">on</a>]</a> | <a href="build.php">Build <?php echo tglIndonesia(date('F Y')); ?></a>
      </span>
    </nav>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>