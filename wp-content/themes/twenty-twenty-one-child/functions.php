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

/* ============ Projects  ============ */
// Creating a Deals Custom Post Type
function crunchify_deals_custom_post_type() {
    $labels = array(
        'name'                => __( 'Projects' ),
        'singular_name'       => __( 'Project'),
        'menu_name'           => __( 'Projects'),
        'parent_item_colon'   => __( 'Parent Project'),
        'all_items'           => __( 'All Projects'),
        'view_item'           => __( 'View Project'),
        'add_new_item'        => __( 'Add New Project'),
        'add_new'             => __( 'Add New'),
        'edit_item'           => __( 'Edit Project'),
        'update_item'         => __( 'Update Project'),
        'search_items'        => __( 'Search Project'),
        'not_found'           => __( 'Not Found'),
        'not_found_in_trash'  => __( 'Not found in Trash')
    );
    $args = array(
        'label'               => __( 'projects'),
        'description'         => __( 'Best Crunchify Projects'),
        'labels'              => $labels,
        'supports'            => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'revisions', 'custom-fields'),
        'public'              => true,
        'hierarchical'        => false,
        'show_ui'             => true,
        'show_in_menu'        => true,
        'show_in_nav_menus'   => true,
        'show_in_admin_bar'   => true,
        'has_archive'         => true,
        'can_export'          => true,
        'exclude_from_search' => false,
            'yarpp_support'       => true,
        'taxonomies'          => array('post_tag'),
        'publicly_queryable'  => true,
        'capability_type'     => 'page'
);
    register_post_type( 'projects', $args );
}
add_action( 'init', 'crunchify_deals_custom_post_type', 0 );

// Let us create Taxonomy for Custom Post Type
add_action( 'init', 'crunchify_create_deals_custom_taxonomy', 0 );
 
//create a custom taxonomy name it "type" for your posts
function crunchify_create_deals_custom_taxonomy() {
 
  $labels = array(
    'name' => _x( 'Types', 'taxonomy general name' ),
    'singular_name' => _x( 'Type', 'taxonomy singular name' ),
    'search_items' =>  __( 'Search Types' ),
    'all_items' => __( 'All Types' ),
    'parent_item' => __( 'Parent Type' ),
    'parent_item_colon' => __( 'Parent Type:' ),
    'edit_item' => __( 'Edit Type' ), 
    'update_item' => __( 'Update Type' ),
    'add_new_item' => __( 'Add New Type' ),
    'new_item_name' => __( 'New Type Name' ),
    'menu_name' => __( 'Types' ),
  );    
 
  register_taxonomy('types',array('projects'), array(
    'hierarchical' => true,
    'labels' => $labels,
    'show_ui' => true,
    'show_admin_column' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'type' ),
  ));
}


/* ============ Newsletter ============ */

add_action( 'init', 'create_newsletter_post_type' );

function create_newsletter_post_type() {

   $labels = array(
    'name' => __( 'Newsletter' ),
    'singular_name' => __( 'Newsletter' )
    );

    $args = array(
    'labels' => $labels,
    'public' => true,
    'supports'  => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'comments', 'revisions', 'custom-fields', ),
    'has_archive' => true,
    // 'menu_icon' => 'dashicons-format-status',
    'rewrite' => array('slug' => 'newsletter'),
    );

  register_post_type( 'newsletter', $args);
}

/* ========================== Projects include ============================== */

add_action( 'init', 'create_projects_include_post_type' );

function create_projects_include_post_type() {

   $labels = array(
    'name' => __( 'Projects include' ),
    'singular_name' => __( 'Projects include' )
    );

    $args = array(
    'labels' => $labels,
    'public' => true,
    'supports'  => array( 'title', 'editor', 'excerpt', 'author', 'thumbnail', 'comments', 'revisions', 'custom-fields', ),
    'has_archive' => true,
    // 'menu_icon' => 'dashicons-format-status',
    'rewrite' => array('slug' => 'projects_include'),
    );

  register_post_type( 'projects_include', $args);
}

