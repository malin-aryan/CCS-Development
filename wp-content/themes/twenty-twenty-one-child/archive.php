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
<div class="w-100 pad75_0 InnerContentArea">
      <div class="custom-container">
<?php if ( have_posts() ) : ?>
	
	  <div class="row">
          <div class="col-md-12">
            <div class="w-100 InnerTop mbot_50">
	<!-- <header class="page-header alignwide"> -->
		<?php the_archive_title( '<h2 class="t-center x30 pbot_20">', '</h2>' ); ?>
		<?php if ( $description ) : ?>
			<div class="text-center x16"><?php echo wp_kses_post( wpautop( $description ) ); ?></div>
		<?php endif; ?>
	<!-- </header>.page-header -->
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
		</div>
		</div>
          </div>
        </div>
	</div>

	<?php twenty_twenty_one_the_posts_navigation(); ?>

<?php else : ?>
	<?php get_template_part( 'template-parts/content/content-none' ); ?>
<?php endif; ?>
</div>
        </div>
<?php get_footer(); ?>
