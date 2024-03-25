<?php

include 'cbssession.php';
include('dbconnect.php');

if(!session_id()){

    session_start();
}

include 'headercustomer.php'; 

//get bookimg ID from URL
if(isset($_GET['id']))
{
	$bid = $_GET['id'];
}

$sql= "SELECT * FROM tb_booking WHERE b_id='$bid'";
$result = mysqli_query($con,$sql);
$row=mysqli_fetch_array($result);
?>


<div class = "container">
<div class="row">
  <div class ="col-sm-6">

            	<br>
                 <div class ="row">
                    <div class = "col-sm-6"><img class="img-thumbnail" src="img/alza.jpg"></div>
                    <div class ="col-sm-6">Perodua Alza<br>Year 2018<br>RM150 </div>
                </div>

            	<br>
                <div class ="row">
                    <div class = "col-sm-6"><img class="img-thumbnail" src="img/alza.jpg"></div>
                    <div class ="col-sm-6">Perodua Alza<br>Year 2018<br>RM150 </div>
                </div>
         
              <br>
              <div class ="row">
                    <div class = "col-sm-6"><img class="img-thumbnail" src="img/x70.jpg"></div>
                    <div class ="col-sm-6">Proton X70<br>Year 2022<br>RM200 </div>
                </div>
           
              <br>
              <div class ="row">
                    <div class = "col-sm-6"><img class="img-thumbnail" src="img/saga.jpg"></div>
                    <div class ="col-sm-6">Proton Saga<br>Year 2014<br>RM100</div>
                </div>
            </div><br>

<div class="col-sm-6">
<br><br>
  	<form method="POST" action="customermodifyprocess.php">
  <fieldset>
   <br> <legend>Modify Form</legend>

   <label for="exampleSelect1">Booking ID: <?php echo $bid;?></label><br><br>

   <div class="form-group">
      <label for="exampleSelect1" class="form-label mt-4">Select Vehicle</label>
      <?php
        $sqlv = "SELECT * FROM tb_vehicle";
        $resultv = mysqli_query($con,$sqlv);

        echo '<select class="form-select" name="fvec" id="exampleSelect1">';
        while($rowv=mysqli_fetch_array($resultv))
        {
        		  if($rowv['v_reg']==$row['b_vehicle'])
          {
            echo "<option selected='selected' value = '".$rowv['v_reg']. " '>".$rowv['v_model']."</option>";

          }
          else
          {
            echo "<option value = '".$rowv['v_reg']. " '>".$rowv['v_model']."</option>";
          }
          
        }

        echo '</select>';

      ?>

    </div>


    <div class="form-group">
      <label for="exampleInputPassword1" class="form-label mt-4">Pick up Date</label>
      <input type="date" name="fpdate" class="form-control" id="exampleInputPassword1" value="<?php echo $row['b_pickupdate']?>" required>
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1" class="form-label mt-4">Return Date</label>
      <input type="date" name="frdate" class="form-control" id="exampleInputPassword1" value="<?php echo $row['b_returndate']?>" required>
    </div>

    <input type="hidden" name="fbid" value="<?php echo $row['b_id']?>" >

    <br>
    <button type="submit" class="btn btn-primary">Modify</button>
     <button type="reset" class="btn bg-danger">Clear Form</button>
  </fieldset>
</form>
	<br><br><br>
        </div>
    </div>
</div>

<?php include 'footermain.php'; ?>