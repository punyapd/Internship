<?php
$pageId = get_the_ID();

$title = get_post_meta($pageId, 'seeblog_title', true);
$description = get_post_meta($pageId, 'seeblog_description', true);

?>
<section class="bg-blush">
    <div class="container">
        <div class="card  h-100 py-md-10  bg-blush">
            <div class="card-body">

                <h5 class="card-title  mb-4 h3"><?php echo $title ?></h5>
                <p class="card-text-small Body-xl mb-10"><?php echo $description ?></p>

                <button type="submit" class="btn btn-primary  px-4 py-2 fw-bold cursor-pointer">
                    see our blogs
                    &nbsp; &#8594;
                </button>
            </div>
        </div>




    </div>
</section>