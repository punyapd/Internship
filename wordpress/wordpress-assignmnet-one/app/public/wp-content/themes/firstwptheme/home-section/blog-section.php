<section class="blog-cards py-10 py-md-20 py-xl-30">
    <div class="container">
        <h1 class="h6 mb-10 mb-md-21 text-space">more blog notes</h1>

        <div class="blog-cards-categories d-md-flex mb-10 mb-md-20">
            <span class="Body d-block d-md-inline-block mb-2 mb-md-0">Category:</span>
            <?php
            $terms = get_terms(
                'category',
                array(
                    'hide_empty' => true
                )
            );
            ?>
            <ul class="blog-catergories-list h6 d-flex mx-1 mt-xl-1 flex-wrap text-uppercase flex-grow-1">
                <?php
                if (isset($terms) && is_array($terms)) :
                    foreach ($terms as $term) : ?>
                        <li id="<?php echo $term->term_id; ?>" class="me-5"><?php echo $term->name; ?></li>
                <?php
                    endforeach;
                endif;
                ?>
            </ul>

        </div>
        <!-- search with filter -->
        <div class="row blog-cards-search justify-content-md-between">
            <div class="col-12 col-md-6 col-xl-5 blog-cards-search__input">
                <input type="text" class="w-100 rounded-30 h-64 text-space" />
                <a href="#">
                    <img src="images/search.svg" class="blog-cards-search__input__icon position-absolute" alt="search_icon" />
                </a>
            </div>

            <div class=".blog-cards-latest col-12 col-md-3 align-self-end d-flex justify-content-end">
                <div class="dropdown">
                    <button class="border-0 bg-transparent dropdown-toggle btn" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
                        Latest
                    </button>
                    <ul class="dropdown-menu h6 pt-4 pb-6" aria-labelledby="dropdownMenuButton1">
                        <li><a class="dropdown-item" href="#">alphabetical order</a></li>
                        <li><a class="dropdown-item" href="#">features</a></li>
                        <li><a class="dropdown-item" href="#">latest</a></li>
                        <li><a class="dropdown-item" href="#">oldest</a></li>
                    </ul>
                </div>
            </div>
        </div>

        <div class="row mt-10 mt-md-20 container-wrapper">

            <!-- 
            <div class=" col-md-6 col-xl-4 mb-10 mb-xl-20 @@display">
                <article class=" blog-cards__item  card h-100">
                    <a href="blog-single.html" class="d-block h-100">
                        <figure class="">
                            <img src="images/@@articleImage" alt="@@imageTitle" loading="lazy">
                        </figure>
                        <div class="card-body px-6 pt-6 pb-9 flex-grow-1">
                            <span class="d-block eyebrow mb-4">@@date</span>
                            <h2 class="h5  mb-0">Everything you need to know</h2>
                        </div>
                    </a>
                </article>
            </div> -->

        </div>
        <!-- pagination -->
        <nav aria-label="Page navigation ">
            <ul class="pagination d-flex flex-wrap align-items-center justify-content-center body-sm text-black mb-0 ps-0">
                <li class="page-item prev bg-black text-white rounded-circle me-12 me-lg-17 mb-1 mx-1">
                    <a class="page-link d-flex align-items-center justify-content-center h-50 w-50" href="#">
                        <i class="icon-arrow-left me-1"></i>
                    </a>
                </li>
                <li class="page-item mb-1 mx-1"><a class="page-link active fw-bold text-decoration-underline" href="#">1</a></li>
                <li class="page-item mb-1 mx-1"><a class="page-link" href="#">2</a></li>
                <li class="page-item mb-1 mx-1"><a class="page-link" href="#">3</a></li>
                <li class="page-item mb-1 mx-1"><a class="page-link" href="#">4</a></li>
                <li class="page-item mb-1 mx-1"><a class="page-link" href="#">5</a></li>
                <li class="page-item mb-1 mx-1"><a class="page-link" href="#">6</a></li>
                <li class="page-item mb-1 mx-1"><a class="page-link" href="#">7</a></li>

                <li class="page-item next bg-black text-white rounded-circle ms-12 ms-lg-17 mb-1 mb-1">
                    <a class="page-link d-flex align-items-center justify-content-center h-50 w-50" href="#">
                        <i class="icon-arrow-right me-1"></i>
                    </a>
                </li>
            </ul>
        </nav>
</section>