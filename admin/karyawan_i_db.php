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
$halamanAktif = isset($_GET["halaman"])?($_GET["halaman"]) : $halaman=1;
$halaman = 100;
$mulai = ($halamanAktif - 1) * $halaman;
$no = $mulai + 1;
if(isset($_POST["search"])) {
      $keyword =$_POST["keyword"];
      $sql = mysqli_query($conn, "SELECT * FROM karyawan WHERE switch ='off' AND code LIKE '%$keyword%' OR karyawan LIKE '%$keyword%' OR jabatan LIKE  '%$keyword%' ORDER BY code asc");
      $sql2 = mysqli_num_rows($sql);
      $sq= mysqli_query($conn, "SELECT * FROM karyawan WHERE switch ='off'");
      $sql3 = mysqli_num_rows($sq);
      $no = 1;
  }else{
      $sql = mysqli_query($conn, "SELECT * FROM karyawan WHERE switch ='off' ORDER BY code asc LIMIT $mulai,$halaman"); 
      $sql2 = mysqli_num_rows($sql);
      $sq= mysqli_query($conn, "SELECT * FROM karyawan WHERE switch ='off'");
      $sql3 = mysqli_num_rows($sq);   
    }
    $akhir = ceil($sql3/$halaman);
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons"
      rel="stylesheet">
    <link rel="stylesheet" href="../css/animasi.css">
    <link rel="stylesheet" href="../css/animate.css"> 
    <link rel="stylesheet" href="../css/cover.css">
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
      <span style="font-size: 20px">Database Karyawan Inbox [<a href="karyawan_db.php">Reset</a>]</span>
        <span class="hidden float-right"><a href="karyawan_i_db_cetak.php" class="btn btn-outline-info btn-sm"><img src="../img/print.png"></a></span>
        <span class="hidden float-right"><a href="karyawan_i_add.php" class="btn btn-outline-info btn-sm"><img src="../img/add.png"></a></span> 
      <span class="float-right">
        <form action="" method="POST">
               <div class="input-group input-group-sm">
                  <input type="text" class="form-control" placeholder="Pencarian..." name="keyword" autocomplete="off">
                    <button class="btn btn-outline-primary btn-sm" type="submit" name="search">SEARCH</button>
                    <a href="?halaman=<?= $i=1; ?>" class="btn btn-outline-warning btn-sm">RESET</a>
                </div>    
          </form>
        </span>
      </div>
       <table class="table table-hover">
          <tr>
            <th>No</th>
            <th>Foto</th>
            <th>Nama</th>
            <th class="na">Jabatan</th>
            <th class="na">Alamat</th>
            <th class="na"></th>
            <th class="text-center na"><img src="../img/setting.png"></th>
          </tr>
          <?php while($row=mysqli_fetch_assoc($sql)): ?>
          <tr>
            <th><?=$no;?></th>
            <td class="d-inline-block align-top" style="text-align: center;"><img src="../img/karyawan/<?=$row["foto"];?>"width ="50px"></td>
            <td><?=$row["karyawan"];?></td>
            <td class="na"><?=$row["jabatan"];?></td>
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
            <td class="text-center na"><a href="karyawan_i_edit.php?id=<?=$row["id_karyawan"]; ?>">O</a></td>
          </tr>
        <?php $no++;?>
         <?php endwhile; ?>
      </table>
      <p style="margin: 0px"><i>Tampil <b><?= $sql2; ?></b> dari <b><?= $sql3; ?></b></i></p>
                <ul style="margin-bottom: 30px;" class="pagination">
                <?php if($halamanAktif>1): ?>
                  <li><a href="?halaman=<?=$i=1; ?>">First</a></li>&nbsp;
                  <li><a href="?halaman=<?=$halamanAktif - 1; ?>">&laquo;</a> </li>&nbsp;
                <?php endif; ?>     
                <?php $jumlah_number = 2;
                $start_number = ($halamanAktif > $jumlah_number)? $halamanAktif - $jumlah_number : 1;
                $end_number = ($halamanAktif < ($akhir - $jumlah_number))? $halamanAktif + $jumlah_number : $akhir; 
                ?>
                  <?php $mulai = $halamanAktif-2; ?>
                  <?php  for ($i=$start_number; $i <=$end_number  ; $i++) : ?>
                  <?php if($i == $halamanAktif): ?>
                  <li><a href="?halaman=<?= $i; ?>"style="font-weight:bold; color: red" ><?= $i; ?></a></li>&nbsp;
                  <?php else: ?>
                  <li><a href="?halaman=<?= $i; ?>"><?= $i; ?></a></li>&nbsp;
                  <?php endif; ?>
                  <?php endfor; ?>
                <?php if($halamanAktif<$akhir): ?>
                  <li><a href="?halaman=<?=$halamanAktif + 1; ?>">&raquo;</a></li>&nbsp;
                  <li><a href="?halaman=<?=$i=$akhir; ?>">Last</a></li>
                <?php endif; ?>     
            </ul>
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