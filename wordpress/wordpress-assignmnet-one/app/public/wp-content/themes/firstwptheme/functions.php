<?php

/**
 * FirstWptheme functions and definitions
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package FirstWptheme
 */

if (!defined('_S_VERSION')) {
	// Replace the version number of the theme on each release.
	define('_S_VERSION', '1.0.0');
}

/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function firstwptheme_setup()
{
	/*
		* Make theme available for translation.
		* Translations can be filed in the /languages/ directory.
		* If you're building a theme based on FirstWptheme, use a find and replace
		* to change 'firstwptheme' to the name of your theme in all the template files.
		*/
	load_theme_textdomain('firstwptheme', get_template_directory() . '/languages');

	// Add default posts and comments RSS feed links to head.
	add_theme_support('automatic-feed-links');

	/*
		* Let WordPress manage the document title.
		* By adding theme support, we declare that this theme does not use a
		* hard-coded <title> tag in the document head, and expect WordPress to
		* provide it for us.
		*/
	add_theme_support('title-tag');

	/*
		* Enable support for Post Thumbnails on posts and pages.
		*
		* @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
		*/
	add_theme_support('post-thumbnails');

	// This theme uses wp_nav_menu() in one location.
	register_nav_menus(
		array(
			'HeaderMenuLocation' => esc_html__('HeaderMenu', 'firstwptheme'),
			'AboutUs' => esc_html__('AboutUs', 'firstwptheme'),
			'ourTeam' => esc_html__('ourTeam', 'firstwptheme'),
			'whoWeAre' => esc_html__('whoWeAre', 'firstwptheme'),
			'Resources' => esc_html__('Resources', 'firstwptheme'),
			'Contact' => esc_html__('Contact', 'firstwptheme'),
		)
	);

	/*
		* Switch default core markup for search form, comment form, and comments
		* to output valid HTML5.
		*/
	add_theme_support(
		'html5',
		array(
			'search-form',
			'comment-form',
			'comment-list',
			'gallery',
			'caption',
			'style',
			'script',
		)
	);

	// Set up the WordPress core custom background feature.
	add_theme_support(
		'custom-background',
		apply_filters(
			'firstwptheme_custom_background_args',
			array(
				'default-color' => 'ffffff',
				'default-image' => '',
			)
		)
	);

	// Add theme support for selective refresh for widgets.
	add_theme_support('customize-selective-refresh-widgets');

	/**
	 * Add support for core custom logo.
	 *
	 * @link https://codex.wordpress.org/Theme_Logo
	 */
	add_theme_support(
		'custom-logo',
		array(
			'height'      => 250,
			'width'       => 250,
			'flex-width'  => true,
			'flex-height' => true,
		)
	);
}
add_action('after_setup_theme', 'firstwptheme_setup');

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function firstwptheme_content_width()
{
	$GLOBALS['content_width'] = apply_filters('firstwptheme_content_width', 640);
}
add_action('after_setup_theme', 'firstwptheme_content_width', 0);

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function firstwptheme_widgets_init()
{
	register_sidebar(
		array(
			'name'          => esc_html__('Sidebar', 'firstwptheme'),
			'id'            => 'sidebar-1',
			'description'   => esc_html__('Add widgets here.', 'firstwptheme'),
			'before_widget' => '<section id="%1$s" class="widget %2$s">',
			'after_widget'  => '</section>',
			'before_title'  => '<h2 class="widget-title">',
			'after_title'   => '</h2>',
		)
	);
}
add_action('widgets_init', 'firstwptheme_widgets_init');

/**
 * Enqueue scripts and styles.
 */
function firstwptheme_scripts()
{
	wp_enqueue_style('firstwptheme-style', get_stylesheet_uri(), array(), _S_VERSION);
	wp_enqueue_style('custom', get_template_directory_uri() . '/css/custom.css');
	wp_enqueue_style('menu', get_template_directory_uri() . '/css/menu.css');

	wp_style_add_data('firstwptheme-style', 'rtl', 'replace');

	wp_enqueue_script('firstwptheme-navigation', get_template_directory_uri() . '/js/navigation.js', array(), _S_VERSION, true);
	wp_enqueue_script('firstwptheme-ajaxfilter', get_template_directory_uri() . '/js/ajaxfilter.js', array(), _S_VERSION, true);


	if (is_singular() && comments_open() && get_option('thread_comments')) {
		wp_enqueue_script('comment-reply');
	}
}
add_action('wp_enqueue_scripts', 'firstwptheme_scripts');

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Functions which enhance the theme by hooking into WordPress.
 */
require get_template_directory() . '/inc/template-functions.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

require get_template_directory() . '/home-meta/post_meta.php';
require get_template_directory() . '/home-meta/about_meta.php';
require get_template_directory() . '/home-meta/team_meta.php';
require get_template_directory() . '/home-meta/article_meta.php';
require get_template_directory() . '/home-meta/see_our_blogs_meta.php';
require get_template_directory() . '/home-meta/testimonials_meta.php';






/**
 * Load Jetpack compatibility file.
 */
if (defined('JETPACK__VERSION')) {
	require get_template_directory() . '/inc/jetpack.php';
}

