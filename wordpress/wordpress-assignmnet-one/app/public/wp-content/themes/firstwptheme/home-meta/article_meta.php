<?php
// Metaboxes
function article_metabox()
{
    add_meta_box(
        'article_metabox', // $id is a unique id given to every meta box
        'home section article Details', // $title is the title displayed in custom meta box
        'article_metabox_callback', // $callback is a function that outputs markup inside the custom meta box
        'page', // $page represents the admin page on which the meta box will be displayed on. It can be page, article, custom article type.
        'advanced', // $context represents the title of the meta box. It can be normal, advanced or side.
        'default' // $priority is the title of the box inside the context. It can be high, core, default or low.
    );
}
add_action('add_meta_boxes', 'article_metabox');
function article_metabox_callback($post)
{
    wp_nonce_field(basename(__FILE__), 'article_nonce');
    $article_title = get_post_meta($post->ID, "article_title", true);
    $article_date = get_post_meta($post->ID, "article_date", true);
    $article_description = get_post_meta($post->ID, "article_description", true);
    $article_image = get_post_meta($post->ID, "article_image", true);

?>
    <table class="table">
        <tr>
            <td><?php _e('title', 'article') ?></td><br>
            <td><input type="text" name="articleTitle" id="articleitle" value="<?php if (isset($article_title)) echo $article_title; ?>" /></td><br>
        </tr>


        <tr>

            <td><?php _e('date', 'article') ?></td>

            <td><input type="date" name="articleDate" id="articleDate" value="<?php if (isset($article_date)) echo $article_date; ?>" /></td><br>
        </tr>


        <tr>

            <td><?php _e('description', 'article') ?></td>

            <td><input type="text" name="articleDescription" id="articleDescription" value="<?php if (isset($article_description)) echo $article_description; ?>" /></td><br>
        </tr>






        <tr>

            <td><?php _e('Image', 'article') ?></td>

            <td>
                <input type="url" name="articleImage" id="articleimage" value="<?php if (isset($article_image)) echo $article_image; ?>" />
            </td>
            <td><button type="button" class="button" data-media-uploader-target="#articleimage"><?php _e('Upload Image', 'firstwptheme') ?></button></td>
        </tr>


    </table>
<?php
}


add_action("save_post", "article_save_metabox_data", 10, 2);
function article_save_metabox_data($post_id, $post)
{
    if (!isset($_POST['article_nonce']) || !wp_verify_nonce($_POST['article_nonce'], basename(__FILE__))) {
        return $post_id;
    }
    // verifying slug value
    $post_slug = "page";
    if ($post_slug != $post->post_type) {
        return;
    }
    //save value to db field
    $article_title = '';
    $article_date = '';
    $article_description = '';

    $article_image = '';
    if (isset($_POST['articleTitle'])) {
        $article_title = sanitize_text_field($_POST['articleTitle']);
        update_post_meta($post_id, "article_title", $article_title);
    }
    if (isset($_POST['articleDate'])) {
        $article_date = sanitize_text_field($_POST['articleDate']);
        update_post_meta($post_id, "article_date", $article_date);
    }
    if (isset($_POST['articleDescription'])) {
        $article_description = sanitize_text_field($_POST['articleDescription']);
        update_post_meta($post_id, "article_description", $article_description);
    }
    if (isset($_POST['articleImage'])) {
        $article_image = sanitize_text_field($_POST['articleImage']);
        update_post_meta($post_id, "article_image", $article_image);
    }
}
