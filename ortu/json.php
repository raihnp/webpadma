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

$query = "SELECT * from kalender WHERE title = 'Padmanaba'";
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