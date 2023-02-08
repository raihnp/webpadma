<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=1){
  header("Location: ../login.php");
  exit;
}
$id_ortu = $_SESSION["id_ortu"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM ortu WHERE id_ortu = '$id_ortu'");
$rowx = mysqli_fetch_assoc($sqlx);
$ortu = $rowx["ortu"];
$nis = $rowx["nis"];
$foto = $rowx["foto"];
$sqlz = mysqli_query($conn,"SELECT * FROM siswa WHERE nis = '$nis'");
$sqz = mysqli_fetch_assoc($sqlz);
$kls = $sqz["kls"];
$kl = explode("/", $kls);
$k = $kl[0];
$siswa=$sqz["siswa"];

$chat = mysqli_query($conn, "SELECT * FROM chat WHERE kls = '$k' GROUP BY dari");

// $dari = $jabatan;
// $untuk = $guru;
// $chat = $k;
$done = 'ok';
$time=tglIndonesia(date('d-m-Y h:i:s'));
if(isset($_POST["submit"])){
  $news = $_POST["news"];
     $query = "INSERT INTO chat VALUES ('', '$news', '$dari', '$untuk', '$done', '$time')";
     mysqli_query($conn, $query);
     if (mysqli_affected_rows($conn) > 0) {
          echo "
          <script>
          alert('chat berhasil dikirim');
          document.location.href = 'chat.php';
          </script>
          ";
        } else {
          echo"
          <script>
          alert('chat gagal dikirim');
          document.location.href = 'chat.php';
          </script>
          ";
        }
}
// $query = "UPDATE guru SET chat = 'outline-success' WHERE id_guru = '$id_guru'";
// mysqli_query($conn, $query);
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <script type="text/javascript" src="ckeditor/ckeditor.js"></script>
    <link rel="stylesheet" href="../css/animasi.css">
    <link rel="stylesheet" href="../css/animate.css"> 
    <link rel="stylesheet" href="../css/cover.css"> 
    <link rel="stylesheet" href="../css/cover1.css">
    <title>Ortu</title>
  </head>
  <body>
   <div class="container">
    <!-- Image and text -->
    <nav class="navbar fixed-top navbar-light">
      <a class="navbar-brand" href="#">
        <img src="../img/pad.gif" height="30" class="d-inline-block align-top" alt="">        Padmanaba
      </a>
    </nav>
    <div class="row mt-4">
    <div class="col-md-2">
      <div class="container">
      <div align="center" style="margin-top: 30px;">
      <a href="../logout.php"><img src="../img/ortu/<?= $foto; ?>" width="100" class="mx-auto d-block"></a>
      <SCRIPT language=JavaScript>var d = new Date();
                var h = d.getHours();
                if (h < 10) { document.write('Selamat pagi,'); }
                else { if (h < 15) { document.write('Selamat siang,'); }
                else { if (h < 19) { document.write('Selamat sore,'); }
                else { if (h <= 23) { document.write('Selamat malam,'); }
                }}}
      </SCRIPT>
        <p style="text-align: center; margin: 0px"><b><?= $ortu; ?></b></p>
    </div>
        <div class="menu-kiri">
          <div class="card mt-2" style="width: 100%;">
            <div class="card-header text-center">
             Orang Tua/ Wali
            </div>
              <ul>
               <li><a href="ortu.php">Home</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
    <div class="form p-1">
      <div class="card p-1" style="width: 100%;">
        <div class="card-header">
          <span style="font-size: 20px"><b>Chat terbatas</b></span>
          </div>
 <table class="table table-hover">
        <tr>
          <th>No</th>
          <th>Tujuan</th>
        </tr>
        <tr>
          <td>1</td>
          <td><a href="chat_g.php"> Group</a></td>
        </tr>
        <tr>
          <td>2</td>
          <td><a href="chat_o.php">Wali Kelas</a></td>
        </tr>
        <tr>
          <td>3</td>
          <td><a href="in_dev.php">Bp</a></td>
        </tr>
      </table>
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