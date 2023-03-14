<?php
$pageId = get_the_ID();

$title = get_post_meta($pageId, 'testimonials_title', true);
$description = get_post_meta($pageId, 'testimonials_description', true);
$person = get_post_meta($pageId, 'testimonials_person', true);
$person_role = get_post_meta($pageId, 'testimonials_person_role', true);

$imageSource = get_post_meta($pageId, 'testimonials_image', true);

?>
<section class="testimonial py-10 py-md-23">
    <div class="container">
        <div class="row justify-content-center text-center">
            <div class="col-md-10 col-xl-8">
                <h2 class="h2">What Our Client Says?</h2>
                <div class="mt-6">
                    <p class="Body-xl text-space text-center">
                        <?php echo $title ?>
                    </p>
                </div>
                <div class="avatar position-relative bg-teal rounded-circle text-center mt-4 mx-auto mb-8">
                    <img src=" <?php echo $imageSource ?>" class="object-cover rounded-circle position-absolute mx-auto" alt="profile pic" />
                </div>
                <div class="h4 text-center text-teal"> <?php echo $person . "(" . $person_role . ")" ?></div>
                <ul class="social-icons d-flex align-items-center justify-content-center text-teal gap-3 mt-5 fs-6">
                    <li><i class="icon-linkedin"></i></li>
                    <li> <i class="icon-github"></i></li>
                    <li><i class="icon-twitter"></i></li>
                    <li><i class="icon-facebook"></i></li>
                </ul>
                <div class="paragraph">
                    <p class="Body">
                        <?php echo $description ?>
                    </p>
                </div>
            </div>
        </div>
    </div>
</section>