<?php
// Metaboxes
function testimonials_metabox()
{
    add_meta_box(
        'testimonials_metabox', // $id is a unique id given to every meta box
        'home section testimonials Details', // $title is the title displayed in custom meta box
        'testimonials_metabox_callback', // $callback is a function that outputs markup inside the custom meta box
        'page', // $page represents the admin page on which the meta box will be displayed on. It can be page, testimonials, custom testimonials type.
        'advanced', // $context represents the title of the meta box. It can be normal, advanced or side.
        'default' // $priority is the title of the box inside the context. It can be high, core, default or low.
    );
}
add_action('add_meta_boxes', 'testimonials_metabox');
function testimonials_metabox_callback($post)
{
    wp_nonce_field(basename(__FILE__), 'testimonials_nonce');
    $testimonials_title = get_post_meta($post->ID, "testimonials_title", true);
    $testimonials_person = get_post_meta($post->ID, 'testimonials_person', true);
    $testimonials_person_role = get_post_meta($post->ID, "testimonials_person_role", true);
    $testimonials_description = get_post_meta($post->ID, "testimonials_description", true);
    $testimonials_image = get_post_meta($post->ID, "testimonials_image", true);

?>
    <table class="table">
        <tr>
            <td><?php _e('title', 'testimonials') ?></td><br>
            <td><input type="text" name="testimonialsTitle" id="testimonialsitle" value="<?php if (isset($testimonials_title)) echo $testimonials_title; ?>" /></td><br>
        </tr>


        <tr>

            <td><?php _e('person', 'testimonials') ?></td>

            <td><input type="text" name="testimonialsperson" id="testimonialsperson" value="<?php if (isset($testimonials_person)) echo $testimonials_person; ?>" /></td><br>
        </tr>
        <tr>

            <td><?php _e('person role', 'testimonials') ?></td>

            <td><input type="text" name="testimonialspersonRole" id="testimonialspersonRole" value="<?php if (isset($testimonials_person_role)) echo $testimonials_person_role; ?>" /></td><br>
        </tr>


        <tr>

            <td><?php _e('description', 'testimonials') ?></td>

            <td><input type="text" name="testimonialsDescription" id="testimonialsDescription" value="<?php if (isset($testimonials_description)) echo $testimonials_description; ?>" /></td><br>
        </tr>






        <tr>

            <td><?php _e('Image', 'testimonials') ?></td>

            <td>
                <input type="url" name="testimonialsImage" id="testimonialsimage" value="<?php if (isset($testimonials_image)) echo $testimonials_image; ?>" />
            </td>
            <td><button type="button" class="button" data-media-uploader-target="#testimonialsimage"><?php _e('Upload Image', 'firstwptheme') ?></button></td>
        </tr>


    </table>
<?php
}


add_action("save_post", "testimonials_save_metabox_data", 10, 2);
function testimonials_save_metabox_data($post_id, $post)
{
    if (!isset($_POST['testimonials_nonce']) || !wp_verify_nonce($_POST['testimonials_nonce'], basename(__FILE__))) {
        return $post_id;
    }
    // verifying slug value
    $post_slug = "page";
    if ($post_slug != $post->post_type) {
        return;
    }
    //save value to db field
    $testimonials_title = '';
    $testimonials_person = '';
    $testimonials_person_role = '';

    $testimonials_description = '';

    $testimonials_image = '';
    if (isset($_POST['testimonialsTitle'])) {
        $testimonials_title = sanitize_text_field($_POST['testimonialsTitle']);
        update_post_meta($post_id, "testimonials_title", $testimonials_title);
    }
    if (isset($_POST['testimonialsperson'])) {
        $testimonials_person = sanitize_text_field($_POST['testimonialsperson']);
        update_post_meta($post_id, "testimonials_person", $testimonials_person);
    }
    if (isset($_POST['testimonialspersonRole'])) {
        $testimonials_person_role = sanitize_text_field($_POST['testimonialspersonRole']);
        update_post_meta($post_id, "testimonials_person_role", $testimonials_person_role);
    }
    if (isset($_POST['testimonialsDescription'])) {
        $testimonials_description = sanitize_text_field($_POST['testimonialsDescription']);
        update_post_meta($post_id, "testimonials_description", $testimonials_description);
    }
    if (isset($_POST['testimonialsImage'])) {
        $testimonials_image = sanitize_text_field($_POST['testimonialsImage']);
        update_post_meta($post_id, "testimonials_image", $testimonials_image);
    }
}
