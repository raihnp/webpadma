<?php
session_start();
if( !isset($_SESSION["login"])){
  if($_SESSION["level"]!='6'){
      header("Location: ../login.php");
    }}
$id_guru = $_SESSION["id_guru"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = 'TOP Admin';
$foto = $rowx["foto"];

$halamanAktif = isset($_GET["halaman"])?($_GET["halaman"]) : $halaman=1;
$halaman = 100;
$mulai = ($halamanAktif - 1) * $halaman;
$no = $mulai + 1;
if(isset($_POST["search"])) {
      $keyword =$_POST["keyword"];
      $sql = mysqli_query($conn, "SELECT * FROM masuk WHERE kepada1 like '$guru' OR kepada2 LIKE '$guru' OR kepada3 LIKE '$guru' OR tanggal LIKE '%$keyword%' OR  des LIKE '%$keyword%' ORDER BY id_masuk DESC");
      $sql2 = mysqli_num_rows($sql);
      $sq= mysqli_query($conn, "SELECT * FROM masuk");
      $sql3 = $sql2;
      $no = 1;
  }else{
      $sql = mysqli_query($conn, "SELECT * FROM masuk WHERE kepada1 like '$guru' OR kepada2 LIKE '$guru' OR kepada3 LIKE '$guru' ORDER BY id_masuk DESC LIMIT $mulai,$halaman"); 
      $sql2 = mysqli_num_rows($sql);
      $sq= mysqli_query($conn, "SELECT * FROM masuk ");
      $sql3 = mysqli_num_rows($sq);   
    }
    $akhir = ceil($sql3/$halaman);

$query = "UPDATE guru SET masuk = 'outline-primary' WHERE id_guru = '$id_guru'";
mysqli_query($conn, $query);
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
               <li><a href="kalender.php">Akademik</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10">
    <!-- ------------ --><div class="form p-1">
      <div class="card p-1" style="width: 100%;">
        <div class="card-header">
      <span style="font-size: 20px">Surat Masuk</span>
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
            <th>Dari</th>
            <th>Kepada</th>
            <th class="na">Doc1</th>
            <th class="na">Doc2</th>
            <th class="na">Doc3</th>
            <th class="na">Doc4</th>
          </tr>
         <?php $s=1; ?>
        <?php while($row = mysqli_fetch_assoc($sql)) : ?>
          <tr>
            <td><?= $s; ?></td>
            <td><?=$row["dari"];?><br><?=$row["no"];?><br><?=$row["des"];?></td>
            <td><?=$row["kepada1"];?><br><i><?=$row["disposisi"];?></i><br><?=$row["kepada2"];?><br><?=$row["kepada3"];?></td>
           <td class="na"><a href="doc_cetak.php?doc=<?=$row["scan1"];?>"><img src="../img/masuk/<?=$row["scan1"];?>"width ="50px"></a></td>
           <td class="na"><a href="doc_cetak.php?doc=<?=$row["scan2"];?>"><img src="../img/masuk/<?=$row["scan2"];?>"width ="50px"></a></td>
           <td class="na"><a href="doc_cetak.php?doc=<?=$row["scan3"];?>"><img src="../img/masuk/<?=$row["scan3"];?>"width ="50px"></a></td>
           <td class="text-center"><a href="info_edit.php?id=<?=$row["id_info"]; ?>">O</a> | <a href="info_delete.php?id=<?=$row["id_info"]; ?>" onclick = "return confirm('yakin ?');">X</a></td>
          </tr>
            <?php $s++; ?>
        <?php endwhile; ?>
      </table>
      <p style="margin: 0px"><i>Tampil <b><?= $sql2; ?></b> dari <b><?= $sql3; ?></b></i></p>
          <ul class="pagination">
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






