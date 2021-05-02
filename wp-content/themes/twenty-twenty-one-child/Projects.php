<?php
/*
 * Template Name: Projects page Template
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
              <h2 class="t-center x30 pbot_20"> <?php the_field('ccs_mechanical_qualified_markets'); ?></h2>
              <?php the_field('info'); ?>
              <!-- <p class="text-center x16">
                CCS Mechanical specializes in a wide range of building mechanical and HVAC applications.
                Our experienced and certified professionals provide a complete mechanical contracting solution for
                new building construction, building renovations, as well as routine maintenance services. For over
                a decade, CCS Mechanical has served Central Florida businesses within the following industries:
              </p> -->
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="w-100 InnerBot">
              <div class="w-100 ProjectsDetails">
                <div class="row">

                  <?php
                  $terms = get_terms(
                                array(
                                    'taxonomy'   => 'types',
                                    'hide_empty' => false,
                                )
                            );

                            // Check if any term exists
                  if ( ! empty( $terms ) && is_array( $terms ) ) {
                      // Run a loop and print them all
                      foreach ( $terms as $term ) { ?>

                      <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                        <div class="w-100 ProjectBox">
                          <div class="PImage">
                            <img src="<?php bloginfo('template_directory'); ?>/images/avtar.jpg" alt="">
                          </div>
                          <!--/.PImage-->
                          <div class="w-100 PContent">
                            <p class="heading"><?php echo $term->name; ?></p>
                            <p><?php echo $term->description; ?></p>
                            <a href="<?php echo esc_url( get_term_link( $term ) ) ?>">Read More</a>
                          </div>
                          <!--/.PContent-->
                        </div>
                        <!--/.ProjectBox-->
                      </div>


                  <?php } } ?>

                  

                  
                  <!--/.cols-->
                </div>
                <!--/.row-->
                <div class="chompProject">
                  <div class="row">
                    <div class="col-md-12">
                      <h4>Chomp's Project Highlights:</h4>
                      <div class="row">
                        <div class="col-xl-4 col-lg-6 col-md-6 col-sm-12">
                          <div class="w-100 ProjectBox">
                            <div class="PImage">
                              <img src="<?php bloginfo('template_directory'); ?>/images/avtar.jpg" alt="">
                            </div>
                            <!--/.PImage-->
                            <div class="w-100 PContent">
                              <p class="heading">VA Outpatient Clinic at The Villages</p>

                              <p>A growing market segment within our business is the Industrial sector. Our unique
                                geographical location allows us to capture...</p>
                              <a href="project-list.html">Read More</a>
                            </div>
                            <!--/.PContent-->
                          </div>
                          <!--/.ProjectBox-->
                        </div>
                        <!--/.cols-->
                      </div>
                    </div>
                    <!--/.cols-->
                  </div>
                  <!--/.row-->
                </div>
                <!--/.ChompProject-->

              </div>
              <!--/.Projects-Details-->

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
