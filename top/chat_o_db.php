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
$gurux = $rowx["guru"];
$jabatanx = $rowx["jabatan"];
$fotox = $rowx["foto"];
$statusx = $rowx["status"];
if( $statusx !=='Aktif'){
  echo"<script>
       alert('OPSSS....Hubungi Pengembang Anda');
       document.location.href = '../login.php';
       </script>";}

$k = $_GET["k"];
    $sql = mysqli_query($conn, "SELECT * FROM ortu WHERE kls LIKE '$k%' ORDER BY nis asc");
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
    <title>Wali Kelas</title>
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
                <li><a href="wali.php">Home</a></li>
              </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="col-md-10">
   <!-- -------------- -->
    <div class="form p-1">
      <div class="card p-1" style="width: 100%;">
        <div class="card-header">
      <span style="font-size: 20px">Database Orang Tua/ Wali Kelas <?=$k;?></span>
      </div>
       <table class="table table-hover">
          <tr>
            <th>No</th>
            <th>Foto</th>
            <th>Nama</th>
            <th class="na">Alamat</th>
            <th class="na"></th>
          </tr>
          <?php $s='1';?>
          <?php while($row=mysqli_fetch_assoc($sql)):?>
          <tr>
            <td><?=$s;?></td>
            <td class="d-inline-block align-top" style="text-align: center;"><img src="../img/ortu/<?=$row["foto"];?>"width ="50px"</td>
            <td><span><?=$row["ortu"];?></span>
              <i><?php
              $nis=$row["nis"];
              $yo = mysqli_query($conn,"SELECT * FROM siswa WHERE nis ='$nis'");
              $i = mysqli_fetch_assoc($yo);
              $siswa=$i["siswa"];?>
              <p style="font-size: 12px; "><?=$siswa;?></p><i><a href="chat.php?d=<?=$row["ortu"];?>&id=''&nama=<?=$siswa;?>&k=<?=$k;?>">Chat</a></i></td>
            <td class="na"><i>hidden</i></td>
            <td class="na">
              <table class="table-sm" style="line-height: 0.5em;">
                    <tr>
                      <td>Telpon</td>
                      <td>:</td>
                      <td><i>hidden</i></td>
                    </tr>
                    <tr>
                      <td>email</td>
                      <td>:</td>
                      <td><i>hidden</i></td>
                    </tr>
                    <tr>
                      <td>Line</td>
                      <td>:</td>
                      <td><i>hidden</i></td>
                    </tr>
                  </table>
                  </td>
          </tr>
        <?php $s++;?>
         <?php endwhile; ?>
      </table>
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