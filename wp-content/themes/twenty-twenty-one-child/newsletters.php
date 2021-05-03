<?php
/*
 * Template Name: Newsletter page Template
 * description: >-
  Page template to display portfolio custom post types 
 * underneath the page content
 */

get_header();

?>

  <section class="w-100 NewsletterArchive">
      <div class="custom-container">
          <div class="row">
            <div class="col-md-12">
                <div class="w-100 heading">
                      <h6><?php the_field('newsletter_archive'); ?></h6>
                      <?php the_field('info'); ?>
                      
                </div>
            </div><!--cols-->
          </div><!--/.row-->
          <div class="ArchiveList">
            <div class="row">
              <div class="col-md-12">
                <ul>
                  <?php 
                    $args = array( 'post_type' => 'newsletter', 'posts_per_page' => 10 ,'order'=>'ASC');
                    $the_query = new WP_Query( $args ); 
                    ?>
                    <?php if ( $the_query->have_posts() ) : ?>
                    <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
                   
                     
                      <li>
                        <a href="<?php echo the_field('image');?>" target="_blank"></a>
                        <p> <?php the_content(); ?> </p>
                      </li>
                   
                          
                          
                    <?php endwhile;
                    wp_reset_postdata(); ?>
                    <?php else:  ?>
                    <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
                    <?php endif; ?>


                 
                </ul>
              </div> <!--/.cols-->
            </div><!--/.row-->

            <div class="row">
                <div class="col-md-12 text-right">
                    <a href="" class="Button">View More...</a>
                </div> <!--/.cols-->
            </div><!--/.row-->
          </div><!--/.ArchiveList-->
         
      </div> <!--/.container-->
    </section>



  
<?php
get_footer();
