<?php

//remove a barra de admin
add_filter('show_admin_bar', '__return_false');
//remove a tag do generator
remove_action('wp_head', 'wp_generator');
//habilita ediçao de menus
add_theme_support('menus');
//habilita thumb em posts
add_theme_support('post-thumbnails');

// ==================================================================
// Theme stylesheets
// ==================================================================
function defato_theme_styles()
{
    wp_enqueue_script('jquery');
    wp_enqueue_script('jquery-ui-widget');
    wp_enqueue_style('defato-style', get_stylesheet_uri(), '15.11.2', array(), 'all');
    wp_enqueue_style('google-font', '//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic|Muli:400,400italic|Montserrat:400,700', null, array(), 'all');
    if (is_singular() && comments_open() && get_option('thread_comments')) wp_enqueue_script('comment-reply');
    wp_enqueue_script('defato-respond', get_template_directory_uri() . '/js/respond.min.js', array('jquery'), '1.0.1', true);
    wp_enqueue_script('defato-fitvids', get_template_directory_uri() . '/js/fitvids.min.js', array('jquery'), '1.0', true);
    wp_enqueue_script('defato-tinynav', get_template_directory_uri() . '/js/tinynav.min.js', array('jquery'), null, true);
    wp_enqueue_script('defato-scripts', get_template_directory_uri() . '/js/scripts.js', array('jquery'), null, true);
}

add_action('wp_enqueue_scripts', 'defato_theme_styles');

// THUMB
include('funcoes/thumb.php');

//REMOVER FOTOS REVISTA CINEMA TV DEFATO DO AQRCHIVE
function my_custom_get_posts($query)
{
    if (is_admin() || !$query->is_main_query())
        return;

    if ($query->is_archive()) {
        $query->set('post__in', array(get_cat_ID('fotos'), get_cat_ID('tv defato'), get_cat_ID('revista'), get_cat_ID('cinema')));
    }
}

//add_action('pre_get_posts', 'my_custom_get_posts', 1);

//REMOVER FOTOS REVISTA CINEMA TV DEFATO
function exclude_widget_categories($args)
{
    $exclude = get_cat_ID('fotos') . ',' . get_cat_ID('tv defato') . ',' . get_cat_ID('revista') . ',' . get_cat_ID('cinema') . ',' . get_cat_ID('em alta') . ',' . get_cat_ID('destaque');
    $args["exclude"] = $exclude;
    return $args;
}

add_filter("widget_categories_args", "exclude_widget_categories");

//ativar single.php para categorias
add_filter('single_template', 'checar_single_categoria');

function checar_single_categoria($t)
{
    foreach ((array)get_the_category() as $cat) {
        if (file_exists(TEMPLATEPATH . "/single-{$cat->slug}.php"))
            return TEMPLATEPATH . "/single-{$cat->slug}.php";

        if ($cat->parent) {
            $cat = get_the_category_by_ID($cat->parent);

            if (file_exists(TEMPLATEPATH . "/single-{$cat->slug}.php"))
                return TEMPLATEPATH . "/single-{$cat->slug}.php";
        }
    }
    return $t;
}

function wpb_set_post_views($postID)
{
    $count_key = 'wpb_post_views_count';
    $count = get_post_meta($postID, $count_key, true);
    if ($count == '') {
        $count = 0;
        delete_post_meta($postID, $count_key);
        add_post_meta($postID, $count_key, '0');
    } else {
        $count++;
        update_post_meta($postID, $count_key, $count);
    }
}

remove_action('wp_head', 'adjacent_posts_rel_link_wp_head', 10, 0);

function wpb_track_post_views($post_id)
{
    if (!is_single()) return;
    if (empty ($post_id)) {
        global $post;
        $post_id = $post->ID;
    }
    wpb_set_post_views($post_id);
}

add_action('wp_head', 'wpb_track_post_views');


