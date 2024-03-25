<?php 
include 'cbssession.php';
include 'headerstaff.php';
include("dbconnect.php");

if(!session_id()){

    session_start();
}



$freg = $_POST['fbid'];
$fprice = $_POST['fprice'];



//UPDATE booking into DB
$sql = "UPDATE tb_vehicle SET  v_price='$fprice' WHERE v_reg='$freg'";

if (!mysqli_query($con, $sql)) {
  echo "Error updating record: " . mysqli_error($con);
}

mysqli_close($con);

header('location:staffviewlistvehicle.php');

include 'footermain.php'; 
?>