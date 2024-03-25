<?php 
include 'cbssession.php';
include ('dbconnect.php');
if(!session_id())
{
    session_start();
}

if(isset($_GET['id']))
{
    $freg = $_GET['id'];
}


//SQL DELETE related records in tb_booking
$sql = "DELETE FROM tb_booking WHERE b_vehicle = '$freg'";

$result = mysqli_query($con,$sql);
if (!$result) {
 die("Could not execute query: " . mysqli_error($con));
}

//SQL DELETE record in tb_vehicle
$sql = "DELETE FROM tb_vehicle WHERE v_reg = '$freg'";

$result = mysqli_query($con,$sql);
if (!$result) {
 die("Could not execute query: " . mysqli_error($con));
}

mysqli_close($con);

header ('location:staffviewlistvehicle.php');

?>
