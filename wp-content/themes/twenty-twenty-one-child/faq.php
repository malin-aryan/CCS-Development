<?php
/*
 * Template Name: FAQ page Template
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
              <h2 class="t-center x30 pbot_20">CCS Mechanical Blog </h2>
              <p class="text-center x16">
                <?php the_field('ccs_mechanical_blog'); ?> 
            </p>
            </div>
          </div>
        </div>
        <div class="row">
         
          <div class="col-md-12">
            <div class="w-100 InnerBot">
              <h3>Contracting Methods</h3>

              <div class="row">
                <div class="col-lg-4">
                  <div class="w-100 AboutBox">
                    <p><?php the_field('lump_sum'); ?></p>
                  </div> <!--/.AboutBox-->
                    
                </div> <!--/.cols-->
              
              <div class="col-lg-4">
                <div class="w-100 AboutBox">
                  <p><?php the_field('guaranteed_maximum_price_gmp'); ?></p>
                </div> <!--/.AboutBox-->
                
            </div> <!--/.cols-->
            <div class="col-lg-4">
              <div class="w-100 AboutBox">
                <p><?php the_field('fixed_fee'); ?></p>
              </div> <!--/.AboutBox-->
              
          </div> <!--/.cols-->
          <div class="col-lg-4">
            <div class="w-100 AboutBox">
              <p> <?php the_field('cost-plus'); ?></p>
             </div> <!--/.AboutBox-->
            
        </div> <!--/.cols-->
        <div class="col-lg-4">
            <div class="w-100 AboutBox">
              <p> <?php the_field('design__build_assist'); ?></p>
             </div> <!--/.AboutBox-->
            
        </div> <!--/.cols-->
         

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