function create_team_post_type()
{
	$labels = array(
		'name' => 'Teams',
		'singular_name' => 'Team',
		'menu_name' => 'Teams'
	);
	$args = array(
		'labels' => $labels,
		'public' => true,
		'rewrite' => array('slug' => 'tttdf'),
		'supports' => array('title', 'editor', 'author', 'thumbnail', 'excerpt', 'comments')
	);
	register_post_type('team', $args);
}
add_action('init', 'create_team_post_type');



function create_team_taxonomies()
{
	$labels = array(
		'name' => 'Team Category',
		'singular_name' => 'Category',
		'menu_name' => 'category'
	);
	register_taxonomy('team_category', array('team'), array(

		'hierarchical' => true,
		'labels' => $labels,
		'rewrite' => array('slug' => 'team'),
	));
}
add_action('init', 'create_team_taxonomies');




//ajax

add_action('wp_ajax_my_action_callback', 'my_action_callback');
add_action('wp_ajax_nopriv_my_action_callback', 'my_action_callback');
function my_action_callback()
{
	// Perform some action here
	$termId = $_POST['term_id'];
	$searchKey = $_POST['searchKey'];
	if ($termId) {
		if ($termId == 'all') {
			$args = array(
				'post_type' => 'post',
				'post_status' => 'publish',
				'orderby' => 'date',
				'order' => 'DESC',
				'posts_per_page' => get_option('posts_per_page'),
			);
		} else {
			$args = array(
				'post_type' => 'post',
				'post_status' => 'publish',
				'orderby' => 'date',
				'order' => 'DESC',
				'posts_per_page' => get_option('posts_per_page'),
				'tax_query' => array(
					array(
						'taxonomy' => 'category',
						'field'    => 'term_id',
						'terms'    => $termId,
					),
				),
			);
		}
		$query = new WP_Query($args);
		ob_start();
		if ($query->have_posts()) :
			while ($query->have_posts()) : $query->the_post();
				$img_url = get_the_post_thumbnail_url();
?>
				<div class=" col-md-6 col-xl-4 mb-10 mb-xl-20 @@display">
					<article class=" blog-cards__item  card h-100">
						<a href="blog-single.html" class="d-block h-100">
							<figure class="">
								<img src="<?php echo $img_url ?>" alt="@@imageTitle" loading="lazy">
							</figure>
							<div class="card-body px-6 pt-6 pb-9 flex-grow-1">
								<span class="d-block eyebrow mb-4">22 jume 2022</span>
								<h2 class="h5  mb-0"><?php the_title() ?></h2>
							</div>
						</a>
					</article>
				</div>
			<?php
			endwhile;
		endif;
		wp_reset_postdata();
		$result = ob_get_contents();
		ob_end_clean();
		// echo 'Action performed successfully.';
		$return = array('content' => $result);
		wp_send_json($return);
		wp_die();
	}
	if ($searchKey) {
		$args = array(
			'post_type' => 'post',
			'post_status' => 'publish',
			'orderby' => 'date',
			'order' => 'DESC',
			'posts_per_page' => get_option('posts_per_page'),
			's' => $searchKey
		);
		$query = new WP_Query($args);
		ob_start();
		if ($query->have_posts()) :
			while ($query->have_posts()) : $query->the_post();
				$img_url = get_the_post_thumbnail_url();
			?>
				<div class=" col-md-6 col-xl-4 mb-10 mb-xl-20 @@display">
					<article class=" blog-cards__item  card h-100">
						<a href="blog-single.html" class="d-block h-100">
							<figure class="">
								<img src="<?php echo $img_url ?>" alt="@@imageTitle" loading="lazy">
							</figure>
							<div class="card-body px-6 pt-6 pb-9 flex-grow-1">
								<span class="d-block eyebrow mb-4">22 jume 2022</span>
								<h2 class="h5  mb-0"><?php the_title() ?></h2>
							</div>
						</a>
					</article>
				</div>
			<?php
			endwhile;
		endif;
		wp_reset_postdata();
		$result = ob_get_contents();
		ob_end_clean();
		// echo 'Action performed successfully.';
		$return = array('content' => $result);
		wp_send_json($return);
		wp_die();
	} else {
		$args = array(
			'post_type' => 'post',
			'post_status' => 'publish',
			'orderby' => 'date',
			'order' => 'DESC',
			'posts_per_page' => get_option('posts_per_page')
		);
		$query = new WP_Query($args);
		ob_start();
		if ($query->have_posts()) :
			while ($query->have_posts()) : $query->the_post();
				$img_url = get_the_post_thumbnail_url();
			?>
				<div class=" col-md-6 col-xl-4 mb-10 mb-xl-20 @@display">
					<article class=" blog-cards__item  card h-100">
						<a href="blog-single.html" class="d-block h-100">
							<figure class="">
								<img src="<?php echo $img_url ?>" alt="@@imageTitle" loading="lazy">
							</figure>
							<div class="card-body px-6 pt-6 pb-9 flex-grow-1">
								<span class="d-block eyebrow mb-4">22 june 2022</span>
								<h2 class="h5  mb-0"><?php the_title() ?></h2>
							</div>
						</a>
					</article>
				</div>
<?php
			endwhile;
		endif;
		wp_reset_postdata();
		$result = ob_get_contents();
		ob_end_clean();
		// echo 'Action performed successfully.';
		$return = array('content' => $result);
		wp_send_json($return);
		wp_die();
	}
}
