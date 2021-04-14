<!DOCTYPE html>
<html <?php language_attributes(); ?> <?php twentytwentyone_the_html_classes(); ?>>

<head>
  <title>CCS MACHANICAL</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/style.css">
  
  <?php wp_head(); ?>
</head>

<?php
if ( is_page( array( 'about-us','approach','projects' ) ) ) {

  $InnerHeader = "InnerHeader";
  $innerClass = "InnerBanner";

} else { 

  $InnerHeader = "";
  $innerClass = "";

} ?>


<body <?php body_class(); ?>>
  <div class="w-100 Wrapper">
    <header class="HeaderWrapper <?php echo $InnerHeader ;?>">
      <div class="TopNavWrapper">
        <div class="TopHeader">
          <div class="container-fluid">
            <div class="row">
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="th-left">
                  <ul>
                    <li>Phone: (352)237-6272 </li>
                    <li>test@emailaddres.com </li>
                  </ul>
                </div> <!--/.th-left-->
              </div> <!--/.cols-->
              <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                <div class="th-right">
                  <ul>
                    <li><a href="blog.html">Blog</a></li>
                    <li><a href="faq.html">FAQ's</a></li>
                    <li><a href="">Contact Us</a></li>
                  </ul>
                </div> <!--/.th-right-->
              </div> <!--/.cols-->
            </div> <!--/.row-->
          </div> <!--/.container-->
          
          
        </div>
        <!--/.TopHeader-->
        <div class="NavbarHeader">

          <nav class="navbar navbar-expand-md">
            <!-- Brand -->
            <div class="mobileNav">
              <a class="navbar-brand HideDesktop" href="index.html"> <img src="<?php bloginfo('template_directory'); ?>/images/CCS-Mechanical.png" alt=""></a>

              <!-- Toggler/collapsibe Button -->
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
                <span class="navbar-toggler-icon"></span>
              </button>
            </div>
           

            <!-- Navbar links -->
            <div class="collapse navbar-collapse" id="collapsibleNavbar">
                <?php  

                  wp_nav_menu( array('menu_class' => 'navbar-nav', 'menu' => 'top left menu' ) );
                ?>
              <ul class="navbar-nav">
                <!-- <li class="nav-item">
                  <a class="nav-link" href="about-us.html">About Us</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="approach.html">Approach</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="projects.html">Projects</a>
                </li> -->
                <li class="HideMobile logo">
                  <a href="index.html">
                    <img src="<?php bloginfo('template_directory'); ?>/images/CCS-Mechanical.png" alt="">
                  </a>
                  <p>We dont indent to be the biggest... Just the best.</p>
                </li>
               <!--  <li class="nav-item">
                  <a class="nav-link" href="testimonials.html">Testimonials</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="newsletters.html">Newsletters</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="vendor.html">Vendor</a> -->
                </li>
              </ul>
              <?php  

                  wp_nav_menu( array('menu_class' => 'navbar-nav', 'menu' => 'top right menu' ) );
                ?>
            </div>
          </nav>



        </div>
        <!--/.NavbarHeader-->
      </div>
      <!--/.TopNavWrapper-->
      <div class="w-100 BannerWrapper <?php echo $innerClass ;?>">
        <div class="w-100 BannerArea">
          <div class="w-100 BannerImage">
            <img src="<?php bloginfo('template_directory'); ?>/images/banner-images.png" alt="Los Angeles">
          </div>
          <!--/.BannerImage-->

          <div class="w-100 BannerContent">
            <?php
            if ( is_page( array( 'about-us' ) ) ) {
            ?>
             
             <h1>About <span>CCS</span> Mechanical <b class="estb"></b></h1>

            <?php } else if ( is_page( array( 'approach' ) ) ){ ?>

              <h1> <span>CCS</span> Approach <b class="estb"></b></h1>

            <?php }else if(is_page('projects')){ ?>  

              <h1> <span>CCS</span> Projects <b class="estb"></b> </h1>

            <?php }else{ ?>  
              
              <h1><span>CCS</span> Mechanical <b class="estb"></b></h1>
              <h2>Your Source for Quality Climate Control Systems</h2>

              <p>Product knowledge and project diversity compliment our solid
                <span> business practices and diligent work ethic.</span>
              </p>
              <a href="about-us.html" class="Button">View More...</a>

            <?php } ?>


          </div>
          <!--/.BannerContent-->
        </div>
        <!--/.BannerArea-->
      </div>
      <!--/.BannerWrapper-->

    </header>




