<?php
   require APPROOT . '/views/includes/header.php';
?>


<div class="navbar">
    <div class="navItems_mobile">
    <div style="display:flex; column-gap:15px; padding-left:25px; padding-right:25px; flex-direction:row; justify-content:flex-start; align-items:center">
            <img width="15%" src="<?php echo URLROOT; ?>/public/images/white_logo.png" alt="" />
            <div class="logo">WealthIA</div>
            </div>
            <a href="#">
                <ul class="navlink_mobile">
                    <li><a class="registerbtn_m" href="#" title="Create an account!">Sign Up</a></li>
                </ul>
            </a>
    </div>
    <div style="text-align:center;">
    <img class="displayImage" src="<?php echo URLROOT; ?>/public/images/display.jpg" alt="" />
    <br>
    <br>
    <h2 class="titlehdr" style="font-size:25px; line-height:35px; width:100%;">Experience tailored financial advisory services</h2>
    <h1 style="margin-top:-10px; width: 100%;" class="mainTitle" style="font-size:30px;">Download <span style="font-size:30px;" class="textWhite">WealthIA</span></h1>
            <p class="details" style="width:100%; padding:10px; margin-top:-10px;">A financial advisory service platform that provides direct one-on-one relationship with your preferred financial provider</p>
    <div style="margin-top:50px;">
                 <img class="downloadImg" src="<?php echo URLROOT; ?>/public/images/playstore.png" alt="" />
                <img class="downloadImg" src="<?php echo URLROOT; ?>/public/images/appstore.png" alt="" />
    </div>
    </div>
</div>


<?php
   require APPROOT . '/views/includes/footer.php';
?>
