<?php // Opening PHP tag - nothing should be before this, not even whitespace
 
// Custom Function to Include
function my_favicon_link() {
    echo '<link rel="shortcut icon" type="image/x-icon" href="/favicon.ico" />' . "\n";
}
add_action( 'wp_head', 'my_favicon_link' );


add_action( 'wp_enqueue_scripts', 'my_plugin_add_stylesheet' );
function my_plugin_add_stylesheet() {
    wp_enqueue_style( 'my-style', get_stylesheet_directory_uri() . '/css/style.css' );
    wp_enqueue_script( 'theme_js', get_stylesheet_directory_uri() . '/js/jquery.min.js', array( 'jquery' ), '1.0', true );
    wp_enqueue_script( 'bootstrap_js', get_stylesheet_directory_uri() . '/js/bootstrap.min.js', array( 'jquery' ), '1.0', true );
    wp_enqueue_script( 'script_js', get_stylesheet_directory_uri() . '/js/script.js', array( 'jquery' ), '1.0', true );
}


