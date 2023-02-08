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
$pelajaran = $rowx["pelajaran"];
$foto = $rowx["foto"];
$ke = explode(" ", $jabatan);
$kls = $ke[2].' '.$ke[3].' '.$ke[4];
$pelajaran = $rowx["pelajaran"];
      if(isset($_POST['submit']) AND !empty($_POST['exstra'])){
        $tglx = $_POST['exstra'];
        $g = explode("-", $tglx);
        $tgl = $g[2]."-".$g[1]."-".$g[0];
      }else{
        $tgl = date('d-m-Y');
      }
$ts = explode("-", $tgl);
$tg = $ts[2]."-".$ts[1]."-".$ts[0];
$sis = mysqli_query($conn, "SELECT * FROM siswa WHERE kls LIKE '%$kls%' ORDER BY nis asc");
while($que = mysqli_fetch_assoc($sis)):
  $n[] = $que["nis"];
  $s[] = $que["siswa"];
endwhile;
$data = array_combine($n, $s);
$sql = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND tanggal = '$tgl'");
while($row = mysqli_fetch_assoc($sql)): 
$t[] = $row["t"];
endwhile;
$sql1 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND  t LIKE '%1%' AND tanggal = '$tgl'"); $row1 = mysqli_fetch_assoc($sql1);
$sql2 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND t LIKE '%2%' AND tanggal = '$tgl'"); $row2 = mysqli_fetch_assoc($sql2);
$sql3 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND t LIKE '%3%' AND tanggal = '$tgl'"); $row3 = mysqli_fetch_assoc($sql3);
$sql4 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND t LIKE '%4%' AND tanggal = '$tgl'"); $row4 = mysqli_fetch_assoc($sql4);
$sql5 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND t LIKE '%5%' AND tanggal = '$tgl'"); $row5 = mysqli_fetch_assoc($sql5);
$sql6 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND t LIKE '%6%' AND tanggal = '$tgl'"); $row6 = mysqli_fetch_assoc($sql6);
$sql7 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND t LIKE '%7%' AND tanggal = '$tgl'"); $row7 = mysqli_fetch_assoc($sql7);
$sql8 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND t LIKE '%8%' AND tanggal = '$tgl'"); $row8 = mysqli_fetch_assoc($sql8);
$sql9 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND t LIKE '%9%' AND tanggal = '$tgl'"); $row9 = mysqli_fetch_assoc($sql9);
$sql10 = mysqli_query($conn, "SELECT * FROM absen WHERE kelas = '$kls' AND t LIKE '%10%' AND tanggal = '$tgl'"); $row10 = mysqli_fetch_assoc($sql10);

