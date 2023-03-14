<?php
// Metaboxes
function team_metabox()
{
    add_meta_box(
        'team_metabox', // $id is a unique id given to every meta box
        'home section team Details', // $title is the title displayed in custom meta box
        'team_metabox_callback', // $callback is a function that outputs markup inside the custom meta box
        'page', // $page represents the admin page on which the meta box will be displayed on. It can be page, team, custom team type.
        'advanced', // $context represents the title of the meta box. It can be normal, advanced or side.
        'default' // $priority is the title of the box inside the context. It can be high, core, default or low.
    );
}
add_action('add_meta_boxes', 'team_metabox');
function team_metabox_callback($post)
{
    wp_nonce_field(basename(__FILE__), 'team_nonce');
    $team_title = get_post_meta($post->ID, "team_title", true);
    $team_description = get_post_meta($post->ID, "team_description", true);
    $team_image = get_post_meta($post->ID, "team_image", true);

?>
    <table class="table">
        <tr>
            <td><?php _e('title', 'team') ?></td><br>
            <td><input type="text" name="teamTitle" id="teamitle" value="<?php if (isset($team_title)) echo $team_title; ?>" /></td><br>
        </tr>
        <tr>

            <td><?php _e('description', 'team') ?></td>

            <td><input type="text" name="teamDescription" id="teamDescription" value="<?php if (isset($team_description)) echo $team_description; ?>" /></td><br>
        </tr>






        <tr>

            <td><?php _e('Image', 'team') ?></td>

            <td>
                <input type="url" name="teamImage" id="teamimage" value="<?php if (isset($team_image)) echo $team_image; ?>" />
            </td>
            <td><button type="button" class="button" data-media-uploader-target="#teamimage"><?php _e('Upload Image', 'firstwptheme') ?></button></td>
        </tr>


    </table>
<?php
}


add_action("save_post", "team_save_metabox_data", 10, 2);
function team_save_metabox_data($post_id, $post)
{
    if (!isset($_POST['team_nonce']) || !wp_verify_nonce($_POST['team_nonce'], basename(__FILE__))) {
        return $post_id;
    }
    // verifying slug value
    $post_slug = "page";
    if ($post_slug != $post->post_type) {
        return;
    }
    //save value to db field
    $team_title = '';
    $team_description = '';
    $team_image = '';
    if (isset($_POST['teamTitle'])) {
        $team_title = sanitize_text_field($_POST['teamTitle']);
        update_post_meta($post_id, "team_title", $team_title);
    }
    if (isset($_POST['teamDescription'])) {
        $team_description = sanitize_text_field($_POST['teamDescription']);
        update_post_meta($post_id, "team_description", $team_description);
    }
    if (isset($_POST['teamImage'])) {
        $team_image = sanitize_text_field($_POST['teamImage']);
        update_post_meta($post_id, "team_image", $team_image);
    }
}
