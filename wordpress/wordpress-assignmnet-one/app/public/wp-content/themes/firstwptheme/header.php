<?php

/**
 * The header for our theme
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package FirstWptheme
 */

?>
<!doctype html>
<html <?php language_attributes(); ?>>

<head>
	<meta charset="<?php bloginfo('charset'); ?>">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="profile" href="https://gmpg.org/xfn/11">

	<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
	<?php wp_body_open(); ?>
	<div id="page" class="site">
		<a class="skip-link screen-reader-text" href="#primary"><?php esc_html_e('Skip to content', 'firstwptheme'); ?></a>

		<header>
			<figure class="site-branding">
				<?php
				$header_logo = get_theme_mod('header_logo');
				$imgUrl = wp_get_attachment_url($header_logo);

				?>
				<img src="<?php echo $imgUrl; ?>" alt="">

			</figure><!-- .site-branding -->

			<nav id="site-navigation" class="navbar">
				<?php
				wp_nav_menu(
					array(
						'theme_location' => 'HeaderMenuLocation',
						'menu_id'        => 'primary-menu',
					)
				);
				?>
			</nav><!-- #site-navigation -->
		</header><!-- #masthead -->