function wpb_count_fb_stats($post_id)
{
    if (!is_single()) return;

    if (empty ($post_id)) {
        global $post;
        $post_id = $post->ID;
    }

    $json = file_get_contents('http://graph.facebook.com/' . get_the_permalink($post_id));
    $obj = json_decode($json);

    $num_comentarios = $obj->share->comment_count;
    $num_comp = $obj->share->share_count;

    if (!is_numeric($num_comentarios) || !is_numeric($num_comp))
        return;

    $comen_key = 'wpb_fb_comments';
    $comp_key = 'wpb_fb_comp';

    $atual_coment_num = get_post_meta($post_id, $comen_key, true);
    $atual_comp_num = get_post_meta($post_id, $comp_key, true);

    if ($atual_coment_num == '') {
        delete_post_meta($post_id, $comen_key);
        add_post_meta($post_id, $comen_key, $num_comentarios);
    } else {
        update_post_meta($post_id, $comen_key, $num_comentarios);
    }
    if ($atual_comp_num == '') {
        delete_post_meta($post_id, $comp_key);
        add_post_meta($post_id, $comp_key, $num_comp);
    } else {
        update_post_meta($post_id, $comp_key, $num_comp);
    }
}

add_action('wp_head', 'wpb_count_fb_stats');


function get_child_cat($categorias, $id_parent = 0)
{
    foreach (($categorias) as $categoria) {

        if (cat_is_ancestor_of($id_parent, $categoria)) {

            return $categoria;

        }
    }
}

function new_excerpt_more($more)
{
    global $post;
    return ' [...] <a href="' . get_permalink($post->ID) . '">ler mais</a>.';
}

//add_filter('excerpt_more', 'new_excerpt_more');

function alter_author_wppost()
{
    if (!is_author()) return false;
    global $wp_query;
    $wp_query->set('posts_per_page', 6);
    $wp_query->set('order', 'ASC');
}

add_action('pre_get_posts', 'alter_author_wppost');

function pegaMeioStr($inicio, $fim, $str)
{
    @$ex = explode($inicio, $str);
    @$ex2 = explode($fim, $ex[1]);
    return $ex2[0];
}

// ==================================================================
// Conditional scripts
// ==================================================================
function defato_theme_conditional_scripts()
{
    ?>
    <!--[if lt IE 9]>
    <script src="<?php echo get_template_directory_uri(); ?>/js/IE9.js" type="text/javascript"></script><![endif]-->
    <!--[if lt IE 9]>
    <script src="<?php echo get_template_directory_uri(); ?>/js/html5.js" type="text/javascript"></script><![endif]-->
    <?php
}

add_action('wp_head', 'defato_theme_conditional_scripts');

// ==================================================================
// Heading
// ==================================================================
function defato_theme_heading()
{
    if (get_header_image() == true) { ?>
        <a href="<?php echo esc_url(home_url()); ?>">
            <img src="<?php header_image(); ?>" class="header-title" height="<?php echo get_custom_header()->height; ?>"
                 width="<?php echo get_custom_header()->width; ?>" alt="<?php bloginfo('name'); ?>"
                 title="<?php bloginfo('name'); ?>"/>
        </a>
    <?php } elseif (is_home() || is_front_page()) { ?>
        <h1><a href="<?php echo esc_url(home_url()); ?>" class="header-title"><?php bloginfo('name'); ?></a></h1>
        <p class="header-desc"><?php bloginfo('description'); ?></p>
    <?php } else { ?>
        <h5><a href="<?php echo esc_url(home_url()); ?>" class="header-title"><?php bloginfo('name'); ?></a></h5>
        <p class="header-desc"><?php bloginfo('description'); ?></p>
    <?php }
}

// ==================================================================
// Content width
// ==================================================================
if (!isset($content_width)) $content_width = 640;

