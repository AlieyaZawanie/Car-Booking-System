<?php 

$uid = $_SESSION['uid'];
$sql = "SELECT * FROM tb_user WHERE u_id = '$uid'";

$result = mysqli_query($con, $sql);
$row = mysqli_fetch_array($result);

if($row['u_type'] == 2)
{
  header('location: index.php');
}

 ?><!DOCTYPE html>
<html lang="en">
<head>
  <title>Alie Car Renting Service</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

<style>
.footer {
   position: fixed;
   left: 0;
   bottom: 0;
   width: 100%;
   background-color: #9900cc;
   color: white;
   text-align: center;
}
</style>

<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="staff.php">Alieya Sdn. Bhd</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarColor01">
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="staffview.php">Booking List</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="staffupdatevehicle.php">Add New Vehicle</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="staffviewlistvehicle.php">View List of Vehicle</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="staffsearchbooking.php">Search Booking</a>
        </li>


         <li class="nav-item">
          <a class="nav-link" href="logout.php">Logout</a>
        </li>
          </div>
        </li>
        </ul>
    </div>
  </div>
</nav>
