<?php include'headermain.php';?>

<br><br><br>
<section class="vh-100 bg-image">
  <div class="mask d-flex align-items-center h-100 gradient-custom-3">
    <div class="container h-100">
      <div class="row d-flex justify-content-center align-items-center h-100">
        <div class="col-12 col-md-9 col-lg-7 col-xl-6">
          <div class="card" style="border-radius: 15px;">
            <div class="card-body p-5">
              <h2 class="text-uppercase text-center mb-5">Parents Detail</h2>

               <form method= "POST" action="pgregisterprocess.php">
                <div class="form-outline mb-4">
                  <label for="exampleInputEmail1" class="form-label mt-4">IC Number<span style="color: red;"> *</span></label>
                  <input type="text" name="fic" class="form-control" id="exampleInputPassword1" required>
                </div>
                <div class="form-outline mb-4">
                  <label for="exampleInputEmail1" class="form-label mt-4">Password<span style="color: red;"> *</span></label>
                  <input type="password" name="fpwd" class="form-control" id="exampleInputPassword1" required>
                </div>
              
                <div class="form-outline mb-4">
                  <label for="exampleInputEmail1" class="form-label mt-4">Full Name<span style="color: red;"> *</span></label>
                  <input type="text" name="fname" class="form-control" id="exampleInputPassword1" required>
                </div>

                <div class="form-outline mb-4">
                  <label for="exampleInputEmail1" class="form-label mt-4">Phone Number<span style="color: red;"> *</span></label>
                  <input type="text" name="fphone" class="form-control" id="exampleInputPassword1" required>
                </div>

                <div class="form-outline mb-4">
                  <label for="exampleInputEmail1" class="form-label mt-4">Child Name<span style="color: red;"> *</span></label>
                  <input type="text" name="Cname" class="form-control" id="exampleInputPassword1" required>
                </div>

                <div class="form-outline mb-4">
                  <label for="exampleInputEmail1" class="form-label mt-4">Age<span style="color: red;"> *</span></label>
                  <input type="text" name="cage" class="form-control" id="exampleInputPassword1" required>
                </div>

                <div class="form-outline mb-4">
                  <label for="exampleInputEmail1" class="form-label mt-4">favourite toy<span style="color: red;"> *</span></label>
                  <input type="text" name="ftoy" class="form-control" id="exampleInputPassword1" required>
                </div>

                <div class="form-outline mb-4">
                  <label for="exampleInputEmail1" class="form-label mt-4">Allergy<span style="color: red;"> *</span></label>
                  <input type="text" name="fcallergy" class="form-control" id="exampleInputPassword1" required>
                </div>

                <fieldset class="form-outline mb-4">
                <legend class="mt-4">Wear Diapers?<span style="color: red;"> *</span></legend>
                <div>
                  <input class="form-check-input" type="radio" name="ab1" id="optionsRadios1" value="Yes">
                  <label class="form-check-label" for="optionsRadios1">Yes
                  </label>
                </div>

                <div>
                  <input class="form-check-input" type="radio" name="ab1" id="optionsRadios2" value="No">
                  <label class="form-check-label" for="optionsRadios2">No
                  </label>
                </div>
                </fieldset>       
                
                <br>

                <fieldset class="form-outline mb-4">
                <legend class="mt-4">Does your child is a special needs?<span style="color: red;"> *</span></legend>
                <div>
                  <input class="form-check-input" type="radio" name="ac1" id="optionsRadios3" value="Yes">
                  <label class="form-check-label" for="optionsRadios3">Yes
                  </label>
                </div>

                <div>
                  <input class="form-check-input" type="radio" name="ac1" id="optionsRadios4" value="No">
                  <label class="form-check-label" for="optionsRadios4">No
                  </label>
                </div>
                </fieldset>    

                <br>

                <div class="d-flex justify-content-center">
                  <button type="submit" href="childregisterform.php" class="btn btn-primary">Next</button>                
                </div>
               </form> 
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
</section>

<br><br><br><br>
<br><br><br><br>