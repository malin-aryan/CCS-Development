<?php
/**
 * The template for displaying archive pages
 *
 * @link https://developer.wordpress.org/themes/basics/template-hierarchy/
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

get_header();

$description = get_the_archive_description();
?>

<?php if ( have_posts() ) : ?>

 <div class="w-100 pad75_0 InnerContentArea">
      <div class="custom-container">
        <div class="row">
          <div class="col-md-12">
            <div class="w-100 InnerTop mbot_50">
              <h2 class="t-center x30 pbot_20">CCS Mechanical <?php single_term_title(  ); ?></h2>
              <p class="text-center x16">
              <?php echo strip_tags(wp_kses_post( wpautop( $description ) )); ?>
                
              </p>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="w-100 InnerBot">
              <div class="w-100 ProjectsDetails ProjectList">
                <div class="row">

                <?php while ( have_posts() ) : ?>
					<?php the_post(); ?>
					<?php get_template_part( 'template-parts/content/content', get_theme_mod( 'display_excerpt_or_full_post', 'excerpt' ) ); ?>
				<?php endwhile; ?>
				

			<?php twenty_twenty_one_the_posts_navigation(); ?>

		<?php else : ?>
			<?php get_template_part( 'template-parts/content/content-none' ); ?>
		<?php endif; ?>	

                  



                </div>
                <!--/.row-->

                <div class="row">
                  <div class="col-md-12">
                    <h4>Our <?php single_term_title(  ); ?> include:</h4>
                  </div>
                  <!--/.cols-->
                </div>
                <!--/.row-->
                <div class="row">
                  <div class="col-md-12">

                    <div class="ProjectsInclude">
                      <table class="table table-bordered">
                        <thead>
                          <tr>
                            <th>Project Name</th>
                            <th>Mech.Value</th>
                            <th> Location</th>
                            <th>Construction Manager</th>
                          </tr>
                        </thead>
  
                        <tbody>
                        <?php 
			            $args = array( 'post_type' => 'projects_include', 'posts_per_page' => 20 ,'order'=>'ASC');
			            $the_query = new WP_Query( $args ); 
			            ?>
			            <?php if ( $the_query->have_posts() ) : ?>
			            <?php while ( $the_query->have_posts() ) : $the_query->the_post(); ?>
						<tr>
							<td><?php the_title(); ?></td>
							<td><?php echo the_field('value');?></td>
							<td><?php echo the_field('location');?></td>
							<td><?php echo the_field('construction_manager');?></td>
						</tr>
			           
			            <?php endwhile;
			            wp_reset_postdata(); ?>
			            <?php else:  ?>
			            <p><?php _e( 'Sorry, no posts matched your criteria.' ); ?></p>
			            <?php endif; ?>	

                         
                         
                        </tbody>
  
                      </table>
  
                    </div>

                   
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
        </div>
        <!--/.row-->
      </div>
      <!--/.container-->

    </div>
    <!--/.InnerContentArea-->


<?php get_footer(); ?>
