<?php
   require APPROOT . '/views/includes/header.php';
?>

<div class="completeDiv">
            <div class="completeLeft">

            <div class="innerLeft">
                <br>
                <?php if($data['status'] == 'true') : ?>
                    <div class="successAlert">
                    <i class="fa fa-check"></i> Your registration has been submitted and it is being reviewed. You will get a notification shortly.
                    </div>
                <?php endif; ?>
            <div class="logoInner">Provider Registration</div>
            <h6 class="regTitle">Provide your required details to complete registration</h6>
            <p class="docstype">Document upload should not exceed 3MB, only JPEG, PNG and PDF file types are allowed!</p>
        <form style="margin-top:-20px;" method ="POST" action="<?php echo URLROOT; ?>/provider/submitRegistration" enctype="multipart/form-data"> 
            <div class="innerForm">
            <input type="hidden" id="providerID" name="providerID">

                   <!--     <div class="formControl">
                            <label>Company User ID</label>
                            <input type="text" name="contact_user_id" onblur="fetchProviderID(this.value); return false;" required placeholder="Enter Company User ID" />
                        </div>
                        <div id="fetch_api" style="margin-left:190px; display:none; height:40px; margin-top:-25px;">
                        <h6 class="fetchapi">Fetching user profile, please wait...</h6>
                        </div>
                    -->
                <div class="formControl">
                    <label>Contact Person Name</label>
                    <input type="text" id="contactPerson" name="contactPerson" return false;" required />
                </div>

                <div class="formControl">
                    <label>Upload COI Docs</label>
                    <input type="file" name="coiDocs" placeholder="Certificate of Incorporation" />
                </div>

                <div class="formControl">
                    <label>Directors Signature</label>
                    <input type="file" name="dirSign" placeholder="Upload Director signature" />
                </div>

                <div class="tcsign">
                <input type="checkbox" required id="topping" name="topping" value="Paneer" /><span><a hfer="#">I agree to the terms and conditions</a></span>
                </div>
            </div>

                <input class="completeBtn" value="Complete Registration" type="submit" />
        </form>


            </div>



            </div>
            <div class="completeRight">
            <div class="rightContent">
                <div style="text-align:right; padding-right:20%; margin-top:-40px;">
                   <a href="<?php echo URLROOT; ?>" title="Back to Home!"><img width="90" src="<?php echo URLROOT; ?>/public/images/white_logo.png" alt="" /></a>
                </div>
            <h2 style="margin-top:0px;">Register as Provider Today!</h2>
            
            <h4>Complete your provider registration on the left by providing the following</h4>
            <ul>
                <li>Name of Provide Contact Person</li>
                <li>Certificate of Incorportion</li>
                <li>Signature of Directors</li>
                <li>After submission, your account will be activated</li>
            </ul>
            </div>
            </div>
        </div>



<?php
   require APPROOT . '/views/includes/footer.php';
?>
