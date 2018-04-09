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
    <div class="uk-width-1-1 titel" id="form">
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
    <?php
    if(isset($_POST["verzenden"])) {
        if(empty(htmlspecialchars(trim($_POST["first-name"])))) {
            echo "<div class='uk-width-1-1 fout' role='alert'>";
            echo "Je moet een voornaam invullen.<br>";
            echo "</div>";
            echo "<style>#firstname{background-color: #ffe2e2;border-color: #ff0000; color: #c10000}</style>";
        }
        else{
            echo "<style>#firstname{background-color: #e4ffe2;border-color: #00ff00; color: #00a000}</style>";
        }
//        $character = htmlspecialchars(trim($_POST["first-name"]));
//        $len = strlen($character);
//        $min = 3;
//        if($len < $min){
//            echo "<div class='uk-width-1-1 fout' role='alert'>";
//            echo "Je naam moet minimaal 3 characters bevatten.<br>";
//            echo "</div>";
//        }
        if(empty(htmlspecialchars(trim($_POST["sur-name"])))) {
            echo "<div class='uk-width-1-1 fout'>";
            echo "Je moet een achternaam invullen.<br>";
            echo "</div>";
            echo "<style>#surname{background-color: #ffe2e2;border-color: #ff0000; color: #c10000}</style>";
        }
        else{
            echo "<style>#surname{background-color: #e4ffe2;border-color: #00ff00; color: #00a000}</style>";
        }
//        $character2 = htmlspecialchars(trim($_POST["sur-name"]));
//        $len2 = strlen($character2);
//        $min2 = 3;
//        if($len2 < $min2){
//            echo "<div class='uk-width-1-1 fout' role='alert'>";
//            echo "Je achternaam moet minimaal 3 characters bevatten.<br>";
//            echo "</div>";
//        }
        if(empty(htmlspecialchars(trim($_POST["your-email"])))) {
            echo "<div class='uk-width-1-1 fout'>";
            echo "Je moet een email adres invullen.<br>";
            echo "</div>";
            echo "<style>#email{background-color: #ffe2e2;border-color: #ff0000; color: #c10000}</style>";
        } elseif(!filter_var($_POST["your-email"], FILTER_VALIDATE_EMAIL)) {
            echo "<div class='uk-width-1-1 fout'>";
            echo "Je moet een geldig email adres invullen.<br>";
            echo "</div>";
            echo "<style>#email{background-color: #ffe2e2;border-color: #ff0000; color: #c10000}</style>";
        }
        else{
            echo "<style>#email{background-color: #e4ffe2;border-color: #00ff00; color: #00a000}</style>";
        }
        if(empty(htmlspecialchars(trim($_POST["projectnaam"])))) {
            echo "<div class='uk-width-1-1 fout'>";
            echo "Je moet een projectnaam invullen.<br>";
            echo "</div>";
            echo "<style>#projectnaam{background-color: #ffe2e2;border-color: #ff0000; color: #c10000}</style>";
        }
        else{
            echo "<style>#projectnaam{background-color: #e4ffe2;border-color: #00ff00; color: #00a000}</style>";
        }
        if(empty(htmlspecialchars(trim($_POST["message"])))) {
            echo "<div class='uk-width-1-1 fout'>";
            echo "Je moet een omschrijving invullen.<br>";
            echo "</div>";
            echo "<style>#message{background-color: #ffe2e2;border-color: #ff0000; color: #c10000}</style>";
        }
        else{
            echo "<style>#message{background-color: #e4ffe2;border-color: #00ff00; color: #00a000}</style>";
        }
    }
    ?>
    <div class="uk-width-1-1 project-form">
    <?php echo do_shortcode('[contact-form-7 id="138" title="Project aanvragen"]'); ?>
    </div>
</div>
<?php get_footer(); ?>
