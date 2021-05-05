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
                    <h4>Our commercial projects include:</h4>
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
                          <tr>
                            <td>Sumter Landing</td>
                            <td> $2,000,000</td>
                            <td>Lady Lake FL</td>
                            <td>Edwards Construction</td>
                          </tr>
                          <tr>
                            <td>Center of Excellence</td>
                            <td>$1,638,567</td>
                            <td>Gainesville FL</td>
                            <td>McClier Corp.</td>
                          </tr>
                          <tr>
                             <td> Downtown V</td>
                            <td>$1,550,000</td>
                            <td>Lady Lake FL</td>
                            <td>Edwards Construction</td>
                          </tr>
                          <tr>
                            <td> Daytona International Visitor Center</td>
                            <td>$1,100,000</td>
                            <td>Daytona Bch FL</td>
                            <td>Foley & Assoc.</td>
                          </tr>
                          <tr>
                             <td> Lynn Business Center</td>
                            <td>$1,000,000</td>
                            <td>Deland FL</td>
                            <td>Foley & Assoc.</td>
                          </tr>
                          <tr>
                             <td>Circle Square Ranch</td>
                            <td>$944,609</td>
                            <td>Ocala FL</td>
                            <td>Edwards Construction</td>
                          </tr>
                          <tr>
                             <td> Holiday Inn</td>
                            <td>$877,850</td>
                            <td>Ocala FL</td>
                            <td>FeasterCo</td>
                          </tr>
                          <tr>
                              <td> Cane Garden Country Club</td>
                            <td>$750,000</td>
                            <td>Villages FL</td>
                            <td>Edwards Construction</td>
                          </tr>
                          <tr>
                            
                            <td> Alachua Regional Service Center</td>
                            <td>$600,000</td>
                            <td>Gainesville FL</td>
                            <td>Perry-Parrish</td>
                          </tr>
                          <tr>
                             <td> Golden Ocala Fitness Center</td>
                            <td>$500,162</td>
                            <td>Ocala FL</td>
                            <td>Mark Spaulding Const</td>
                          </tr>
                          <tr>
                             <td>Golden Ocala Country Club</td>
                            <td>$450,000</td>
                            <td>Ocala FL</td>
                            <td></td>td>
                          </tr>
                          <tr>
                             <td>Living Waters Worship</td>
                            <td>$450,000</td>
                            <td>Ocala FL</td>
                            <td>Fabian Commercial</td>
                          </tr>
                          <tr> <td>Homewood Suites</td>
                            <td>$357,767</td>
                            <td>Ocala FL</td>
                            <td>FeasterCo</td>
                          </tr>
                          <tr>
                              <td> Comfort Suites</td>
                            <td>$309,018</td>
                            <td>Ocala FL</td>
                            <td>Edwards Construction</td>
                          </tr>
                          <tr>
                             <td>Ocala Electric Utilities</td>
                            <td>$292,000</td>
                            <td>Ocala FL</td>
                            <td>McLaughlin Co.</td>
                          </tr>
                          <tr>
                             <td>Constans Theater</td>
                            <td>$250,000</td>
                            <td>Tampa FL</td>
                            <td>AD Morgan</td>
                          </tr>
                          <tr>
                             <td>Gainesville Community Playhouse</td>
                            <td>$206,408td</td>
                            <td>Gainesville FL</td>
                            <td>Nixon Construction</td>
                          </tr>
                          <tr>
                             <td> All Pro Imports</td>
                            <td>$150,000</td>
                            <td>Ocala FL</td>
                            <td>Fabian Const</td>
                          </tr>
                          <tr>
                             <td> Boyd Corporate Center</td>
                            <td>$120,546</td>
                            <td>Ocala FL</td>
                            <td>Moss Construction</td>
                          </tr>
                         
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
