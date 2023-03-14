<?php

/**
 * FirstWptheme Theme Customizer
 *
 * @package FirstWptheme
 */

/**
 * Add postMessage support for site title and description for the Theme Customizer.
 *
 * @param WP_Customize_Manager $wp_customize Theme Customizer object.
 */
function firstwptheme_customize_register($wp_customize)
{
	$wp_customize->get_setting('blogname')->transport         = 'postMessage';
	$wp_customize->get_setting('blogdescription')->transport  = 'postMessage';
	$wp_customize->get_setting('header_textcolor')->transport = 'postMessage';

	if (isset($wp_customize->selective_refresh)) {
		$wp_customize->selective_refresh->add_partial(
			'blogname',
			array(
				'selector'        => '.site-title a',
				'render_callback' => 'firstwptheme_customize_partial_blogname',
			)
		);
		$wp_customize->selective_refresh->add_partial(
			'blogdescription',
			array(
				'selector'        => '.site-description',
				'render_callback' => 'firstwptheme_customize_partial_blogdescription',
			)
		);
	}
}
add_action('customize_register', 'firstwptheme_customize_register');

/**
 * Render the site title for the selective refresh partial.
 *
 * @return void
 */
function firstwptheme_customize_partial_blogname()
{
	bloginfo('name');
}

/**
 * Render the site tagline for the selective refresh partial.
 *
 * @return void
 */
function firstwptheme_customize_partial_blogdescription()
{
	bloginfo('description');
}

/**
 * Binds JS handlers to make Theme Customizer preview reload changes asynchronously.
 */
function firstwptheme_customize_preview_js()
{
	wp_enqueue_script('firstwptheme-customizer', get_template_directory_uri() . '/js/customizer.js', array('customize-preview'), _S_VERSION, true);
}
add_action('customize_preview_init', 'firstwptheme_customize_preview_js');


function create_custom_register($wp_customize)
{

	$wp_customize->add_panel('global_settings', array(

		'title' => 'Global1 Settings',

		'description' => 'This is panel Description',

		'priority' => 10,

	));

	// Header Section

	$wp_customize->add_section('header_settings', array(

		'title' => 'Header Settings',

		'priority' => 3,

		'panel' => 'global_settings',

	));



	// Settings

	$wp_customize->add_setting('header_logo', []);



	// Control

	$wp_customize->add_control(new \WP_Customize_Media_Control($wp_customize, 'header_logo', array(

		'label' => 'Header Logo',

		'description' => 'Preferred size 400px by 80px',

		'section' => 'header_settings',

		'settings' => 'header_logo',

	)));

	//footer section
	$wp_customize->add_section('footer_settings', array(

		'title' => 'Footer Settings',

		'priority' => 4,

		'panel' => 'global_settings',

	));

	//footer settings
	$wp_customize->add_setting('footer_logo', []);


	// Control

	$wp_customize->add_control(new \WP_Customize_Media_Control($wp_customize, 'footer_logo', array(

		'label' => 'Footer Logo',

		'description' => 'Preferred size 400px by 80px',

		'section' => 'footer_settings',

		'settings' => 'footer_logo',

	)));

	//leadspace section
	$wp_customize->add_section('leadspace_settings', array(

		'title' => 'Leadspace Settings',

		'priority' => 5,

		'panel' => 'global_settings',

	));

	$wp_customize->add_setting('leadspace_image1', []);
	$wp_customize->add_setting('leadspace_image2', []);



	$wp_customize->add_control(new \WP_Customize_Media_Control($wp_customize, 'leadspace_image1', array(

		'label' => 'Leadspace First Image',

		'description' => 'Preferred size 400px by 80px',

		'section' => 'leadspace_settings',

		'settings' => 'leadspace_image1',

	)));

	$wp_customize->add_control(new \WP_Customize_Media_Control($wp_customize, 'leadspace_image2', array(

		'label' => 'Leadspace Second Image',

		'description' => 'Preferred size 400px by 80px',

		'section' => 'leadspace_settings',

		'settings' => 'leadspace_image2'

	)));
}

add_action('customize_register', 'create_custom_register');
