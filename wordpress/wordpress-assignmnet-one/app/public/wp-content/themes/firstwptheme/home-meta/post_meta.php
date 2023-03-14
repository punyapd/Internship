<?php
// Metaboxes
function post_metabox()
{
    add_meta_box(
        'post_metabox', // $id is a unique id given to every meta box
        'Hero section post Details', // $title is the title displayed in custom meta box
        'post_metabox_callback', // $callback is a function that outputs markup inside the custom meta box
        'page', // $page represents the admin page on which the meta box will be displayed on. It can be page, post, custom post type.
        'advanced', // $context represents the title of the meta box. It can be normal, advanced or side.
        'default' // $priority is the title of the box inside the context. It can be high, core, default or low.
    );
}
add_action('add_meta_boxes', 'post_metabox');
function post_metabox_callback($post)
{
    wp_nonce_field(basename(__FILE__), 'post_nonce');
    $post_title = get_post_meta($post->ID, "post_title", true);
    $post_description = get_post_meta($post->ID, "post_description", true);
    $post_image = get_post_meta($post->ID, "post_image", true);
?>
    <table class="table">
        <tr>
            <td><?php _e('title', 'post') ?></td><br>
            <td><input type="text" name="title" id="title" value="<?php if (isset($post_title)) echo $post_title; ?>" /></td><br>
        </tr>
        <tr>

            <td><?php _e('description', 'post') ?></td>

            <td><input type="text" name="description" id="description" value="<?php if (isset($post_description)) echo $post_description; ?>" /></td><br>
        </tr>

        <tr>

            <td><?php _e('image', 'post') ?></td>

            <td>
                <input type="url" name="image" id="image" value="<?php if (isset($post_image)) echo $post_image; ?>" />
            </td>
            <td><button type="button" class="button" data-media-uploader-target="#image"><?php _e('Upload Image', 'firstwptheme') ?></button></td>
        </tr>


    </table>
<?php
}


add_action("save_post", "post_save_metabox_data", 10, 2);
function post_save_metabox_data($post_id, $post)
{
    // we have verfied the nonce
    if (!isset($_POST['post_nonce']) || !wp_verify_nonce($_POST['post_nonce'], basename(__FILE__))) {
        return $post_id;
    }
    // verifying slug value
    $post_slug = "page";
    if ($post_slug != $post->post_type) {
        return;
    }
    //save value to db field
    $post_title = '';
    $post_description = '';
    $post_image = '';
    if (isset($_POST['title'])) {
        $post_title = sanitize_text_field($_POST['title']);
        update_post_meta($post_id, "post_title", $post_title);
    }
    if (isset($_POST['description'])) {
        $post_description = sanitize_text_field($_POST['description']);
        update_post_meta($post_id, "post_description", $post_description);
    }
    if (isset($_POST['image'])) {
        $post_image = sanitize_text_field($_POST['image']);
        update_post_meta($post_id, "post_image", $post_image);
    }
}


function load_metabox_admin_styles()
{
    wp_enqueue_script('metabox-js', get_template_directory_uri() . '/js/meta-box.js', array('jquery'), '', false);
    wp_enqueue_style('metabox-style', get_template_directory_uri() . '/css/meta-box.css');
}
add_action('admin_enqueue_scripts', 'load_metabox_admin_styles');
