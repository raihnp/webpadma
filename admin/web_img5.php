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
$sqlx = mysqli_query($conn, "SELECT id_guru, guru, jabatan, status, foto FROM guru WHERE id_guru = '$id_guru'");
$rowx = mysqli_fetch_assoc($sqlx);
$guru = $rowx["guru"];
$jabatan = $rowx["jabatan"];
$foto = $rowx["foto"];

$query = mysqli_query($conn,"SELECT img5, vid5 FROM web");
$row = mysqli_fetch_assoc($query);

if(isset($_POST["submit"])){
  $vid5= $_POST["vid5"];
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
         $move = move_uploaded_file($foto_tmp, '../img/web/'.$filefotoBaru);
          if($move){
            if (unlink('../img/web/'.$fotolama))
            {
            echo ("Deleted ../img/web/$fotolama");
            echo "<META HTTP-EQUIV=Refresh CONTENT='1; URL=web.php'>";
            }
                $foto =$filefotoBaru;
          }else{
            echo"
              <script>
              alert(' Gagal uploud foto');
               document.location.href = 'web.php';
              </script>
              ";
              return false;
          }
        }else{
          echo"
              <script>
              alert('Gagal uploud foto ... Ukuran FOTO max 500 kb');
              document.location.href = 'web.php'; 
              </script>
              ";
               return false;
        }
      }else{
        echo"
        <script>
              alert('Gagal uploud foto ... Ekstensi Foto yang diperbolehkan png dan jpg');
                document.location.href = 'web.php';
              </script>
              ";
               return false;
      }
      } 
   $query = "UPDATE web SET img5 = '$foto', vid5 = '$vid5' WHERE id_web ='1'";
    mysqli_query($conn, $query);

  if (mysqli_affected_rows($conn) > 0){
     echo "
    <script>
     alert('Data berhasil dirubah');
    document.location.href = 'web.php';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Data berhasil dirubah');
    document.location.href = 'web.php';
    </script>
    ";
  }
}
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
    <div id="fb-root"></div>
    <script async defer crossorigin="anonymous" src="https://connect.facebook.net/id_ID/sdk.js#xfbml=1&version=v3.3"></script>
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
               <li><a href="web.php">WebProperty</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10">
    <!-- ------------ -->
    <div class="form p-1">
      <div class="card p-1" style="width: 100%;">
        <div class="card-header">
        <span style="font-size: 20px">Website</span>
        </div>

      <form method="POST" action="" enctype="multipart/form-data">
          <div class="row mt-2 pl-2">
            <div class="col-md-4">
                <img src="../img/web/<?=$row["img5"]; ?>" width = "200px"><br><i>Terpasang</i>
            </div>
            <div class="col-md-8">
              <div class="form-group">
                <i>Ganti Gambar</i>
                 <input type="file" name="filefoto" value="" class="form-control" id="filefoto">
                  <input type="hidden" name="fotolama" value="<?=$row["img5"]; ?>">
              </div>
            </div>
          </div>
        <div class="row">
          <div class="col-md-2">
              <?php 
                if(empty($row['vid5'])){;?>
                <img src="../img/nv.jpg" width="150px">
                <?php }else{
                   if(preg_match("/youtube/", $row['vid5'])) {;?>
                      <div class="embed-responsive embed-responsive-16by9">
                        <?=$row['vid5'];?>
                      </div>
                    <?php } else {echo $row['vid5'];}
                } ?>
            </div>
          <div class="col-md-8 offset-md-2">
          <div class="form-group">
            <i>Ganti Video</i>
            <div class="form-group">
              <textarea  name="vid5" id="ket" class="form-control" ><?=$row["vid5"]; ?></textarea>
            </div>
          </div>
        </div>
        </div>
      </div>
      <input type="submit" name="submit" class="btn btn-outline-dark" value="Rubah"/>
      <a href="javascript:history.back()" class="btn btn-outline-dark">Cancel</a>
    </form>
</div>
   <!-- -------------- -->
</div>
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






