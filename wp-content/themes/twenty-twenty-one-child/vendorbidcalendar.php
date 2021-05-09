<?php
/*
 * Template Name: Vendor Bid Calendar Template
 * description: >-
  Page template to display portfolio custom post types 
 * underneath the page content
 */

get_header();

?>



 <div class="w-100 pad75_0 DBWrapper">
                        <div class="container-fluid">
                            <div class="row">
                                    <div class="col-xl-12 col-lg-4 col-md-4 col-sm-12">                                            
                                        <div class="w-100 bgr-g rad3 bdr dbleft">
                                                <div class="w-100 dbl-head">
                                                        <img src="images/CCS-Mechanical.png" alt="">
                                                        <h2 class="x20 color-b">CCS Mechnical Inc.</h2>
                                                </div> <!--/.dbl-head-->
                                                <div class="w-100 dbl-list">
                                                        <?php echo do_shortcode('[ai1ec]');?>
                                                </div> <!--/.dbl-list-->
                                        </div> <!--/.dbleft-->
 
                                    </div> <!--/.cols-->
                                    <div class="col--xl-8 col-lg-8 col-md-8 col-sm-12">
                                        <div class="w-100 bgr-w bdr rad3 dbright">
                                            <div class="w-100 goolge-calender">

                                            </div>
                                        </div> <!--/.dbright-->
                                    </div> <!--/.cols-->
                            </div> <!--/.row-->
                        </div> <!--/.container-->
                    </div>  <!--/.DashboardWrapper-->   

<?php
get_footer();
