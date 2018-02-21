<?php get_header(); ?>
<div class="uk-grid">
    <div class="uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1 thumbnailblok">
        <div class="projectthumbnail">
        <?php echo get_the_post_thumbnail($post_id); ?>
        </div>
    </div>

    <div class="uk-width-large-1-2 uk-width-medium-1-2 uk-width-small-1-1">
        <div class="paginatitle postcontent">
        <?php echo get_the_title($post_id); ?>
        </div>

        <div class="postcontent ">
        <?php echo apply_filters('the_content', get_post_field('post_content', $post_id)); ?>
        </div>
    </div>

</div>
<?php get_footer(); ?>