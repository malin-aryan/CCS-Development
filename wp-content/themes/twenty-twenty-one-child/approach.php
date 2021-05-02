<?php
/*
 * Template Name: Approach page Template
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
              <h2 class="t-center x30 pbot_20"> <?php the_field('vertical_integration_offers_quality_assurance'); ?> </h2>
              <?php the_field('info'); ?> 
              
            </div>
          </div>
        </div>
      
      </div>
      <!--/.container-->

    </div>
    <!--/.InnerContentArea-->



   

<?php
get_footer();
