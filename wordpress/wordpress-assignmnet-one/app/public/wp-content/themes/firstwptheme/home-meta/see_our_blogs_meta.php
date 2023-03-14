<?php
// Metaboxes
function seeblog_metabox()
{
    add_meta_box(
        'seeblog_metabox', // $id is a unique id given to every meta box
        'home section seeblog Details', // $title is the title displayed in custom meta box
        'seeblog_metabox_callback', // $callback is a function that outputs markup inside the custom meta box
        'page', // $page represents the admin page on which the meta box will be displayed on. It can be page, seeblog, custom seeblog type.
        'advanced', // $context represents the title of the meta box. It can be normal, advanced or side.
        'default' // $priority is the title of the box inside the context. It can be high, core, default or low.
    );
}
add_action('add_meta_boxes', 'seeblog_metabox');
function seeblog_metabox_callback($post)
{
    wp_nonce_field(basename(__FILE__), 'seeblog_nonce');
    $seeblog_title = get_post_meta($post->ID, "seeblog_title", true);
    $seeblog_description = get_post_meta($post->ID, "seeblog_description", true);

?>
    <table class="table">
        <tr>
            <td><?php _e('title', 'seeblog') ?></td><br>
            <td><input type="text" name="seeblogTitle" id="seeblogTitle" value="<?php if (isset($seeblog_title)) echo $seeblog_title; ?>" /></td><br>
        </tr>

        <tr>

            <td><?php _e('description', 'seeblog') ?></td>

            <td><input type="text" name="seeblogDescription" id="seeblogDescription" value="<?php if (isset($seeblog_description)) echo $seeblog_description; ?>" /></td><br>
        </tr>

    </table>
<?php
}

add_action("save_post", "seeblog_save_metabox_data", 10, 2);
function seeblog_save_metabox_data($post_id, $post)
{
    if (!isset($_POST['seeblog_nonce']) || !wp_verify_nonce($_POST['seeblog_nonce'], basename(__FILE__))) {
        return $post_id;
    }
    // verifying slug value
    $post_slug = "page";
    if ($post_slug != $post->post_type) {
        return;
    }
    //save value to db field
    $seeblog_title = '';
    $seeblog_description = '';

    if (isset($_POST['seeblogTitle'])) {
        $seeblog_title = sanitize_text_field($_POST['seeblogTitle']);
        update_post_meta($post_id, "seeblog_title", $seeblog_title);
    }

    if (isset($_POST['seeblogDescription'])) {
        $seeblog_description = sanitize_text_field($_POST['seeblogDescription']);
        update_post_meta($post_id, "seeblog_description", $seeblog_description);
    }
}
