<?php

session_start();
require 'functions.php';
$log = $_SESSION["log"];
$d = DATE('d-m-Y H:i:s');
$query = "UPDATE login SET keluar = '$d' WHERE id_login = '$log'";
mysqli_query($conn, $query);

$_SESSION=[];
session_unset();
session_destroy();

header("Location:login.php");
  exit;

?>