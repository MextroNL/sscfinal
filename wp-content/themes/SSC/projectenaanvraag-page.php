<?php
/**
 * Template Name: projectenaanvraag-page
 *
 * @package WordPress
 * @subpackage Twenty_Fourteens
 * @since Twenty Fourteen 1.0
 */
?>
<?php get_header(); ?>

<div class="uk-grid">
    <div class="uk-width-1-1 titel">
        <?php echo get_the_title($post_id = 148); ?>
    </div>
    <div class="uk-width-1-1 second-titel">
        <?php echo apply_filters('the_content', get_post_field('post_content', $post_id=148)); ?>
    </div>
    <div class="uk-width-1-1 titel">
        <?php echo get_the_post_thumbnail($post_id = 148); ?>
    </div>
    <div class="uk-width-1-1 project-form">
        <?php
        $post_id = 148;
        $post_data = get_post($post_id);
        $url = wp_get_attachment_url(get_post_thumbnail_id($post_id));
        $src = wp_get_attachment_image_src(get_post_thumbnail_id($post_id), 'thumbnail_size');
        $featured = get_the_post_thumbnail_url($post->ID, 'thumbnail', true);
        $url = $src[0];
        ?>

        <?php echo apply_filters('the_content', get_post_field('post_content', $post_id)); ?>
    </div>

    <div class="uk-width-1-1 project-form">
    <?php echo do_shortcode('[contact-form-7 id="138" title="Project aanvragen"]'); ?>
    </div>
</div>
