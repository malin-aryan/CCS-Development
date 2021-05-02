<?php
/*
 * Template Name: About us page Template
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
            <div class="w-100 InnerTop mbot_50">
              <h2 class="t-center x30 pbot_20"><?php the_field('vertical_integration'); ?></h2>
              <?php the_field('info'); ?>
              
            </div>
          </div>
        </div>
        <div class="row">
         
          <div class="col-md-12">
            <div class="w-100 InnerBot">
              <h3>Our Vision</h3>

              <div class="row">
                <div class="col-lg-6">
                  <div class="w-100 AboutBox">

                    <p><?php the_field('our_vision'); ?></p>
                  </div> <!--/.AboutBox-->
                    
                </div> <!--/.cols-->
                <div class="col-lg-6">
                  <div class="w-100 AboutBox">
                    <p> <?php the_field('our_vision2'); ?></p>
                   </div> <!--/.AboutBox-->
                  
              </div> <!--/.cols-->
              <div class="col-lg-6">
                <div class="w-100 AboutBox">
                  <p> <?php the_field('our_vision3'); ?></p>
                </div> <!--/.AboutBox-->
                
            </div> <!--/.cols-->
            <div class="col-lg-6">
              <div class="w-100 AboutBox">
                <p><?php the_field('our_vision4'); ?></p>
              </div> <!--/.AboutBox-->
              
          </div> <!--/.cols-->
          <div class="col-md-12">
            <div class="w-100 InnerLeft">
              <?php  

                    wp_nav_menu( array('container' => 'false', 'menu' => 'about page menu','items_wrap'=>'<ul class="List1">%3$s</ul>' ) );
              ?>
             <!--  <ul class="List1">
                <li><a href="bonding-contract-methods.html"> Bonding & Contract Methods</a></li>
                <li><a href="CCS-Fabricator-Newsletter.html">CCS Fabricator Newsletter</a></li>
                <li><a href="Community-Teamwork.html">Community & Teamwork</a></li>
                <li><a href="Mission-Statement.html">Mission Statement</a></li>
              </ul> -->
            </div>
            <!--/.InnerLeft-->
          </div>
          <!--/.cols-->

              </div> <!--/.row-->

              

             

             

              
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
