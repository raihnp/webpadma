<?php
require '../functions.php';

if(isset($_POST["simpan"])){
  $nis = $_POST["nis"] ;
  $done = 'ok';
  $tanggal = $_POST["tanggal"] ;
  $ijin = $_POST["ijin"] ;

$que = "INSERT INTO ijin VALUES('','$nis','$ijin','$done','$tanggal')";
mysqli_query($conn, $que);
if (mysqli_affected_rows($conn) > 0) {
    echo "
    <script>
    alert('data berhasil ditambah');
    document.location.href = 'kalender.php';
    </script>
    ";
  } else {
    echo"
    <script>
    alert('Tidak ada perubahan data');
    document.location.href = 'kalender.php';
    </script>
    ";
}
}