<?php
$pageId = get_the_ID();

$title = get_post_meta($pageId, 'article_title', true);
$description = get_post_meta($pageId, 'article_description', true);
$date = get_post_meta($pageId, 'article_date', true);

$imageSource = get_post_meta($pageId, 'article_image', true);

?>
<section class="section-with-article bg-mint py-10 py-md-20 py-xl-30">
    <div class="container">
        <div class="row justify-content-between">
            <!-- card column -->
            <div class="col-12 col-md-6 mb-10 mb-md-0">
                <figure class="section-with-article__image ratio ratio-318x267">
                    <img src="<?php echo $imageSource ?>" class="object-fit section-with-article__image--shadow h-100 w-100" alt="@@imgTitle" loading="lazy" />
                </figure>
            </div>

            <!--image column -->
            <div class="col-12 col-md-6 align-self-md-center">
                <div class="card h-100">
                    <div class="card-body">
                        <h6 class="h6 text-space mb-6">more info</h6>
                        <article class="Body mb-6">
                            <h5 class="card-title h4 mb-6"><?php echo $title ?></h5>
                            <span class="text-teal Body mb-4"><?php echo $date ?></span>

                            <p class="card-text-small mb-10">
                                <?php echo $description ?>
                            </p>
                        </article>

                        <button type="submit" class="btn btn-space  px-4 py-2 fw-bold cursor-pointer">
                            More Info
                            &nbsp; &#8594;
                        </button>
                    </div>

                </div>
            </div>
        </div>
</section>