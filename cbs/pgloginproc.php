<?php
session_start();

if(isset($_POST['save']))
{
    extract($_POST);
    include 'dbwblconnect.php';
    $sql=mysqli_query($con,"SELECT * FROM tb_pgparents where PGP_ICNo='$fuser' and PGP_pwd='$fpwd'");
    $row  = mysqli_fetch_array($sql);
    if(is_array($row))
    {
        $_SESSION['PGP_ICNo']=session_id();
        $_SESSION['uid']=$fuser;
        header("Location: pgcustomer.php"); 
    }
    else
    {   
        $_SESSION['error'] = true ;
        header('location: pglogin.php');
        
    }
}
?>