// ====================================================================================================================================
// Innit
// ====================================================================================================================================
function defato_setup()
{

    // ==================================================================
    // Custom header
    // ==================================================================
    /*
    add_theme_support('custom-header', array(
        'default-image' => '',
        'random-default' => false,
        'width' => 400,
        'height' => 100,
        'flex-height' => true,
        'flex-width' => true,
        'default-text-color' => 'ff8f85',
        'header-text' => true,
        'uploads' => true,
        'wp-head-callback' => '',
        'admin-head-callback' => 'ace_admin_header_style',
        'admin-preview-callback' => 'ace_admin_header_image',
    ));
    */

    function ace_admin_header_style()
    { ?>
        <link href="//fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic|Muli:400,400italic|Montserrat:400,700"
              rel="stylesheet" type="text/css">
        <style type="text/css" id="ace-admin-header-css">
            .appearance_page_custom-header #headimg {
                background-color: #fff;
                padding: 30px 0;
                text-align: left;
            }

            #headimg h1 {
                font-family: 'Montserrat', Sans-serif;
                font-weight: 400;
                font-size: 48px;
                text-transform: uppercase;
                margin: 0;
            }

            #headimg h1 a {
                text-decoration: none;
            }

            #headimg h1 a:hover {
                color: #000;
            }

            #headimg .displaying-header-desc {
                font-family: 'Muli', Lucida Sans Unicode, Lucida Grande, Verdana, Tahoma, Arial, Sans-serif;
                font-weight: 400;
                margin: 0;
                color: #777;
            }

            #headimg img {
                vertical-align: middle;
                display: block;
                margin: 0 auto;
            }
        </style>
    <?php }

    function ace_admin_header_image()
    { ?>
        <div id="headimg">
            <?php if (get_header_image()) : ?>
                <img src="<?php header_image(); ?>" alt="">
            <?php else : ?>
                <h1 class="displaying-header-text"><a
                            id="name"<?php echo sprintf(' style="color:#%s;"', get_header_textcolor()); ?>
                            onclick="return false;"
                            href="<?php echo esc_url(home_url('/')); ?>"><?php bloginfo('name'); ?></a></h1>
                <p class="displaying-header-text displaying-header-desc"><?php bloginfo('description'); ?></p>
            <?php endif; ?>
        </div>
    <?php }

    function header_image_text()
    {
        $text_color = get_header_textcolor();
        // If no custom color for text is set, let's bail.
        if (display_header_text() && $text_color === get_theme_support('custom-header', 'default-text-color'))
            return;
        // If we get this far, we have custom styles.
        ?>
        <style type="text/css">
            <?php if ( ! display_header_text() ) : ?>
            .header-title,
            .header-desc {
                display: none;
            }

            <?php elseif ( $text_color != get_theme_support( 'custom-header', 'default-text-color' ) ) : ?>
            .header-title {
                color: #<?php echo esc_attr( $text_color ); ?>;
            }

            <?php endif; ?>
        </style>
        <?php
    }

    add_action('wp_head', 'header_image_text');

    // ==================================================================
    // Language
    // ==================================================================
    load_theme_textdomain('defato', get_template_directory() . '/languages');

    // ==================================================================
    // Add default posts and comments RSS feed links to head
    // ==================================================================
    add_theme_support('automatic-feed-links');

    // ==================================================================
    // Post thumbnail
    // ==================================================================
    add_theme_support('post-thumbnails');
    add_image_size('post_thumb', 300, 200, true);

    // ==================================================================
    // Menu location
    // ==================================================================
    //register_nav_menu('top_menu', __('Top Menu', 'defato'));

    // ==================================================================
    // Custom background
    // ==================================================================
    //add_theme_support('custom-background', array('default-color' => 'ffffff'));

    // ==================================================================
    // Visual editor stylesheet
    // ==================================================================
    add_editor_style('editor.css');

    // ==================================================================
    // Header title tag support
    // ==================================================================
    add_theme_support('title-tag');

    // ==================================================================
    // HTML5 Support
    // ==================================================================
    add_theme_support('html5', array(
        'search-form',
        'comment-form',
        'comment-list',
        'gallery',
        'caption',
    ));

    // ==================================================================
    // Jetpack infinite scroll
    // ==================================================================
    add_theme_support('infinite-scroll', array(
        'container' => 'section',
        'footer' => false,
    ));

