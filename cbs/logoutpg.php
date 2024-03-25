<?php
session_start();
unset($_SESSION["PGP_ICNo"]);
header("Location:pglogin.php");
?>

