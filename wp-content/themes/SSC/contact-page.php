<?php
/**
 * Template Name: contact-page
 *
 * @package WordPress
 * @subpackage Twenty_Fourteens
 * @since Twenty Fourteen 1.0
 */
?>
<?php get_header(); ?>

<div class="uk-grid">
    <div class="uk-width-1-1 titel">
        <?php echo get_the_title($post_id = 133); ?>
    </div>
    <div class="uk-width-1-1 second-titel">
        <?php echo apply_filters('the_content', get_post_field('post_content', $post_id)); ?>
    </div>
    <div class="uk-width-1-1 titel">
        <?php echo get_the_post_thumbnail($post_id = 133); ?>
    </div>

    <div class="uk-width-1-1 project-form">
        <?php echo do_shortcode('[contact-form-7 id="132" title="Project aanvragen"]'); ?>
    </div>
</div>


<?php get_footer(); ?>
