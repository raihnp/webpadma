<?php
$id = $_GET["id"];
session_start();

$_SESSION=["mulai"];
session_unset();
session_destroy();

header("Location:ol.php?id='$id'");
  exit;

?>