<?php
/*
 * Template Name: Plan room page Template
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
              <h2 class="t-center x30 pbot_20"> CCS Mechanical User's Agreement </h2>
              <p class="text-center x16">
                The information found on the project's detail page is provided for estimation purposes only.  CCS Mechanical reserves the right to control or limit access to the projects' details.  Access may be denied at any time for any reason.  It is understood that it is the vendor's responsibility to frequently check on updates.
              </p>
              <ul>
                <li>If you agree to the terms, please <a href="<?php echo get_site_url(); ?>/plan-room-project-list" target="_blank">click here</a></li>

                </li>If you disgree to the terms, please <a href="<?php echo get_site_url();?>/bid-calendar">click here</a></li>
              </ul>
              
            </div>
          </div>
        </div>
      
      </div>
      <!--/.container-->

    </div>
    <!--/.InnerContentArea-->



   

<?php
get_footer();
