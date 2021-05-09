<?php
/**
 * Template part for displaying posts
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

?>
 <div class="w-100 pad75_0 InnerContentArea">
      <div class="custom-container">
        <div class="row">
          <div class="col-md-12">
            <div class="w-100 InnerTop mbot_50">
              <h2 class="t-center x30 pbot_20"> <?php the_title(  ); ?></h2>
              <p class="text-center x16"><?php echo strip_tags(get_the_content());?>
              </p>
            </div>
          </div>
        </div>
        <div class="row">
        <?php if(get_post_type() == 'projects'){?>

          <div class="col-md-12">
            <div class="w-100 InnerBot">
              <div class="w-100 ProjectsDetails ViewProjectDetails">
                <div class="row">
                  <div class="col-md-12">
                    <div class="w-100 ProjectBox">
                      <div class="PImage">
                        <img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="">
                      </div>
                      <!--/.PImage-->
                      <div class="w-100 PContent">
                        <p class="heading">Commercial Projects</p>

                        <p><b>Value: </b> <?php the_field('value'); ?> </p>

                        <p><b>Location: </b> <?php the_field('value'); ?></p>
                          
                          <p><b> Owner: </b> <?php the_field('value'); ?></p>
                          
                          <p><b> Construction Manager: </b> <?php the_field('construction_manager'); ?></p>
                          
                          <p><b>CCS  Mechanical Scope of Work:</b> <?php the_field('ccs_mechanical_scope_of_work'); ?></p>
                      </div>
                      <!--/.PContent-->
                    </div>
                    <!--/.ProjectBox-->
                  </div>
                  <!--/.cols-->      
                
                </div>
                <!--/.row-->
              </div>
              <!--/.Projects-Details-->
            </div>
            <!--/.InnerBot-->
          </div>
          <!--/.cols-->

        <?php }else{ ?>

           <div class="col-md-12">
            <div class="w-100 InnerBot">
              <div class="w-100 ProjectsDetails ViewProjectDetails">
                <div class="row">
                  <div class="col-md-12">
                    <div class="w-100 ProjectBox">
                      <div class="PImage">
                        <div class="entry-content">
                        <?php
                        the_content();

                        wp_link_pages(
                          array(
                            'before'   => '<nav class="page-links" aria-label="' . esc_attr__( 'Page', 'twentytwentyone' ) . '">',
                            'after'    => '</nav>',
                            /* translators: %: Page number. */
                            'pagelink' => esc_html__( 'Page %', 'twentytwentyone' ),
                          )
                        );
                        ?>
                      </div><!-- .entry-content -->
                      </div>
                      <!--/.PImage-->
                      <div class="w-100 PContent">
                        

                      </div>
                      <!--/.PContent-->
                    </div>
                    <!--/.ProjectBox-->
                  </div>
                  <!--/.cols-->      
                
                </div>
                <!--/.row-->
              </div>
              <!--/.Projects-Details-->
            </div>
            <!--/.InnerBot-->
          </div>
          <!--/.cols-->
        <?php } ?>
        </div>
        <!--/.row-->
      </div>
      <!--/.container-->
    </div>






	

	




