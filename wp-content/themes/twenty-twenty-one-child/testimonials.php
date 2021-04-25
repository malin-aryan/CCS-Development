<?php
/*
 * Template Name: Testimonials us page Template
 * description: >-
  Page template to display portfolio custom post types 
 * underneath the page content
 */

get_header();

?>

  <div class="w-100 pad75_0 InnerContentArea">
      <div class="custom-container">
        <div class="row">
          <div class="w-100 InnerBot">
          <?php 
            $args = array( 'post_type' => 'testimonials', 'posts_per_page' => 10 ,'order'=>'ASC');
            $the_query = new WP_Query( $args ); 
            ?>
            <?php if ( $the_query->have_posts() ) : ?>
            <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
           
              <div class="col-lg-12">
              <div class="Testimonial-Box">

                <div class="row">
                  <div class="col-md-2 col-sm-3 col-12">
                    <div class="w-100 TestImg">
                      <img src="<?php the_post_thumbnail_url();?>" alt="">
                    </div>
                  </div>
                  <!--/.cols-->
                  <div class="col-md-10 col-sm-9 col-12">
                    <div class="w-100 TestContent">
                      <h4><?php the_title(); ?></h4>
                      <?php the_content(); ?> 
                    </div>
                    <!--/.TestContent-->

                  </div>
                  <!--/.cols-->
                </div>
                <!--/.row-->

                <div class="row">
                  <div class="col-md-12">
                    <div class="w-100 TestBy">
                      <span>
                        <p class="name"><?php echo the_field('name');?></p>
                        <p> <?php echo the_field('position');?></p>
                        <p> <?php echo the_field('location');?></p>
                      </span>
                      <img src="<?php echo the_field('image');?>" alt="">
                    </div>
                    <!--/.TestBy-->
                  </div>
                  <!--/.cols-->
                </div>
                <!--/.row-->
                </div>
            <!--/.Testimonial-Box-->
              </div>
              <!--/.cols-->
           
                  
                  
            <?php endwhile;
            wp_reset_postdata(); ?>
            <?php else:  ?>
            <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
            <?php endif; ?>

                

          </div>
          <!--/.InnerBot-->

        </div>
        <!--/.row-->
      </div>
      <!--/.container-->

    </div>
    <!--/.InnerContentArea-->



 

<?php
get_footer();
