<?php 
include 'cbssession.php';
include('dbconnect.php');

if(!session_id()){

    session_start();
}

$uid = $_SESSION['uid'];
$fbid =  $_POST['fbid'];
$fvec =  $_POST['fvec'];
$fpdate =  $_POST['fpdate'];
$frdate =  $_POST['frdate'];


//calculate number of days
$pickup = date('Y-m-d H:i:s', strtotime($fpdate));
$return = date('Y-m-d H:i:s', strtotime($frdate));
$daydiff = abs(strtotime($frdate)-strtotime($fpdate));

//$daydiff=abs($return-$pickuo);
$daynum=$daydiff/(60*60*24); //how many seconds


//Retrieve price from DB
$sqlprice="SELECT v_price FROM tb_vehicle WHERE v_reg= '$fvec'";
$resultprice= mysqli_query($con,$sqlprice);
$rowprice=mysqli_fetch_array($resultprice);

//calculate total price
$totalprice = $daynum * ($rowprice['v_price']);

//UPDATE booking into DB
$sql = "UPDATE tb_booking
		SET b_vehicle = '$fvec', b_pickupdate='$fpdate',b_returndate='$frdate',b_totalprice='$totalprice',b_status='1'
		WHERE b_id='$fbid'";


mysqli_query($con, $sql);    
mysqli_close($con);

//successful notification or redirect
header('location:customermanage.php');


?>
