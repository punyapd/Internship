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

     <?php
        $pageId = get_the_ID();
        echo "<pre>";
        print_r($pageId);
        echo "</pre>";
        $position = get_post_meta($pageId, 'post_position', true);
        ?>
     <p><?php echo $position; ?></p>

 </div>