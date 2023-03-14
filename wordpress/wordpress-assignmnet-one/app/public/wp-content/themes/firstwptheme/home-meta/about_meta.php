<?php
// Metaboxes
function about_metabox()
{
    add_meta_box(
        'about_metabox', // $id is a unique id given to every meta box
        'home section about Details', // $title is the title displayed in custom meta box
        'about_metabox_callback', // $callback is a function that outputs markup inside the custom meta box
        'page', // $page represents the admin page on which the meta box will be displayed on. It can be page, about, custom about type.
        'advanced', // $context represents the title of the meta box. It can be normal, advanced or side.
        'default' // $priority is the title of the box inside the context. It can be high, core, default or low.
    );
}
add_action('add_meta_boxes', 'about_metabox');
function about_metabox_callback($post)
{
    wp_nonce_field(basename(__FILE__), 'about_nonce');
    $about_title = get_post_meta($post->ID, "about_title", true);
    $about_description = get_post_meta($post->ID, "about_description", true);
    $about_image = get_post_meta($post->ID, "about_image", true);
    $about_video = get_post_meta($post->ID, "about_video", true);

?>
    <table class="table">
        <tr>
            <td><?php _e('title', 'about') ?></td><br>
            <td><input type="text" name="aboutTitle" id="abouTitle" value="<?php if (isset($about_title)) echo $about_title; ?>" /></td><br>
        </tr>
        <tr>

            <td><?php _e('description', 'about') ?></td>

            <td><input type="text" name="aboutDescription" id="aboutDescription" value="<?php if (isset($about_description)) echo $about_description; ?>" /></td><br>
        </tr>


        <tr>

            <td><?php _e('video', 'about') ?></td>

            <td>
                <input type="url" name="video" id="aboutvideo" value="<?php if (isset($about_video)) echo $about_video; ?>" />
            </td>
            <td><button type="button" class="button" data-media-uploader-target="#aboutvideo"><?php _e('Upload Video', 'firstwptheme') ?></button></td>
        </tr>



        <tr>

            <td><?php _e('Thumbmail', 'about') ?></td>

            <td>
                <input type="url" name="aboutImage" id="aboutimage" value="<?php if (isset($about_image)) echo $about_image; ?>" />
            </td>
            <td><button type="button" class="button" data-media-uploader-target="#aboutimage"><?php _e('Upload Image', 'firstwptheme') ?></button></td>
        </tr>


    </table>
<?php
}


add_action("save_post", "about_save_metabox_data", 10, 2);
function about_save_metabox_data($post_id, $post)
{
    if (!isset($_POST['about_nonce']) || !wp_verify_nonce($_POST['about_nonce'], basename(__FILE__))) {
        return $post_id;
    }
    // verifying slug value
    $post_slug = "page";
    if ($post_slug != $post->post_type) {
        return;
    }
    //save value to db field
    $about_title = '';
    $about_description = '';
    $about_image = '';
    $about_video = ' ';
    if (isset($_POST['aboutTitle'])) {
        $about_title = sanitize_text_field($_POST['aboutTitle']);
        update_post_meta($post_id, "about_title", $about_title);
    }
    if (isset($_POST['aboutDescription'])) {
        $about_description = sanitize_text_field($_POST['aboutDescription']);
        update_post_meta($post_id, "about_description", $about_description);
    }
    if (isset($_POST['aboutImage'])) {
        $about_image = sanitize_text_field($_POST['aboutImage']);
        update_post_meta($post_id, "about_image", $about_image);
    }
    if (isset($_POST['video'])) {
        $about_video = sanitize_text_field($_POST['video']);
        update_post_meta($post_id, "about_video", $about_video);
    }
}
