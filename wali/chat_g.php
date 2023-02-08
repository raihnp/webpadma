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
$pel = $rowx["pelajaran"];
$foto = $rowx["foto"];

$kl = explode(" ", $jabatan);
$k = $kl[2]." ".$kl[3]." ".$kl[4];
$cha = mysqli_query($conn, "SELECT * FROM chat WHERE kls = '$k'AND dari LIKE '%$k' OR untuk LIKE '%$k'");
$jabatan = 'Wali Kelas'." ".$k;

$kls = $k;
$dari = $guru;
$untuk = 'Group'." ".$k;
$tanya = ' ';
$done = 'ok';
$kepada = ' ';
$jam=tglIndonesia(date('d-m-Y h:i:s'));
if(isset($_POST["submit"])){
  $jawab = $_POST["chat"];
     $query = "INSERT INTO chat VALUES ('','$tanya', '$jawab', '$dari', '$untuk', '$kepada', '$kls', '$done','$jam')";
     mysqli_query($conn, $query);
     if (mysqli_affected_rows($conn) > 0) {
          echo "
          <script>
          alert('data berhasil ditambah');
          document.location.href = 'chat_g.php';
          </script>
          ";
        } else {
          echo"
          <script>
          alert('Tidak ada perubahan data');
          document.location.href = 'chat_g.php';
          </script>
          ";
        }
echo "<meta http-equiv='refresh' content='0'>";
// $query = "UPDATE guru SET chat = 'success' WHERE id_guru = '$id_guru'";
// mysqli_query($conn, $query);       
}
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
    <title>Wali kelas</title>
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
      <div class="text-center mt-4">
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
            <div class="card-header text-center" style="font-size: 14px;">
             <?= $jabatan; ?><br><?= $pel; ?>
            </div>
              <ul>
               <li><a href="wali.php">Home</a></li>
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
          <span class="float-right" style="font-size: 16px">
            <i>Group Kelas <?=$k;?></i>
            </span>
          </div>
       <table>
        <?php while($ch=mysqli_fetch_assoc($cha)): ?>
          <?php if($ch["dari"]!=$guru){ ?>
            <p style="font-size: 10px; margin-bottom: -5px;"><i><?=$ch["dari"];?></i></p>
            <span><b><?=$ch["jawab"];?></b></span>
            <p style="font-size: 10px; margin-top: -5px"><i><?=$ch["jam"];?></i></p>
          <?php } else {;?>
            <p style="font-size: 10px; margin-bottom: -5px; text-align: right;"><i><?=$ch["dari"];?></i></p>
            <span style="text-align: right;"><b><?=$ch["jawab"];?></b></span>
            <p style="font-size: 10px; margin-top: -5px; text-align: right;"><i><?=$ch["jam"];?></i></p>
        <?php }; endwhile; ?>
        
    <form action="" method="POST">
      <input type="text" name="chat">
    </div>
      </table>
    </div>
      <input type="submit" name="submit" class="btn btn-outline-dark" value="Tambah"/>
      <a href="chat_db.php" class="btn btn-outline-dark">Cancel</a>
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