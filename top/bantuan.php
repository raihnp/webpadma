<?php
session_start();
if( !isset($_SESSION["login"])){
  if($_SESSION["level"]!='9'){
      header("Location: ../login.php");
    }}
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = 'TOP Admin';
$foto = $rowx["foto"];
$halamanAktif = isset($_GET["halaman"])?($_GET["halaman"]) : $halaman=1;
$halaman = 10;
$mulai = ($halamanAktif - 1) * $halaman;
$no = $mulai + 1;
if(isset($_POST["search"])) {
      $keyword =$_POST["keyword"];
      $sql = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' AND code LIKE '%$keyword%' OR guru LIKE '%$keyword%' OR jabatan LIKE  '%$keyword%'OR pelajaran LIKE '%$keyword%'ORDER BY id_guru asc");
      $sql2 = mysqli_num_rows($sql);
      $sq= mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on'");
      $sql3 = mysqli_num_rows($sq);
      $no = 1;
  }else{
      $sql = mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on' ORDER BY id_guru asc LIMIT $mulai,$halaman"); 
      $sql2 = mysqli_num_rows($sql);
      $sq= mysqli_query($conn, "SELECT * FROM guru WHERE switch = 'on'");
      $sql3 = mysqli_num_rows($sq);   
    }
    $akhir = ceil($sql3/$halaman);
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
    <link rel="stylesheet" href="../css/cover1.css">
    <title>Top</title>
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
               <li><a href="top.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
    <div class="col-md-10 mt-3">
    <!-- ------------ -->
      <div class="card" style="width: 100%;">
        <div class="card-header">
         <span style="font-size: 20px">Database Guru</span>
        </div>
        <form action="" method="POST">
                  <div class="row">
                    <div class="col-xs-12 col-sm-6">       
                      <div class="input-group">
                        <input type="text" class="form-control" placeholder="Pencarian..." name="keyword" autofocus autocomplete="off">     
                        <span class="input-group-btn">
                          <button class="btn btn-primary" type="submit" name="search">SEARCH</button>
                          <a href="?halaman=<?= $i=1; ?>" class="btn btn-warning">RESET</a>
                        </span>
                      </div>
                    </div>       
                </form>    
           </div>
       <table class="table table-hover">
          <tr>
            <th>No</th>
            <th>Foto</th>
            <th>Nama</th>
            <th>Jabatan</th>
            <th>Mata Pelajaran</th>
          </tr>
          <?php $s='1';?>
          <?php while($row=mysqli_fetch_assoc($sql)): ?>
          <tr>
            <th><?=$s;?></th>
            <td class="d-inline-block align-top" style="text-align: center;"><img src="../img/guru/<?=$row["foto"];?>"width ="50px"><br><?=$row["code"];?></td>
            <td><?=$row["guru"];?></td>
            <td><?=$row["jabatan"];?></td>
            <td><?=$row["pelajaran"];?></td>
          </tr>
        <?php $s++;?>
         <?php endwhile; ?>
      </table>
      <p style="margin: 0px"><i>Tampil <b><?= $sql2; ?></b> dari <b><?= $sql3; ?></b></i></p>
                <ul style="margin-bottom: 30px;" class="pagination">
                <?php if($halamanAktif>1): ?>
                  <li><a href="?halaman=<?=$i=1; ?>">First</a></li>
                  <li><a href="?halaman=<?=$halamanAktif - 1; ?>">&laquo;</a> </li>
                <?php endif; ?>     
                <?php $jumlah_number = 2;
                $start_number = ($halamanAktif > $jumlah_number)? $halamanAktif - $jumlah_number : 1;
                $end_number = ($halamanAktif < ($akhir - $jumlah_number))? $halamanAktif + $jumlah_number : $akhir; 
                ?>
                  <?php $mulai = $halamanAktif-2; ?>
                  <?php  for ($i=$start_number; $i <=$end_number  ; $i++) : ?>
                  <?php if($i == $halamanAktif): ?>
                  <li><a href="?halaman=<?= $i; ?>"style="font-weight:bold; color: red" ><?= $i; ?></a></li>
                  <?php else: ?>
                  <li><a href="?halaman=<?= $i; ?>"><?= $i; ?></a></li>
                  <?php endif; ?>
                  <?php endfor; ?>
                <?php if($halamanAktif<$akhir): ?>
                  <li><a href="?halaman=<?=$halamanAktif + 1; ?>">&raquo;</a></li>
                  <li><a href="?halaman=<?=$i=$akhir; ?>">Last</a></li>
                <?php endif; ?>     
            </ul>   
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