$query3 = "UPDATE guru SET abs ='outline-success' WHERE id_guru = '$id_guru'";
mysqli_query($conn, $query3);
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
    <div class="row mt-5">
    <div class="col-md-2">
      <div class="container">
      <div class="text-center">
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
             <?= $jabatan; ?><br><?= $pelajaran; ?>
            </div>
              <ul>
               <li><a href="wali.php">Home</a></li>
               <li><a href="kalender.php">Akademik</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10">
    <!-- ------------ -->
    <div class="form">
    <div class="container">
            <h3>Absensi siswa <?=$kls; ?></h3>
            <form method="POST" action="">
              <div class="row">
                <div class="col-md-5">
                    <div class="input-group">
                      <input type="date" class="form-control" name="exstra">
                      <span class="input-group-btn">
                        <button class="btn btn-outline-dark" name="submit" type="submit">Filter</button>
                      </span>
                      <a href="absensi_dball.php" class="btn btn-outline-dark">All</a>
                    </div><!-- /input-group -->
                  </div><!-- /.col-lg-6 -->
                </div><!-- /.row -->
            </form>
            <div><p style="text-align: right; padding-right: 10px;"><i><?=$tgl; ?></i>&nbsp;&nbsp;&nbsp;<a href="absensi_cetak.php?kls=<?=$kls;?>&tgl=<?=$tgl;?>"> <span class="glyphicon glyphicon-print" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;<a href="record.php"> <span class="glyphicon glyphicon-record" aria-hidden="true"></span></a></p></div>
            <table class="table table-striped table-bordered table-list">
              <tr>
                <th>No</th>
                <th>Nama</th>
                <th>1</th>
                <th>2</th>
                <th>3</th>
                <th>4</th>
                <th>5</th>
                <th>6</th>
                <th>7</th>
                <th>8</th>
                <th>9</th>
                <th>10</th>
                <th>X</th>
              </tr>
              <tr>
                <td>
                  <?php 
                 $j = count($s);
                  for ($i= 1; $i <= $j; $i++)
                  {
                     echo "$i";
                     echo "<hr>";
                  }
                  ?>
                </td>
                 <td>
                  <?php 
                  $nis = $n;
                  foreach ($nis as $ke) {
                    echo "$data[$ke]";
                    echo "<hr>";
                  } ; ?>

                </td>
               <!--  <td>
                  <?php 
                  $nis = $n;
                  foreach ($nis as $ke) {
                    echo "$data[$ke]";
                    echo "<hr>";
                  } ;?>
                </td> -->
                <td>
                  <?php 
                   $absensi1 = explode(",", $row1["absensi"]);
                  if(!empty($row1["t"])){$dat1 = array_combine($nis, $absensi1);}else {$dat1=empty($dat1);}
                  foreach ($absensi1 as $abs1) {
                    echo "$abs1";
                    echo "<hr>";
                  } 
                  ;?>
                </td>
                 <td>
                   <?php 
                  $absensi2 = explode(",", $row2["absensi"]);
                  if(!empty($row2["t"])){$dat2 = array_combine($nis, $absensi2);}else {$dat2=empty($dat2);}
                  foreach ($absensi2 as $abs2) {
                    echo "$abs2";
                    echo "<hr>";
                  } ;?>
                 </td>
                 <td>
                   <?php 
                  $absensi3 = explode(",", $row3["absensi"]);
                  if(!empty($row3["t"])){$dat3 = array_combine($nis, $absensi3);}else {$dat3=empty($dat3);}
                  foreach ($absensi3 as $abs3) {
                    echo "$abs3";
                    echo "<hr>";
                  } ;?>
                 </td>
                 <td>
                   <?php
                    
                 $absensi4 = explode(",", $row4["absensi"]);
                  if(!empty($row4["t"])){$dat4 = array_combine($nis, $absensi4);}else {$dat4=empty($dat4);}
                  foreach ($absensi4 as $abs4) {
                    echo "$abs4";
                    echo "<hr>";
                  } ;?>
                 </td>
                 <td>
                  <?php 
                  $absensi5 = explode(",", $row5["absensi"]);
                  if(!empty($row5["t"])){$dat5 = array_combine($nis, $absensi5);}else {$dat5=empty($dat5);}
                  foreach ($absensi5 as $abs5) {
                    echo "$abs5";
                    echo "<hr>";
                  } 
                  ;?>
                 </td>
                 <td>
                   <?php 
                  $absensi6 = explode(",", $row6["absensi"]);
                  if(!empty($row6["t"])){$dat6 = array_combine($nis, $absensi6);}else {$dat6=empty($dat6);}
                  foreach ($absensi6 as $abs6) {
                    echo "$abs6";
                    echo "<hr>";
                  } ;?>
                 </td>
                 <td>
                    <?php
                  $absensi7 = explode(",", $row7["absensi"]);
                  if(!empty($row7["t"])){$dat7 = array_combine($nis, $absensi7);}else {$dat7=empty($dat7);}
                  foreach ($absensi7 as $abs7) {
                    echo "$abs7";
                    echo "<hr>";
                  } ;?>
                 </td>
                 <td>
                   <?php 
                  $absensi8 = explode(",", $row8["absensi"]);
                  if(!empty($row8["t"])){$dat8 = array_combine($nis, $absensi8);}else {$dat8=empty($dat8);}
                  foreach ($absensi8 as $abs8) {
                    echo "$abs8";
                    echo "<hr>";
                  } ;?>
                 </td>
                 <td>
                   <?php 
                  $absensi9 = explode(",", $row9["absensi"]);
                  if(!empty($row9["t"])){$dat9 = array_combine($nis, $absensi9);}else {$dat9=empty($dat9);}
                  foreach ($absensi9 as $abs9) {
                    echo "$abs9";
                    echo "<hr>";
                  } ;?>
                 </td>
                <td>
                  <?php 
                  $absensi10 = explode(",", $row10["absensi"]);
                  if(!empty($row10["t"])){$dat10 = array_combine($nis, $absensi10);}else {$dat10=empty($dat10);}
                  foreach ($absensi10 as $abs10) {
                    echo "$abs10";
                    echo "<hr>";
                  } ;?>
                </td>
                <td>
                 <?php
                  $cob = mysqli_query($conn, "SELECT * FROM siswa WHERE kls LIKE '%$kls%' ORDER BY nis asc");?>
                  <?php if(!empty($t)){
                    while($sik = mysqli_fetch_assoc($cob)){;
                    $arr[] = array_count_values(array_filter([$dat1[$sik["nis"]],$dat2[$sik["nis"]],$dat3[$sik["nis"]],$dat4[$sik["nis"]],$dat5[$sik["nis"]],$dat6[$sik["nis"]],$dat7[$sik["nis"]],$dat8[$sik["nis"]],$dat9[$sik["nis"]],$dat10[$sik["nis"]]]));}
                    }else{$arr[] = [];}?>
                  <?php
                  foreach ($arr as $key ) {
                    arsort($key);
                    $keys   = array_keys($key);
                    if (!empty($key)){ echo "$keys[0]";$wa[]=$keys[0];}else{
                     $wa[]='';}
                    echo "<hr>";
                  }?>
                </td>
                <?php 
                  $ws = array_count_values($wa);
                  arsort($ws);
                  ?> 
        Jumlah Siswa = <?php $x=count($s); echo "$x";?>
        <p>Hadir = <?php if(in_array("Hadir", $wa)) {print_r($ws['Hadir']) ;}else{echo'0';}?>&nbsp;&nbsp;&nbsp; 
        Ijin = <?php if(in_array("Ijin", $wa)) {print_r($ws['Ijin']) ;}else{echo'0';}?>&nbsp;&nbsp;&nbsp; 
        Sakit = <?php if(in_array("Sakit", $wa)) {print_r($ws['Sakit']) ;}else{echo'0';}?>&nbsp;&nbsp;&nbsp; 
        X = <?php if(in_array("X", $wa)) {print_r($ws['X']) ;}else{echo'0';}?> </p>
              </tr>
            </table>
  </div>
  </div>
</div>
<?php if(!empty($t)){
$data = array_combine($nis, $wa);
$rec = serialize($data);
$que = mysqli_query($conn, "SELECT * FROM record Where tanggal = '$tgl'");
 if ($qu = mysqli_fetch_assoc($que) AND $q = $qu["id_record"]){
 $query = "UPDATE record SET kls = '$kls', tanggal = '$tgl', rec = '$rec' WHERE id_record = '$q'"; mysqli_query($conn, $query); }elseif($keys != []) {
  $queryy = "INSERT INTO record VALUES ('', '$kls', '$tgl', '$rec')";
              mysqli_query($conn, $queryy);}}
          ?> 
     
   <!-- -------------- -->
</div>
   <nav class="navbar fixed-bottom navbar-light">
      <span class="navbar-text mx-auto d-block">
        <a href="../raihan.php">[Opti<a style="color: red">on</a>]</a> | <a href="../build.php">Build <?php echo tglIndonesia(date('F Y')); ?></a>
      </span>
    </nav>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>