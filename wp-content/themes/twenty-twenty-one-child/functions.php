<?php // Opening PHP tag - nothing should be before this, not even whitespace
 
// Custom Function to Include
function my_favicon_link() {
    echo '<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />' . "\n";
}
add_action( 'wp_head', 'my_favicon_link' );


add_action( 'wp_enqueue_scripts', 'my_plugin_add_stylesheet' );
function my_plugin_add_stylesheet() {
    wp_enqueue_style( 'style', get_stylesheet_directory_uri() . '/css/style.css' );
    wp_enqueue_script( 'theme_js', get_stylesheet_directory_uri() . '/js/jquery.min.js', array( 'jquery' ), '1.0', true );
    wp_enqueue_script( 'bootstrap_js', get_stylesheet_directory_uri() . '/js/bootstrap.min.js', array( 'jquery' ), '1.0', true );
    wp_enqueue_script( 'script_js', get_stylesheet_directory_uri() . '/js/script.js', array( 'jquery' ), '1.0', true );
}




add_filter( 'nav_menu_link_attributes', function($atts) {
        $atts['class'] = "nav-link";
        return $atts;
}, 100, 1 );

/* ============ Testimonials ============ */

add_action( 'init', 'create_custom_post_type' );

function create_custom_post_type() {

   $labels = array(
    'name' => __( 'Testimonials' ),
    'singular_name' => __( 'Testimonials' )
    );

    $args = array(
    'labels' => $labels,
    'public' => true,
    'supports'  => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'comments', 'revisions', 'custom-fields', ),
    'has_archive' => true,
    'menu_icon' => 'dashicons-format-status',
    'rewrite' => array('slug' => 'testimonials'),
    );

  register_post_type( 'testimonials', $args);
}