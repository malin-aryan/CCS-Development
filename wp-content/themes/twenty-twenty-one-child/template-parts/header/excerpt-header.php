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

<div class="w-100 ProjectBox">
<div class="PImage">
	<?php
	twenty_twenty_one_post_thumbnail();
	?>
</div>
<div class="w-100 PContent">
                        <!-- <p class="heading">Hampton Inn &amp; Suite</p> -->
                        
                      
	<?php
	echo '<p class="heading">'.the_title().'</p>';
	?>
	<a href="<?php echo get_permalink();?>">View Project Details</a>
	</div>
</div><!-- .entry-header -->
