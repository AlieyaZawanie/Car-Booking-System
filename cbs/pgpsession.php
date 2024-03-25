<?php

if(!session_id())
{
	session_start();
}

if(isset($_SESSION['PGP_ICNo']) != session_id())
{
	header('location: pglogin.php');
}

?>