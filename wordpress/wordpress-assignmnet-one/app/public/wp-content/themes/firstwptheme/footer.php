<?php

/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package FirstWptheme
 */

?>

<footer class="footer bg-primary text-white py-10 py-md-20">
	<div class="container">
		<div class="row mb-10 mb-xl-20">
			<!-- footer logo-->
			<figure class="footer__logo col-6 col-md-3s">
				<?php
				$footer_logo = get_theme_mod('footer_logo');
				$imgUrl = wp_get_attachment_url($footer_logo);

				?>

				<img src="<?php echo $imgUrl; ?>" alt="">
			</figure>
		</div>
		<div class="footer__details row mb-xl-10">
			<div class="col-md-6 col-xl-3 mb-xl-20">
				<h6 class="mb-6 h6 text-uppercase">About us</h6>
				<?php
				wp_nav_menu(
					array(
						'theme_location' => 'AboutUs',
						'depth' => 2,
						'menu_id' => 'secondary-menu',
					)
				);
				?>
			</div>
			<div class="col-md-6 col-xl-3 mb-xl-20">
				<h6 class="mb-6 h6 text-uppercase">Our Team</h6>
				<?php
				wp_nav_menu(
					array(
						'theme_location' => 'ourTeam',
						'depth' => 2,
						'menu_id' => 'secondary-menu',
					)
				);
				?>
			</div>
			<div class="col-md-6 col-xl-3 mb-xl-20">
				<h6 class="mb-6 h6 text-uppercase">Who We Are</h6>
				<?php
				wp_nav_menu(
					array(
						'theme_location' => 'whoWeAre',
						'depth' => 2,
						'menu_id' => 'secondary-menu',
					)
				);
				?>
			</div>
			<div class="col-md-6 col-xl-3 mb-xl-20">
				<h6 class="mb-6 h6 text-uppercase">Resources</h6>
				<?php
				wp_nav_menu(
					array(
						'theme_location' => 'Resources',
						'depth' => 2,
						'menu_id' => 'secondary-menu',
					)
				);
				?>
			</div>
			<div class="col-md-6 col-xl-3 mb-xl-20">
				<h6 class="mb-6 h6 text-uppercase">Contacts</h6>
				<?php
				wp_nav_menu(
					array(
						'theme_location' => 'Contact',
						'depth' => 2,
						'menu_id' => 'secondary-menu',
					)
				);
				?>
			</div>

			<div class="footer__details__newsletter col-xl-6 col-md-10 text-blush mb-10 mb-xl-0 mb-xl-20 align-self-end">
				<span class="footer__details__newsletter__label fst-italic d-block mb-4">
					Sign up for our newsletter:
				</span>
				<form action="#" class="d-md-flex">
					<div class="footer__details__newsletter__input flex-grow-1">
						<input type="text" placeholder="Email address" class="bg-transparent text-white w-100 py-2 ps-3 mb-6 mb-md-0" />
					</div>
					<button class="btn btn-outline-light p-2 md-0 ms-md-4">
						submit
						<i class="icon-arrow-right ms-1"></i>
					</button>
				</form>
			</div>
		</div>
		<div class="copy-wright">
			<a class="text-light">
				Site content copyright © 2021
				<a href="#">Allowded Text</a>
				</p>
		</div>
	</div>
</footer>

</div><!-- #page -->

<?php wp_footer(); ?>

</body>

</html>