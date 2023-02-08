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

$sql=mysqli_query($conn,"SELECT * FROM bank WHERE guru = '$gurux'");

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
      <span style="font-size: 20px">Database Soal</span>
        <span class="hidden float-right"><a href="soal_add.php" class="btn btn-outline-info btn-sm"><img src="../img/add.png"></a></span>
        <span class="hidden float-right"><a href="siswa_db_cetak.php" class="btn btn-outline-info btn-sm na"><img src="../img/print.png"></a></span>
      </div>
      <table class="table table-hover">
          <tr style="line-height: 5px">
            <th>No</th>
            <th>Soal</th>
            <th class="text-center na"><img src="../img/setting.png"></th>
         </tr>
        <?php 
        $s='1';
        while($row = mysqli_fetch_assoc($sql)) : ?>
          <tr>
            <td><?=$s;?></td>
            <td><?=$row["soal"];?>
                <table style="line-height: 0px">
                  <tr>
                      <td>a</td>
                      <td> | </td>
                      <td><?=$row["a"];?></td>
                  </tr>
                  <tr>
                      <td>b</td>
                      <td> | </td>
                      <td><?=$row["b"];?></td>
                  </tr>
                  <tr>
                      <td>c</td>
                      <td> | </td>
                      <td><?=$row["c"];?></td>
                  </tr>
                  <tr>
                      <td>d</td>
                      <td> | </td>
                      <td><?=$row["d"];?></td>
                  </tr>
                  <tr>
                      <td>e</td>
                      <td> | </td>
                      <td><?=$row["e"];?></td>
                  </tr>
                </table>
                <table style="line-height: 0px">
                  <tr>
                    <td>Jawaban</td>
                    <td> | </td>
                    <td><?=$row["jawaban"];?></td>
                  </tr>
                  <tr>
                    <td>Pembahasan</td>
                    <td> | </td>
                    <td><?=$row["pembahasan"];?></td>
                  </tr>
                </table>
            </td>
            <td class="text-center na"><a href="soal_edit.php?id=<?=$row["id_bank"]; ?>">O</a> | <a href="soal_delete.php?id=<?=$row["id_bank"]; ?>" onclick = "return confirm('yakin ?');">X</a></td>
          </tr>
        <?php 
        $s++;
        endwhile; ?>
      </tr>   
        </table> 
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