// ====================================================================================================================================
// Innit
// ====================================================================================================================================
}

add_action('after_setup_theme', 'defato_setup');

// ==================================================================
// Comment spam, prevention
// ==================================================================
function defato_theme_check_referrer()
{
    if (!isset($_SERVER['HTTP_REFERER']) || $_SERVER['HTTP_REFERER'] == "") {
        wp_die(__('Please enable referrers in your browser.', 'defato'));
    }
}

add_action('check_comment_flood', 'defato_theme_check_referrer');

// ==================================================================
// Custom comment style
// ==================================================================
function defato_theme_comment_style($comment, $args, $depth)
{
    $GLOBALS['comment'] = $comment; ?>
<li <?php comment_class(); ?>>
    <article class="comment-content" id="comment-<?php comment_ID(); ?>">
        <div class="comment-meta">
            <?php echo get_avatar($comment, $size = '32'); ?>
            <?php printf(__('<h6>%s</h6>', 'defato'), get_comment_author_link()) ?>
            <small><?php printf(__('%1$s at %2$s', 'defato'), get_comment_date(), get_comment_time()) ?></small>
        </div>
        <?php if ($comment->comment_approved == '0') : ?>
            <em><?php _e('Your comment is awaiting moderation.', 'defato') ?></em><br/><?php endif; ?>
        <?php comment_text() ?>
        <?php comment_reply_link(array_merge($args, array('depth' => $depth, 'max_depth' => $args['max_depth']))) ?>
    </article>
<?php }

// ==================================================================
// WordPress header title backward compatibility
// ==================================================================
if (!function_exists('_wp_render_title_tag')) :
    function defato_theme_render_title()
    {
        echo wp_title();
    }

    add_action('wp_head', 'defato_theme_render_title');
endif;

// ==================================================================
// Post/page pagination
// ==================================================================
function defato_theme_get_link_pages()
{
    wp_link_pages(
        array(
            'before' => '<p class="page-pagination"><span class="page-pagination-title">' . __('Pages:', 'defato') . '</span>',
            'after' => '</p>',
            'link_before' => '<span class="page-pagination-number">',
            'link_after' => '</span>',
            'next_or_number' => 'number',
            'nextpagelink' => __('Next page', 'defato'),
            'previouspagelink' => __('Previous page', 'defato'),
            'pagelink' => '%',
            'echo' => 1
        )
    );
}

// ==================================================================
// Pagination (WordPress)
// ==================================================================
function defato_theme_pagination_links()
{
    the_posts_pagination(array(
        'mid_size' => 5,
        'prev_text' => __('Previous', 'defato'),
        'next_text' => __('Next', 'defato'),
    ));
}

// ==================================================================
// Widget - Sidebar
// ==================================================================
function defato_widgets_init()
{
    /*
    register_sidebar(array(
        'name' => __('Right Widget', 'defato'),
        'id' => 'right-widget',
        'description' => 'Right side widget area',
        'before_widget' => '<article id="%1$s" class="side-widget %2$s">',
        'after_widget' => '</article>',
        'before_title' => '<h3>',
        'after_title' => '</h3>',
    ));
    */
}


add_action('widgets_init', 'defato_widgets_init');

// ==================================================================
// Widget - Sidebar
// ==================================================================
if (function_exists('register_sidebar'))
    register_sidebar(array(
        'name' => 'Home',
        'before_widget' => '<div class="rightBox">',
        'after_widget' => '</div>',
        'before_title' => '<h2>',
        'after_title' => '</h2>',
    ));
