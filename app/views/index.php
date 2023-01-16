<?php
   require APPROOT . '/views/includes/header.php';
?>


<div class="navbar">
        <div class="navItems">
            <div style="display:flex; column-gap:15px; flex-direction:row; justify-content:flex-start; align-items:center">
            <img width="60" src="<?php echo URLROOT; ?>/public/images/white_logo.png" alt="" />
            <div class="logo">WealthIA</div>
            </div>
        
        <div class="links">
            <ul class="navlink">
                <li><a href="#">Home</a></li>
                <li><a href="#">About</a></li>
                <li><a href="#">Privacy Policy</a></li>
                <li><a class="registerbtn" href="#" title="Create an account!">Create an account</a></li>
            </ul>
        </div>
        </div>
        <div class="display">
            <div class="displayAction">
            <h2 class="titlehdr">Experience tailored financial advisory services</h2>
            <h1 class="mainTitle">Download <span class="textWhite">WealthIA</span></h1>
            <p class="details">A financial advisory service platform that provides direct one-on-one relationship with your preferred financial provider</p>
            <div class="downloads">
                <img class="downloadImg" src="<?php echo URLROOT; ?>/public/images/playstore.png" alt="" />
                <img class="downloadImg" src="<?php echo URLROOT; ?>/public/images/appstore.png" alt="" />
            </div>
            </div>
            <img style="width:500px; height:100%;" class="displayImage" src="<?php echo URLROOT; ?>/public/images/display.jpg" alt="" />
        </div>
    </div>
    <div class="provider">
    <div class="container">
    <img src="<?php echo URLROOT; ?>/public/images/4565.jpg" alt="" />
    <div class="providerDetails">
        <h2>
            Register as a Provider
        </h2>
        <p>Register as a certified provider on WealthIA and connect directly with your customers</p>
        <div class="providerButtons">
        <a href="<?php echo URLROOT; ?>/provider/completeRegistration" title="Click here to get started" class="completeBtn">Get Started here</a>
        </div>
    </div>
    </div>
</div>



<?php
   require APPROOT . '/views/includes/footer.php';
?>
