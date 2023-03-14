<div class="leadspace row @@colReverse">
    <div class="@@displayXS @@displayMD col-12 col-md-5 leadspace-item1">
        <figure class="leadspace-item1__image ratio ratio-327x234 h-100">
            <?php
            $ledspace_image = get_theme_mod('leadspaces_images');
            $imgUrl = wp_get_attachment_url($leadspace_images);

            ?>
            <img src="<?php echo $imgUrl; ?>" alt="">
            <img src="@@imgSrc1" class="w-100 h-100 object-fit" alt="herosection-image-one">
        </figure>
    </div>
    <div class="@@displayXS1 @@diplayMD1 col-md-7 leadspace-item2 ">
        <figure class="leadspace-item2__image ratio ratio-327x234 h-100">
            <img src="@@imgSrc2" class="w-100  object-fit-contain" alt="herosection-image-two">
        </figure>
    </div>
</div>