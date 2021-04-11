<?php
/*
 * Template Name: Home page Template
 * description: >-
  Page template to display portfolio custom post types 
 * underneath the page content
 */

get_header();

?>

    <section class="w-100 AboutWrapper">
      <div class="custom-container">
        <div class="row">
          <div class="col-xl-5 col-lg-6 col-md-12 col-sm-12">
            <div class="w-100 AboutImg">
              <div class="ImgBox">
                 <?php 
                  $image = get_field('about_us_image');
                  
                ?>
                <img src="<?php echo $image;?>" alt="">
              </div>
              <!--/.ImgBox-->

              <div class="W-100 Aboutcontent">
                <div class="ContentImg">
                  <img src="<?php bloginfo('template_directory'); ?>/images/About_Image1.jpg" alt="">
                  <div class="CimgDetails">
                    <p>Industrial Projects</p>
                    <a href="">Read More</a>
                  </div>

                </div>
                <!--/.ContentImg-->
                <div class="ContentImg">
                  <img src="<?php bloginfo('template_directory'); ?>/images/About_Image1.png" alt="">
                  <div class="CimgDetails CimgDetails2">
                    <p>Industrial Projects</p>
                    <a href="">Read More</a>
                  </div>
                </div>
                <!--/.ContentImg-->
              </div>
              <!--/.Aboutcontent-->

            </div>
            <!--/.AboutImg-->

          </div>
          <!--/.cols-->
          <div class="col-xl-5 col-lg-6 col-md-12 col-sm-12">
            <div class="w-100 AboutRgtCont">
              <h3><?php the_field('about_us'); ?></h3>
              <?php the_field('about_us_content'); ?>
              

              <a href="about-us.html" class="Button">View More...</a>
            </div>
            <!--/.AboutRgtCont-->

          </div>
          <!--/.cols-->
        </div>
        <!--/.row-->
      </div>
      <!--/.container--> 
    </section>
    <section class="VIntigration">
      <div class="custom-container">
        <div class="row">
          <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
            <div class="w-100 VintLeft">
              <h4><?php the_field('verticle_integration'); ?></h4>
              <div class="w-100 VintImage">
                <?php 
                  $image = get_field('verticle_integration_image');
                  
                ?>
                <img src="<?php echo $image ;?>" alt="">
              </div>
              <!--/.VintImage-->
            </div>
            <!--/.VintLeft-->

          </div>
          <!--/.cols-->
          <div class="col-xl-6 col-lg-6 col-md-12 col-sm-12">
            <div class="w-100 VintRgt">
              <?php the_field('verticle_integration_content'); ?>
              <!-- <p>Under the leadership of the family patriarch, CCS Mechanical started as an installer of residential
                ductwork in 1969.
                By 1984, with Louie Wise Jr. at the helm, CCS Mechanical expanded into commerical, industrial and public
                works projects.
                CCS Mechanical has built a solid reputation through fair business dealing and striving to be on the
                leading edge of HVAC
                technology. As a leading business in Ocala, Florida, CCS Mechanical believes that a strong community is
                built through
                community service and therefore is active with various local charitable organizations. Today, with 62
                employees,
                CCS Mechanical firmly looks forward to the future.</p>

              <p class="VintRgt-head"> Our Vision</p>

              <ul class="VintList">
                <li>Moving into the third generation of family ownership, CCS Mechanical continues the
                  highest level of quality workmanship. </li>
                <li>Successful integration of training and education into our work place provides an
                  environment conducive to employee safety, productivity and growth. </li>
                <li>Using state of the art technology, we will create cost effective solutions while
                  maintaining our competitiveness. </li>
                <li>CCS Mechanical will achieve a more visible corporate imagethrough quality projects,
                  industry leading innovations and community service. </li>
              </ul> -->
            </div>
          </div>
          <!--/.cols-->
        </div>
        <!--/.row-->
      </div>
      <!--/.container-->
    </section>
    <section class="w-100 QualifiedMarket">
      <div class="custom-container">
        <div class="row">
          <div class="col-md-12">
            <div class="Heading">
              <h4><?php the_field('ccs_mechanical'); ?>
              </h4>
            </div>
          </div>
        </div>
      </div>

      <div class="w-100 QualifiedBoxArea">

        <div class="custom-container">
          <div class="row">
          <div class="col-xl-4 col-lg-4 col-md-12 ">
            <div class="w-100 QB-area">
              <div class="w-100 QB-top">
                <div class="w-100 QB-Image">
                  <img src="<?php bloginfo('template_directory'); ?>/images/Qualifed-Image-1.jpg" alt="">
                </div>
                <!--/.QB-Image-->
                <div class="QB-hover">
                  <a href=""><img src="<?php bloginfo('template_directory'); ?>/images/youtube.png" alt=""></a>
                  <a href=""><img src="<?php bloginfo('template_directory'); ?>/images/attachment.png" alt=""></a>
                </div>
                <div class="QB-New">
                  <a href="" class="new">New</a>
                </div>
                <!--/.QB-New-->
              </div>
              <!--/.QB-top-->
              <div class="w-100 QB-details">
                <div class="w-100 QBDetails-Head">
                  <p class="headtext">Sumter Landing</p>
                  <p>Green</p>
                </div>
                <!--/.QBDetails-Head-->
                <div class="w-100 QBDetails-list">
                  <ul>
                    <li>
                      <div class="icons"> <img src="<?php bloginfo('template_directory'); ?>/images/Qualified-Markets-Icon-1.png" alt="">
                        <p>Mech. Value</p>
                      </div>
                      <p>$2,000,000</p>
                    </li>
                    <li>
                      <div class="icons"> <img src="<?php bloginfo('template_directory'); ?>/images/Qualified-Markets-Icon-2.png" alt="">
                        <p>Location</p>
                      </div>
                      <p>Lady Lake FL</p>
                    </li>
                    <li>
                      <div class="icons"> <img src="<?php bloginfo('template_directory'); ?>/images/Qualified-Markets-Icon-3.png" alt="">
                        <p>Const. Manager</p>
                      </div>
                      <p>Edwards Construction</p>
                    </li>
                  </ul>
                </div>
                <!--/.QBDetails-list-->
              </div>
              <!--/.QB-details-->
            </div>
            <!--QB-area-->
          </div>
          <!--/.cols-->
          <div class="col-xl-4 col-lg-4 col-md-12">
            <div class="w-100 QB-area">
              <div class="w-100 QB-top">
                <div class="w-100 QB-Image">
                  <img src="<?php bloginfo('template_directory'); ?>/images/Qualifed-Image-1.jpg" alt="">
                </div>
                <!--/.QB-Image-->
                <div class="QB-hover">
                  <a href=""><img src="<?php bloginfo('template_directory'); ?>/images/youtube.png" alt=""></a>
                  <a href=""><img src="<?php bloginfo('template_directory'); ?>/images/attachment.png" alt=""></a>
                </div>
                <div class="QB-New">
                  <a href="" class="new">New</a>
                </div>
                <!--/.QB-New-->
              </div>
              <!--/.QB-top-->
              <div class="w-100 QB-details">
                <div class="w-100 QBDetails-Head">
                  <p class="headtext">Sumter Landing</p>
                  <p>Green</p>
                </div>
                <!--/.QBDetails-Head-->
                <div class="w-100 QBDetails-list">
                  <ul>
                    <li>
                      <div class="icons"> <img src="<?php bloginfo('template_directory'); ?>/images/Qualified-Markets-Icon-1.png" alt="">
                        <p>Mech. Value</p>
                      </div>
                      <p>$2,000,000</p>
                    </li>
                    <li>
                      <div class="icons"> <img src="<?php bloginfo('template_directory'); ?>/images/Qualified-Markets-Icon-2.png" alt="">
                        <p>Location</p>
                      </div>
                      <p>Lady Lake FL</p>
                    </li>
                    <li>
                      <div class="icons"> <img src="<?php bloginfo('template_directory'); ?>/images/Qualified-Markets-Icon-3.png" alt="">
                        <p>Const. Manager</p>
                      </div>
                      <p>Edwards Construction</p>
                    </li>
                  </ul>
                </div>
                <!--/.QBDetails-list-->
              </div>
              <!--/.QB-details-->
            </div>
            <!--QB-area-->
          </div>
          <!--/.cols-->
          <div class="col-md-4">
            <div class="w-100 QB-area">
              <div class="w-100 QB-top">
                <div class="w-100 QB-Image">
                  <img src="<?php bloginfo('template_directory'); ?>/images/Qualifed-Image-1.jpg" alt="">
                </div>
                <!--/.QB-Image-->
                <div class="QB-hover">
                  <a href=""><img src="<?php bloginfo('template_directory'); ?>/images/youtube.png" alt=""></a>
                  <a href=""><img src="<?php bloginfo('template_directory'); ?>/images/attachment.png" alt=""></a>
                </div>
                <div class="QB-New">
                  <a href="" class="new">New</a>
                </div>
                <!--/.QB-New-->
              </div>
              <!--/.QB-top-->
              <div class="w-100 QB-details">
                <div class="w-100 QBDetails-Head">
                  <p class="headtext">Sumter Landing</p>
                  <p>Green</p>
                </div>
                <!--/.QBDetails-Head-->
                <div class="w-100 QBDetails-list">
                  <ul>
                    <li>
                      <div class="icons"> <img src="<?php bloginfo('template_directory'); ?>/images/Qualified-Markets-Icon-1.png" alt="">
                        <p>Mech. Value</p>
                      </div>
                      <p>$2,000,000</p>
                    </li>
                    <li>
                      <div class="icons"> <img src="<?php bloginfo('template_directory'); ?>/images/Qualified-Markets-Icon-2.png" alt="">
                        <p>Location</p>
                      </div>
                      <p>Lady Lake FL</p>
                    </li>
                    <li>
                      <div class="icons"> <img src="<?php bloginfo('template_directory'); ?>/images/Qualified-Markets-Icon-3.png" alt="">
                        <p>Const. Manager</p>
                      </div>
                      <p>Edwards Construction</p>
                    </li>
                  </ul>
                </div>
                <!--/.QBDetails-list-->
              </div>
              <!--/.QB-details-->
            </div>
            <!--QB-area-->
          </div>
          <!--/.cols-->
        </div>

      </div>
      <!--/.QualifuedBoxArea-->
      <div class="w-100 viewmorearea">
        <div class="custom-container">
          <div class="row">
            <div class="col-md-12">
              <div class="w-100 viewmore">
                <a href="" class="Button">View More</a>
              </div>
            </div>
          </div>
        </div>
        <!--/.container-->
      </div>
      <!--/.viewmorearea-->


    </section>
    <!--/.QualifiedMarket-->

    <section class="w-100 Newsletter">
      <div class="custom-container">
        <div class="row">
          <div class="col-md-6">
            <div class="w-100 SubsLeft">
              <h5>Want to get updates?
                <span> Subscribe to our Newsletter</span>
              </h5>
            </div>
            <!--/.SubsLeft-->
          </div>
          <!--/.cols-->
          <div class="col-md-6">
            <div class="w-100 SubsRight">
                 <input type="text" class="form-control subemail" placeholder="Example: xys@gmail.com"> <button class="btn subbtn">Subscribe</button>
            </div>
            <!--/.SubsRight-->
          </div>
          <!--/.cols-->
        </div>
        <!--/.row-->
      </div>
      <!--/.custom-container-->

    </section>
    <section class="w-100 NewsletterArchive">
      <div class="custom-container">
          <div class="row">
            <div class="col-md-12">
                <div class="w-100 heading">
                      <h6><?php the_field('newsletter'); ?></h6>
                      <?php the_field('newsletter_content'); ?>
                      
                </div>
            </div><!--cols-->
          </div><!--/.row-->
          <div class="ArchiveList">
            <div class="row">
              <div class="col-md-12">
                <ul>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
                  <li>
                    <a href=""></a>
                    <p> The CCS Fabricator
                      CCS Mechanical Newsletter 
                         December 2014</p>
                  </li>
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
