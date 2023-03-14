<?php
$pageId = get_the_ID();

$title = get_post_meta($pageId, 'team_title', true);
$description = get_post_meta($pageId, 'team_description', true);
$imageSource = get_post_meta($pageId, 'team_image', true);

?>
<section class="home-slider bg-blush py-10 py-md-20 py-xl-30">
    <div class="container">
        <h1 class="h6 mb-6 mb-md-10">our team</h1>
        <div class="row">
            <div class="col-12">
                <div class="d-flex flex-column flex-md-row border-top border-8 border-primary">
                    <div class="home-slider__image">
                        <figure class="ratio ratio-327x245 h-100">
                            <img src="<?php echo $imageSource ?>" class="object-fit h-100 w-100" alt="slider_image" loading="lazy" />
                        </figure>
                    </div>
                    <div class="home-slider__details bg-white py-24 px-10">
                        <h2 class="h5 mb-10 mb-xl-8"><?php echo $title ?></h2>
                        <div class="Body-xl">
                            <p><?php echo $description ?></p>
                        </div>
                    </div>
                </div>

                <!-- carousel arrows for change -->
                <div class="home-slider__changer mt-6 mt-md-10">
                    <div class="home-slider__changer__arrow cursor-pointer">
                        <a href="#"> &#859;</a>
                    </div>
                    <div class="home-slider__changer__dots">
                        <div class="home-slider__changer__dots__item"></div>
                        <div class="home-slider__changer__dots__item"></div>
                        <div class="home-slider__changer__dots__item"></div>
                        <div class="home-slider__changer__dots__item"></div>
                        <div class="home-slider__changer__dots__item"></div>
                    </div>
                    <div class="home-slider__changer__arrow cursor-pointer">
                        <a href="#"> &#8594;</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>