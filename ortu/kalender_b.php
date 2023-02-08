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
$sqlx = mysqli_query($conn, "SELECT * FROM ortu WHERE switch = 'on' AND id_ortu = '$id_ortu'");
$rowx = mysqli_fetch_assoc($sqlx);
$nis = $rowx["nis"];
$ortu = $rowx["ortu"];
$foto = $rowx["foto"];
$sqlz = mysqli_query($conn, "SELECT * FROM siswa WHERE switch = 'on' AND nis = '$nis'");
$rowz = mysqli_fetch_assoc($sqlz);
$id_siswa = $rowz["id_siswa"];
$siswa = $rowz["siswa"];
$kls = $rowz["kls"];
$kl = explode("/", $kls);
$k = $kl[0];
$nis = $rowz["nis"];

$day = tglIndonesia(date('D')); 
$hari = str_replace("'", "", $day);
$tanggal = tglIndonesia(date('D, d F, Y'));

$exstra = mysqli_query($conn, "SELECT * FROM exstra WHERE hari = '$hari'");

$sqly = mysqli_query($conn, "SELECT * FROM siswa WHERE switch = 'on' AND id_siswa = '$id_siswa' ");
$sqlyy = mysqli_fetch_assoc($sqly);
$j_hari = $sqlyy["j_hari"];
$hadir = $sqlyy["hadir"];
$sakit = $sqlyy["sakit"];
$ijin = $sqlyy["ijin"];
$xxx = $sqlyy["xxx"];

$siswa2 = mysqli_query($conn,"SELECT * FROM siswa WHERE switch = 'on' AND id_siswa = '$id_siswa'");
$s2 = mysqli_fetch_assoc($siswa2);

$eks = mysqli_query($conn,"SELECT * FROM pilihan WHERE nis = '$nis'");
$ek = mysqli_fetch_assoc($eks);
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
    <link rel="stylesheet" href="../css/eventCalendar.css">
    <link rel="stylesheet" href="../css/Calendar_theme_responsive.css">
    <link rel="stylesheet" href="../css/cover.css">
    <link rel="stylesheet" href="../css/cover1.css">
    <title>Ortu</title>
  </head>
  <body>
   <div class="container-liquit">
    <!-- Image and text -->
    <nav class="navbar fixed-top navbar-light">
      <a class="navbar-brand" href="#">
        <img src="../img/pad.gif" height="30" class="d-inline-block align-top" alt="">        Padmanaba
      </a>
    </nav>
    <div class="row mt-5 mb-4">
    <div class="col-md-2 mb-4">
      <div class="container">
      <div align="center">
      <a href="../logout.php"><img src="../img/ortu/<?= $foto; ?>" width="100" class="mx-auto d-block"></a>
      <SCRIPT language=JavaScript>var d = new Date();
                var h = d.getHours();
                if (h < 10) { document.write('Selamat pagi,'); }
                else { if (h < 15) { document.write('Selamat siang,'); }
                else { if (h < 19) { document.write('Selamat sore,'); }
                else { if (h <= 23) { document.write('Selamat malam,'); }
                }}}
      </SCRIPT>
        <p style="text-align: center; margin: 0px"><b><?= $siswa; ?></b></p>
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
<div class="col-md-10 mb-4">
    <!-- ------------ -->
    <div class="container">  
      <p style="font-size: 20px"><b>Kalender Padmanaba</b></p><br>
            <div id="eventCalendarHumanDate"></div>
      <p><a class="btn btn-<?=$s2["ujian"]; ?> btn-sm" href="ujian.php" role="button">UjianDb</a>  <a class="btn btn-<?=$s2["tugas"]; ?> btn-sm" href="tugas.php" role="button">TugasDb</a>  <a class="btn btn-<?=$s2["nilai"]; ?> btn-sm" href="nilai.php" role="button">NilaiDb</a>  <a class="btn btn-<?=$s2["info"]; ?> btn-sm" href="doc_k_db.php" role="button">InfoDb</a> <a class="btn btn-<?=$s2["kal"]; ?> btn-sm" href="kalender_db.php" role="button">KalenderDb</a> <a class="btn btn-<?=$s2["tu"]; ?> btn-sm" href="tu_db.php" role="button">TuDb</a> <a class="btn btn-<?=$s2["perpus"]; ?> btn-sm" href="perpus_db.php" role="button">PerpusDb</a> <a class="btn btn-<?=$s2["perpus"]; ?> btn-sm" href="chat.php" role="button">Chat</a></p>

      <span style="color: red;">Jumlah Hari Pembelajaran = <b><?= $j_hari; ?></b> | Hadir = <b><?php if($j_hari!=='0'){$h=number_format(($hadir/$j_hari)*'100','1'); echo "$h"."%";}else{echo "0"."%";}?></b> | Ijin = <b><?php if($j_hari!=='0'){$i=number_format(($ijin/$j_hari)*'100','1'); echo "$i"."%";}else{echo "0"."%";}?></b> | Sakit = <b><?php if($j_hari!=='0'){$s=number_format(($sakit/$j_hari)*'100','1'); echo "$s"."%";}else{echo "0"."%";}?></b> | XXX = <b><?php if($j_hari!=='0'){$xxx=number_format(($xxx/$j_hari)*'100','1'); echo "$xxx"."%";}else{echo "0"."%";}?></b></span>

      <?php