// ==================================================================
// Widget - Instagram
// ==================================================================
function defato_footer_widgets_instagram_init()
{
    register_sidebar(array(
        'name' => __('Instagram Widget', 'defato'),
        'id' => 'footer-widget-instagram',
        'class' => '',
        'description' => 'Instagram widget area.',
        'before_widget' => '<article id="%1$s" class="footer-instagram-widget %2$s">',
        'after_widget' => '</article>',
        'before_title' => '<h4>',
        'after_title' => '</h4>',
    ));
}

add_action('widgets_init', 'defato_footer_widgets_instagram_init');

if (function_exists('register_sidebar'))
    register_sidebar(array(
        'name' => 'footer-tags',
        'before_widget' => '<div class="rightBox">',
        'after_widget' => '</div>',
        'before_title' => '<h2>',
        'after_title' => '</h2>',
    ));

if (function_exists('register_sidebar'))
    register_sidebar(array(
        'name' => 'footer-social',
        'before_widget' => '<div class="rightBox">',
        'after_widget' => '</div>',
        'before_title' => '<h2>',
        'after_title' => '</h2>',
    ));

if (function_exists('register_sidebar'))
    register_sidebar(array(
        'name' => 'footer-categoria',
        'before_widget' => '<div class="menu-footer">',
        'after_widget' => '</div>',
        'before_title' => '<h2>',
        'after_title' => '</h2>',
    ));

class CSS_Menu_Walker extends Walker
{

    var $db_fields = array('parent' => 'menu_item_parent', 'id' => 'db_id');

    function start_lvl(&$output, $depth = 0, $args = array())
    {
        $indent = str_repeat("\t", $depth);
        $output .= "\n$indent<ul>\n";
    }

    function end_lvl(&$output, $depth = 0, $args = array())
    {
        $indent = str_repeat("\t", $depth);
        $output .= "$indent</ul>\n";
    }

    function start_el(&$output, $item, $depth = 0, $args = array(), $id = 0)
    {

        global $wp_query;
        $indent = ($depth) ? str_repeat("\t", $depth) : '';
        $class_names = $value = '';
        $classes = empty($item->classes) ? array() : (array)$item->classes;

        /* Add active class */
        if (in_array('current-menu-item', $classes)) {
            $classes[] = 'active';
            unset($classes['current-menu-item']);
        }

        /* Check for children */
        $children = get_posts(array('post_type' => 'nav_menu_item', 'nopaging' => true, 'numberposts' => 1, 'meta_key' => '_menu_item_menu_item_parent', 'meta_value' => $item->ID));
        if (!empty($children)) {
            $classes[] = 'has-sub';
        }

        $class_names = join(' ', apply_filters('nav_menu_css_class', array_filter($classes), $item, $args));
        $class_names = $class_names ? ' class="' . esc_attr($class_names) . '"' : '';

        $id = apply_filters('nav_menu_item_id', 'menu-item-' . $item->ID, $item, $args);
        $id = $id ? ' id="' . esc_attr($id) . '"' : '';

        $output .= $indent . '<li' . $id . $value . $class_names . '>';

        $attributes = !empty($item->attr_title) ? ' title="' . esc_attr($item->attr_title) . '"' : '';
        $attributes .= !empty($item->target) ? ' target="' . esc_attr($item->target) . '"' : '';
        $attributes .= !empty($item->xfn) ? ' rel="' . esc_attr($item->xfn) . '"' : '';
        $attributes .= !empty($item->url) ? ' href="' . esc_attr($item->url) . '"' : '';

        $item_output = $args->before;
        $item_output .= '<a' . $attributes . '><span>';
        $item_output .= $args->link_before . apply_filters('the_title', $item->title, $item->ID) . $args->link_after;
        $item_output .= '</span></a>';
        $item_output .= $args->after;

        $output .= apply_filters('walker_nav_menu_start_el', $item_output, $item, $depth, $args);
    }

    function end_el(&$output, $item, $depth = 0, $args = array())
    {
        $output .= "</li>\n";
    }
}  