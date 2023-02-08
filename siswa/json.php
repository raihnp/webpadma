<?php
session_start();
if( !isset($_SESSION["login"])){
  header("Location: ../login.php");
  exit;
}elseif( $_SESSION["level"]!=3){
  header("Location: ../login.php");
  exit;
}
$id_siswa = $_SESSION["id_siswa"];
require '../functions.php';
$sqlx = mysqli_query($conn, "SELECT * FROM siswa WHERE id_siswa = '$id_siswa'");
$rowx = mysqli_fetch_assoc($sqlx);
$kls = $rowx["kls"];
$kl = explode("/", $kls);
$k = $kl[0];

$query = "SELECT * from kalender WHERE title = 'Padmanaba' OR kls = '$k'";
$result = mysqli_query($conn, $query) or die(mysqli_error());

$arr = array();
while ($row = mysqli_fetch_assoc($result)) {
    $temp = array(
        "date" => $row["date"],       
        "title" => $row["title"],
        "description" => $row["description"]);

    array_push($arr, $temp);}
$data = json_encode($arr);
echo $data
        
?>