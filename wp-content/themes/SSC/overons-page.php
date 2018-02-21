<?php
/**
 * Template Name: overons-page
 *
 * @package WordPress
 * @subpackage Twenty_Fourteens
 * @since Twenty Fourteen 1.0
 */
?>
<?php get_header(); ?>
<div class="uk-grid">
    <div class="uk-width-1-1 content-text">
        <?php
        $post_id = 83;
        $post_data = get_post($post_id);
        $url = wp_get_attachment_url(get_post_thumbnail_id($post_id));
        $src = wp_get_attachment_image_src(get_post_thumbnail_id($post_id), 'thumbnail_size');
        $featured = get_the_post_thumbnail_url($post->ID, 'thumbnail', true);
        $url = $src[0];
        ?>
        <h2 class="titel">
            <?php echo get_the_title($post_id=83); ?>
        </h2>
        <?php echo apply_filters('the_content', get_post_field('post_content', $post_id)); ?>
    </div>
</div>

<div class="uk-grid">
    <div class="uk-width-1-1 werkzaamheden">
        <img class="werkzaamhedenimg" src="<?php echo home_url('wp-content/uploads/2018/01/idee.png'); ?>" alt="img">
    </div>
</div>
<div class="uk-grid">
    <div class="uk-width-1-1 content-text">

        <?php
        $post_id = 80;
        $post_data = get_post($post_id);
        $url = wp_get_attachment_url(get_post_thumbnail_id($post_id));
        $src = wp_get_attachment_image_src(get_post_thumbnail_id($post_id), 'thumbnail_size');
        $featured = get_the_post_thumbnail_url($post->ID, 'thumbnail', true);
        $url = $src[0];
        ?>
        <div class="titel">
            <?php echo get_the_title($post_id=80); ?>
        </div>
        <?php echo apply_filters('the_content', get_post_field('post_content', $post_id)); ?>

       <a href="http://localhost/sscfinal/projecten/"> <button class="werkzaamknop"><span>Bekijk projecten</span></button></a>
    </div>
</div>
<?php get_footer(); ?>