<?php
/**
 * Template Name: projecten-page
 *
 * @package WordPress
 * @subpackage Twenty_Fourteens
 * @since Twenty Fourteen 1.0
 */
?>
<?php get_header(); ?>

    <div class="uk-grid">
        <div class="uk-width-1-1 titel">
            <?php echo get_the_title($post_id = 120); ?>
        </div>
        <div class="uk-width-1-1 titel">
            <?php echo get_the_post_thumbnail($post_id = 120); ?>
        </div>
    </div>

    <div class="uk-grid projectenblok">
        <?php
        $args = array(
            'posts_per_page' => 6,
            'offset' => 0,
            'cat' => 8,
            'orderby' => 'post_date',
            'order' => 'ASC',
            'post_type' => 'post',
        );
        ?>
        <?php $query = new WP_Query($args); ?>
        <?php if ($query->have_posts()) : while ($query->have_posts()) : $query->the_post(); ?>

            <div class="uk-width-large-1-3 uk-width-medium-1-2 uk-width-small-1-1 projectengrid">
            <?php $featured = get_the_post_thumbnail_url($post->ID, 'full', true); ?>


                <div class="projectfoto" style="background-image: url('<?php echo $featured ?>');">

                </div>
                <a class="meerinformatie" target="_blank"
                   href="<?php the_permalink(); ?>"><?php echo get_the_title(); ?></a>
            </div>

        <?php endwhile;
            wp_reset_postdata();
        else : ?>
            <p><?php _e('Sorry, no posts matched your criteria.'); ?></p>
        <?php endif; ?>
    </div>

    <a href="http://localhost/sscfinal/projectaanvraag/">
        <button class="vlakbutton"><span>Project aanvragen</span></button>
    </a>

    </div>
    </div>
<?php get_footer(); ?>