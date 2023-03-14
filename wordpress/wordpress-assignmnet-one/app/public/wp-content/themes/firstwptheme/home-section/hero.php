<!-- herosection for about and home page  -->
<section class="hero-section bg-blush py-8 py-md-10 py-xl-20">
    <div class="container">
        <div class="leadspace row @@colReverse">
            <div class="@@displayXS @@displayMD col-12 col-md-5 leadspace-item1">
                <figure class="leadspace-item1__image ratio ratio-327x234 h-100">
                    <?php
                    $leadspace_image1 = get_theme_mod('leadspace_image1');
                    $imgUrl = wp_get_attachment_url($leadspace_image1);

                    ?>
                    <img src="<?php echo $imgUrl; ?>" class="w-100 h-100 object-fit" alt="herosection-image-one">

                </figure>
            </div>
            <div class="@@displayXS1 @@diplayMD1 col-md-7 leadspace-item2 ">
                <figure class="leadspace-item2__image ratio ratio-327x234 h-100">
                    <?php
                    $leadspace_image2 = get_theme_mod('leadspace_image2');
                    $imgUrl = wp_get_attachment_url($leadspace_image2);

                    ?>
                    <img src="<?php echo $imgUrl; ?>" class="w-100 h-100 object-fit" alt="herosection-image-one">
                </figure>
            </div>
        </div>
        <!-- mobile only card -->
        <div class="hero-section__card--mobile row mt-6 mt-md-10 mt-xl-18 justify-content-between @@colReverse">
            <div class="col-12 d-md-none">
                <div class="card  h-100 px-6 py-10 border-top border-8 border-primary bg-white">
                    <div class="card-body">

                        <?php
                        $pageId = get_the_ID();

                        $title = get_post_meta($pageId, 'post_title', true);
                        $description = get_post_meta($pageId, 'post_description', true);
                        $imageSource = get_post_meta($pageId, 'post_image', true);

                        ?>

                        <h5 class="card-title mb-4 h2 @@textColor"><?php echo $title ?></h5>
                        <div class="card-text-small Body-xl mb-10 "><?php echo $description ?></div>

                        <button type="submit" class="btn d-none btn-outline-space px-4 py-2 fw-bold cursor-pointer">
                            Contact Us
                            <i class="icon-arrow-right ms-1d-flex justify-content-center align-items-center"></i>
                        </button>


                    </div>
                </div>
            </div>
            <!-- contact us look deep into nature -->
            <div class="hero-section__card--desktop col-12 col-xl-8 d-none d-md-block">
                <div class="card  h-100 px-6 py-10 border-top border-8 border-primary bg-white ">
                    <div class="card-body">

                        <h5 class="card-title mb-4 h2"><?php echo $title ?></h5>
                        <div class="card-text-small Body-xl mb-10"><?php echo $description ?></div>

                        <button type="submit" class="btn  btn-outline-space px-4 py-2 fw-bold cursor-pointer">
                            Contact Us
                            &nbsp; &#8594;
                        </button>

                    </div>
                </div>
            </div>
            <div class="col-xl-4 d-none d-xl-block hero-section__image">
                <figure class="hero-section__image--item ratio ratio-1x1">
                    <img src="<?php echo $imageSource ?>" class="object-fit h-100 w-100" alt="beatuiful home" loading="lazy" />
                </figure>
            </div>
        </div>
    </div>
</section>