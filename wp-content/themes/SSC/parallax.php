<?php
/**
 * Template Name: parallax
 *
 * @package WordPress
 * @subpackage Twenty_Fourteens
 * @since Twenty Fourteen 1.0
 */
?>
<?php get_header(); ?>

    <div class="uk-grid">
        <div class="uk-width-large-1-2 uk-width-medium-1-1 uk-width-small-1-1 videoblok">
            <?php
            $post_id = 50;
            $post_data = get_post($post_id);
            $url = wp_get_attachment_url(get_post_thumbnail_id($post_id));
            $src = wp_get_attachment_image_src(get_post_thumbnail_id($post_id), 'thumbnail_size');
            $featured = get_the_post_thumbnail_url($post->ID, 'thumbnail', true);
            $url = $src[0];
            ?>
            <?php echo apply_filters('the_content', get_post_field('post_content', $post_id)); ?>
        </div>
        <div class="uk-width-large-1-2 uk-width-medium-1-1 uk-width-small-1-1 post">
            <?php
            $post_id = 52;
            $post_data = get_post($post_id);
            $url = wp_get_attachment_url(get_post_thumbnail_id($post_id));
            $src = wp_get_attachment_image_src(get_post_thumbnail_id($post_id), 'thumbnail_size');
            $featured = get_the_post_thumbnail_url($post->ID, 'thumbnail', true);
            $url = $src[0];
            ?>
            <div class="posttitle">
                <?php echo get_the_title($post_id); ?>
            </div>
            <div class="postcontent">
                <?php echo apply_filters('the_content', get_post_field('post_content', $post_id)); ?>
            </div>
        </div>
    </div>

    <div class="uk-grid">
        <div class="uk-width-1-1">
            <hr>
        </div>
    </div>

    <!-- 'Lees meer' Paginas -->

    <!-- begin 'Over ons'-->
    <div class="uk-grid paginablok">
        <div class="uk-width-large-1-3 uk-width-medium-1-2 uk-width-small-1-1 paginas" data-uk-parallax="{opacity: '0,1', viewport: 0.5, y: 100, velocity: 0.1}">
            <?php
            $post_id = 57;
            $post_data = get_post($post_id);
            $url = wp_get_attachment_url(get_post_thumbnail_id($post_id));
            $src = wp_get_attachment_image_src(get_post_thumbnail_id($post_id), 'thumbnail_size');
            $featured = get_the_post_thumbnail_url($post->ID, 'thumbnail', true);
            $url = $src[0];
            ?>
            <div class="thumbnail">
                <?php echo get_the_post_thumbnail($post_id); ?>
            </div>
            <div class="paginatitle">
                <?php echo get_the_title($post_id); ?>
            </div>
            <div class="secondary-titel">
                <?php echo the_secondary_title($post_id); ?>
            </div>
            <a href="<?php echo home_url('over-ons/#about'); ?>"><button class="vlakbutton"><span>Lees meer</span></button></a>
        </div>
        <!-- eind 'Over ons'-->

        <!-- begin 'Projecten'-->
        <div class="uk-width-large-1-3 uk-width-medium-1-2 uk-width-small-1-1 paginas" data-uk-parallax="{opacity: '0,1', viewport: 0.5, y: 100, velocity: 0.1}">
            <?php
            $post_id = 54;
            $post_data = get_post($post_id);
            $url = wp_get_attachment_url(get_post_thumbnail_id($post_id));
            $src = wp_get_attachment_image_src(get_post_thumbnail_id($post_id), 'thumbnail_size');
            $featured = get_the_post_thumbnail_url($post->ID, 'thumbnail', true);
            $url = $src[0];
            ?>
            <div class="thumbnail">
                <?php echo get_the_post_thumbnail($post_id); ?>
            </div>
            <div class="paginatitle">
                <?php echo get_the_title($post_id); ?>
            </div>
            <div class="secondary-titel">
                <?php echo the_secondary_title($post_id); ?>
            </div>
            <div class="paginacontent">
                <?php echo apply_filters('the_content', get_post_field('post_content', $post_id)); ?>
            </div>
            <a href="<?php echo home_url('projecten/#projectlist'); ?>"><button class="vlakbutton"><span>Lees meer</span></button></a>
        </div>
        <!-- eind 'projecten'-->

        <!-- begin 'contact'-->
        <div class="uk-width-large-1-3 uk-width-medium-1-2 uk-width-small-1-1 paginas" data-uk-parallax="{opacity: '0,1', viewport: 0.5, y: 100, velocity: 0.1}">
            <?php
            $post_id = 59;
            $post_data = get_post($post_id);
            $url = wp_get_attachment_url(get_post_thumbnail_id($post_id));
            $src = wp_get_attachment_image_src(get_post_thumbnail_id($post_id), 'thumbnail_size');
            $featured = get_the_post_thumbnail_url($post->ID, 'thumbnail', true);
            $url = $src[0];
            ?>
            <div class="thumbnail">
                <?php echo get_the_post_thumbnail($post_id); ?>
            </div>
            <div class="paginatitle">
                <?php echo get_the_title($post_id); ?>
            </div>
            <div class="secondary-titel">
                <?php echo the_secondary_title($post_id); ?>
            </div>
            <a href="<?php echo home_url('contact/#form'); ?>"><button class="vlakbutton"><span>Lees meer</span></button></a>
        </div>
    </div>
    <!-- eind 'contact'-->


<?php get_footer(); ?>