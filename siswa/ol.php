<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=3){
  header("Location: ../login.php");
  exit;
}
if (isset($_SESSION["mulai"])) { 
        $telah_berlalu = time() - $_SESSION["mulai"];
    } else { 
        $_SESSION["mulai"]  = time();
        $telah_berlalu      = 0;
    } 


$id_siswa = $_SESSION["id_siswa"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM siswa WHERE id_siswa = '$id_siswa'");
$rowx = mysqli_fetch_assoc($sqlx);
$siswa = $rowx["siswa"];
$kls = $rowx["kls"];
$kl = explode("/", $kls);
$k = $kl[0];
$class = explode(" ", $k);
$kelas =$class[0];
$nis = $rowx["nis"];
$foto = $rowx["foto"];
$status = $rowx["status"];

$id=$_GET["id"];
$sql = mysqli_query($conn,"SELECT * FROM kalender WHERE id_kalender = '$id'");
$row = mysqli_fetch_assoc($sql);
$title=$row["title"];
$description=$row["description"];
$user=$row["user"];
$waktu=$row["waktu"];
// $sql    = mysqli_query($conn,"select * from timer");   
// $data   = mysqli_fetch_array($sql);
 $temp_waktu = ($waktu*60) - $telah_berlalu; 
    $temp_menit = (int)($temp_waktu/60);
    $temp_detik = $temp_waktu%60;
     
    if ($temp_menit < 60) { 
        $jam    = 0; 
        $menit  = $temp_menit; 
        $detik  = $temp_detik; 
    } else {            
        $jam    = (int)($temp_menit/60);
        $menit  = $temp_menit%60;
        $detik  = $temp_detik;
    }   
$query = mysqli_query($conn, "SELECT * FROM bank WHERE guru = '$user' AND kls = '$kelas'");

$query2 = mysqli_query($conn, "SELECT * FROM bank WHERE guru = '$user' AND kls = '$kelas'");
while($que=mysqli_fetch_assoc($query2)){
  $soal[]=$que["soal"];
  $jawaban[]=$que["jawaban"];
  $jawab = implode(",",$jawaban);
  $id_bank[]=$que["id_bank"];
  $a[]=$que["a"];
  $b[]=$que["b"];
  $c[]=$que["c"];
  $d[]=$que["d"];
  $e[]=$que["e"];
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
    <title>Siswa</title>
    <script src="http://code.jquery.com/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script> var message="Maaf,, Dilarang Klik Kanan Di Situs Ini!";
    ///////////////////////////////////
    function clickIE4(){if (event.button==2){alert(message);return false;}} function clickNS4(e){if (document.layers||document.getElementById&&!document.all){if (e.which==2||e.which==3){alert(message);return false;}}} if (document.layers){document.captureEvents(Event.MOUSEDOWN);document.onmousedown=clickNS4;} else if (document.all&&!document.getElementById){document.onmousedown=clickIE4;} document.oncontextmenu=new Function("alert(message);return false")</script>

    <!-- <script type="text/javascript">
        $(document).ready(function() {
            var detik   = <?= $detik; ?>;
            var menit   = <?= $menit; ?>;
            var jam     = <?= $jam; ?>;
            function hitung() {
                setTimeout(hitung,1000);
                if(menit < 10 && jam == 0){
                    var peringatan = 'style="color:red"';
                };
                $('#timer').html(
                    '<h6 align="center"'+peringatan+'>Sisa waktu anda <br />' + jam + ' jam : ' + menit + ' menit : ' + detik + ' detik</h6><hr>'
                );
                detik --;
                if(detik < 0) {
                    detik = 59;
                    menit --;
                    if(menit < 0) {
                        menit = 59;
                        jam --;
                        if(jam < 0) { 
                            clearInterval(hitung); 
                            var frmSoal = document.getElementById("frmSoal"); 
                            alert('Waktu Anda telah habis, Jika ingin mencoba lagi silahkan dihapus dulu SESSION browser anda');
                            frmSoal.submit(); 
                        } 
                    } 
                } 
            } 
            hitung();
        });
    </script> -->
  </head>
  <body>
   <div class="container">
    <!-- Image and text -->
    <nav class="navbar fixed-top navbar-light">
      <a class="navbar-brand" href="#">
        <img src="../img/pad.gif" height="30" class="d-inline-block align-top" alt="">        Padmanaba<div id='timer' class="justify-content-center"></div>
      </a>
    </nav>
    <div class="row mt-4">
    <div class="col-md-2">
      <div class="container">
      <div align="center" style="margin-top: 30px;">
      <a href="../logout.php"><img src="../img/siswa/<?= $foto; ?>" width="100" class="mx-auto d-block"></a>
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
             <?= $k; ?>
            </div>
              <ul>
               <li><a href="siswa.php">Home</a></li>
               <li><a href="hapus_session.php?id=<?=$id;?>">Session</a></li>
              </ul>
          </div>
        </div>
        </div>
    </div>
<div class="col-md-10 mt-3">
    <!-- ------------ -->
    <div class="form mt-3 p-1">
      <div class="card p-1" style="width: 100%;">
       <div class="card-header">
         <span style="font-size: 20px"><?=$title;?> | <?=$description;?><br><i><?=$user;?></i></span>
       </div>
<form action="" method="post">
       <table class="table table-hover">
          <tr>
            <th>No</th>
            <th>Soal</th>
          </tr>
          <?php for($i=0;$i<count($soal);$i++){?>
          <tr>
            <td><?=$i+1;?></td>
            <td><?=$soal[$i];?>
              <table>
                <?php echo "
                <input type='radio' name='ab[$i]' value='x' checked hidden>
                <tr>
                  <td>a <input type='radio' name='ab[$i]' value='a'></td>
                  <td><b>:</b></td>
                  <td>$a[$i]</td>
                </tr>
                <tr>
                  <td>b <input type='radio' name='ab[$i]' value='b'></td>
                  <td><b>:</b></td>
                  <td>$b[$i]</td>
                </tr>
                <tr>
                  <td>c <input type='radio' name='ab[$i]' value='c'></td>
                  <td><b>:</b></td>
                  <td>$c[$i]</td>
                </tr>
                <tr>
                  <td>d <input type='radio' name='ab[$i]' value='d'></td>
                  <td><b>:</b></td>
                  <td>$d[$i]</td>
                </tr>
                <tr>
                  <td>e <input type='radio' name='ab[$i]' value='e'></td>
                  <td><b>:</b></td>
                  <td>$e[$i]</td>
                 </tr>
                 ";
                  ?>
                  
               </table>

            </td>
          </tr>
              <?php };?>
          <?php $i++ ;?>
      </table>
      <input type="submit" name="kirim" class="btn btn-outline-dark" value="Selesai"/>
</form>
<?php
if(isset($_POST['kirim'])){

    for($q=0;$q<count($soal);$q++){
         $ab =$_POST['ab'];
     }
    for($k=0;$k<count($soal);$k++){ 
       if($ab[$k]==$jawaban[$k]){
        $jaw[] = 'o';
       }else{
        $jaw[] = 'x';
       }
    }

       $gabung = implode(",", $jaw);
       $hasil = str_replace(",","",$gabung);
       $ben = str_replace("x", '', $hasil);
       $benar = strlen($ben);
       $scorr = ($benar/count($soal))*'100';
      echo "Nilai $scorr";
  }
       
    ?>
     </div>
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