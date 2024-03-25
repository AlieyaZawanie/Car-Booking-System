<?php
session_start();
include ("dbwblconnect.php");
 include 'pssession.php';
  
 if(!session_id())
 {
    session_start();
 }

$fic =$_POST['fic'];
$fpwd =$_POST['fpwd'];
$fname =$_POST['fname'];
$fphone =$_POST['fphone'];
$Cname =$_POST['Cname'];
$cage =$_POST['cage'];
$fcallergy =$_POST['fcallergy'];
$ab1 =$_POST['ab1'];
$ac1 =$_POST['ac1'];
$ftoy =$_POST['ftoy'];



$sql = "INSERT INTO tb_pgparents (PGP_ICNo , PGP_name , PGP_phone , PGP_pwd)
		VALUES ('$fic','$fname','$fphone' , '$fpwd')";

$sql1 = "INSERT INTO tb_pgchild (pgc_name,pgc_age,pgc_allergy,pgc_diapers,pgc_condition, pgc_type)
      VALUES ('$Cname','$cage','$fcallergy','$ab1','$ac1' , 1)";

mysqli_query($con,$sql);
mysqli_query($con,$sql1);
mysqli_close($con);

header('location:childregisterform.php');
?>
