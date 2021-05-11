<?php
/*
 * Template Name: Vendor page Template
 * description: >-
  Page template to display portfolio custom post types 
 * underneath the page content
 */

get_header();

?>

<div class="w-100 pad75_0 InnerContentArea">
      <div class="custom-container">

        <div class="row">

          <div class="col-md-12">
            <div class="w-100 InnerBot">
              <h3> Vendor Login</h3>
              <div class="w-100 bgr-g pad_30 bdr mtop_30 rad5 FormWrapper">
                <div class="row">
                  <div class="col-xl-4 col-lg-12 col-md-12">
                    <div class="w-100 FWLeft">

                      
                      <ul class="nav nav-tabs">
                        <li class="nav-item">
                          <a class="nav-link active" data-toggle="tab" href="#login">
                            <span><img src="<?php bloginfo('template_directory'); ?>/images/svg/user.svg" alt=""></span>
                            Login</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" data-toggle="tab" href="#register">
                            <span><img src="<?php bloginfo('template_directory'); ?>/images/svg/user.svg" alt=""></span>
                            Register</a>
                        </li>
                        <li class="nav-item">
                          <a class="nav-link" data-toggle="tab" href="#forgetpassword">
                            <span><img src="<?php bloginfo('template_directory'); ?>/images/svg/user.svg" alt=""></span>
                            Forget Password</a>
                        </li>
                      </ul>
                      <!--/.nav-tabs-->
                    </div>
                    <!--/.FWLeft-->
                  </div>
                  <!--/.cols-->
                  <div class="col-xl-8 col-lg-12 col-md-12">
                    <div class="w-100 FWRight">
                      <div class="tab-content">
                        <div id="login" class=" tab-pane active">
                          <h3>Login</h3>
                          <p>Enter login details</p>
                          <?php echo do_shortcode(' [ultimatemember form_id="278"]');?>
                          <!-- <form action="" class="w-100">
                            <div class="form-group">
                              <label for="">Username</label>
                              <input type="text" class="form-control input">
                            </div>
                           
                            <div class="form-group">
                              <label for="">Password</label>
                              <input type="text" class="form-control input">
                            </div>
                            
                            <div class="form-group">
                              <a href="vendors-dashboard.html" class="Button">LOGIN</a>
                            </div>
                           
                          </form> -->


                        </div>
                        <div id="register" class=" tab-pane fade">
                          <h3>Preferred User Information</h3>
                          <p>*Note: Membership to this portal is Public. Once your account information has been submitted, 
                            you will be immediately granted access to the portal environment. All fields marked with a red arrow are
                             required.
                        
                            </p>

                          <?php echo do_shortcode('[ultimatemember form_id="277"]'); ?>
                        </div>
                        <div id="forgetpassword" class=" tab-pane fade">
                          <h3>Forword Password</h3>
                          <!-- <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod magna aliqua.</p> -->

                          <!-- <form action="" class="w-100">
                            <div class="form-group">
                              <label for="">Username</label>
                              <input type="text" class="form-control input">
                            </div>
                                                    
                            <div class="form-group">
                              <a href="vendors-dashboard.html" class="Button">Reset </a>
                            </div>
                           
                          </form> -->
                          <?php echo do_shortcode('[ultimatemember_password]'); ?>
                         
                        </div>
                      </div>
                      <!--/.tab-content-->
                    </div>
                    <!--/.FWRight-->
                  </div>
                  <!--/.cols-->
                </div>
                <!--/.row-->



              </div>
              <!--/.FormWrapper-->


            </div>
            <!--/.InnerBot-->
          </div>
          <!--/.cols-->
        </div>
        <!--/.row-->
      </div>
      <!--/.container-->

    </div>
    <!--/.InnerContentArea-->



<?php
get_footer();
