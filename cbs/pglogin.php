<?php
session_start();
include'headermain.php';
include'alert.php';
?>

<div class ="container">
<br>
<form method="POST" action="pgloginproc.php">


<img src="images/schoollogo.jpg" style="width:50%;">

  <fieldset>
    <legend>Log In </legend>

    <div class="form-group">
      <label for="exampleInputPassword1" class="form-label mt-4">IC Number</label>
      <input type="text" name="fuser" class="form-control" id="exampleInputPassword1" placeholder="Enter your username" required>
    </div>

    <div class="form-group">
      <label for="exampleInputPassword1" class="form-label mt-4">Password</label>
      <input type="password" name="fpwd" class="form-control" id="exampleInputPassword1" placeholder="Please enter a correct password" required>
    </div>
    
    <br><button type="submit" name="save" class="btn btn-primary">Login</button>
     <button type="reset" class="btn bg-danger">Clear Form</button>
  </fieldset>
</form>
<br><br><br><br>


</div>

<?php include 'footermain.php';?>