$sql =  mysqli_query($conn, "SELECT * FROM jadwal Where kls = '$k' AND hari = '$hari' ORDER BY jam ASC");
?>
<br>
  <p class="mt-3" style="font-size: 20px"><b><a href="jadwal_kelas.php?id=<?=$k;?>">Jadwal Pelajaran</a>mu hari ini</b></p>
  <p style="font-size: 15px; margin: 0px"><i><?= $tanggal ?></i></p>
  <table class="table table-hover">
    <tr>
      <th><i>T</i></th>
      <th>Jam</th>
      <th>Pelajaran</th>
      <th class="na">Absensi</th>
      <th class="na">Keterangan</th>
    </tr>
    <?php while($row = mysqli_fetch_assoc($sql)) : ?>
    <tr>
      <td><?=$row["periode"]; ?></td>
      <td><?=$row["jam"]; ?></td>
      <td><?=$row["pelajaran"]; ?><br><i><?=$row["guru1"]; ?><br><?=$row["guru2"]; ?><br><?=$row["guru3"]; ?><br><?=$row["guru4"]; ?></i></td>
      <td class="na">
        <?php
        if($row["gly"]!=='done'){
          }else{   
                $nis1 = explode(",", $row["nis"]);
                $abs = explode(",", $row["absensi"]);
                $data = array_combine($nis1, $abs);
                echo $data[$nis];
                $y[]=$data[$nis];}

        ?>
      </td>
      <td class="na">
        <?php
        if($row["gly"]!=='done'){
          }else{   
                $nis1 = explode(",", $row["nis"]);
                $ket = explode(",", $row["keterangan"]);
                $data = array_combine($nis1, $ket);
                echo $data[$nis];}
        ?>
      </td>
    </tr>
  <?php endwhile; ?>
  </table>
<?php 
$ya = array_count_values($y);
arsort($ya);
$keys   = array_keys($ya);?>
<p>Hadir = <?php 
  if(in_array("Hadir", $y)){ $h = ((($ya['Hadir']) / count($y))*'100'); print_r(number_format($h,1));
  }else{echo "0"; $h = '0%';}
  ?>% |
  Ijin = <?php
  if(in_array("Ijin", $y)){ $i = ((($ya['Ijin']) / count($y))*'100'); print_r(number_format($i,1));
  }else{echo "0"; $i = '0%';}
  ?>% | 
  Sakit = <?php 
   if(in_array("Sakit", $y)){ $s = ((($ya['Sakit']) / count($y))*'100'); print_r(number_format($s,1));
  }else{echo "0"; $s = '0%';} 
  ?>% |
  XXX = <?php 
  if(in_array("XXX", $y)){ $xxx = ((($ya['XXX']) / count($y))*'100'); print_r(number_format($xxx,1));
  }else{echo "0"; $xxx = '0%';}
  ?>% &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;[ <span style="color: yellow;"><b><?php echo "$keys[0]";?></b></span> ]</p>


  <?php
$piket =  mysqli_query($conn, "SELECT * FROM piket Where hari = '$hari'");
$pik = mysqli_fetch_assoc($piket);
?>
<hr style="border-color: black">
<p style="font-size: 20px; margin: 0px"><b> Guru Piket</b> hari ini</p> <?= $tanggal ?> <br><?=$pik["guru1"]; ?> | <?=$pik["guru2"]; ?> | <?=$pik["guru3"]; ?> | <?=$pik["guru4"]; ?> | <?=$pik["guru5"]; ?> | <?=$pik["guru6"]; ?>
<hr style="border-color: black">

<a href="exstra.php">Ekstra Kurikuler</a> yang <i><?= $siswa; ?> </i>ikuti :
<i><?= $ek["pilih"];?></i>
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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="../js/jquery.eventCalendar.min.js" type="text/javascript"></script>
        <script>
            $(document).ready(function() {
                $("#eventCalendarHumanDate").eventCalendar({
                    eventsjson: 'json.php',
                    showDescription: 'true',
                    jsonDateFormat: 'human'  // 'YYYY-MM-DD HH:MM:SS'
                });
            });
        </script>
  </body>
</html>