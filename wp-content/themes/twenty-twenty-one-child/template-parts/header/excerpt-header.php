<?php
/**
 * Displays the post header
 *
 * @package WordPress
 * @subpackage Twenty_Twenty_One
 * @since Twenty Twenty-One 1.0
 */

// Don't show the title if the post-format is `aside` or `status`.
$post_format = get_post_format();
if ( 'aside' === $post_format || 'status' === $post_format ) {
	return;
}
?>
<div class="col-md-4">
	<div class="w-100 ProjectBox">
		<div class="PImage">
			<img src="<?php echo get_the_post_thumbnail_url(); ?>" alt="">
		</div>
		<!--/.PImage-->
		<div class="w-100 PContent">
			<p class="heading"><?php echo the_title(); ?></p>
			<a href="<?php echo get_permalink();?>">View Project Details</a>
		</div>
		<!--/.PContent-->
	</div>
	<!--/.ProjectBox-->
</div>

