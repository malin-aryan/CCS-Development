<?php
/*
 * Template Name: Contact Us page Template
 * description: >-
  Page template to display portfolio custom post types 
 * underneath the page content
 */

get_header();

?>

   <div class="w-100 pad75_0 InnerContentArea">
      <div class="container">
        <div class="row">

          <div class="col-md-12">
            <div class="w-100 InnerBot">

              <div class="row">
                <div class="col-md-4">
                  <div class="w-100 Contact-left">
                    <h3><?php the_field('contracting_methods'); ?></h3>
                    <?php the_field('contracting_methods__info'); ?>
                    
                  </div>                 
                </div>
                <!--/.cols-->
                <div class="col-md-8">

                  <div class="w-100 ContactForm">
				<?php
				echo do_shortcode('[contact-form-7 id="71" title="Contact form 1"]');
				?>

                    
                  </div>
                  <!--/.ContactForm-->

                </div>
              </div>
              <!--/.row-->


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
    <div class="w-100 mtop_30 LocationMap">
      <div style="width: 100%"><iframe scrolling="no" marginheight="0" marginwidth="0" 
        src="https://maps.google.com/maps?width=100%25&amp;height=450&amp;hl=en&amp;q=737%20SW%2057th%20Ave%20Ocala,%20FL+(CCS%20MECHANICAL)&amp;t=&amp;z=14&amp;ie=UTF8&amp;iwloc=B&amp;output=embed" width="100%" height="350" frameborder="0"></iframe></div>
    </div>



    

<?php
get_footer();
