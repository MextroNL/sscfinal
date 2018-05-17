<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>

    <title>Shared Service Center</title>

    <meta name="description" content="Het Shared Service Center is een leerbedrijf voor studenten, door studenten.
    Dit houd in dat de gehele omgeving word georganiseerd door de studenten zelf, van projectgroepen tot het management.
    De belangrijkste factoren binnen onze formule zijn de externe opdrachtgever en de expert.
    Wij werken graag samen met bedrijven die ons iets kunnen bij brengen of uit
    kunnen dagen iets nieuws te leren. Ook werken wij veel samen met experts die ons helpen met de complexere
    gedeeltes van de ICT, zodat we onze kennis direct uit het veld krijgen.">

    <meta name="keywords" content="Shared Service Center,SSC,ICT,Beheer,Servers,Onderhoud,Hardware,Software,Projecten,Vlissingen">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<?php echo home_url('wp-content/themes/SSC/js/uikit.min.js'); ?>"></script>
    <script src="https://use.fontawesome.com/46636d4f0f.js"></script>
    <script src="<?php echo home_url('wp-content/themes/SSC/js/components/parallax.min.js'); ?>"></script>
    <script src="<?php echo home_url('wp-content/themes/SSC/js/components/sticky.min.js'); ?>"></script>

    <link rel="shortcut icon" href="<?php echo get_stylesheet_directory_uri(); ?>/favicon.png" />
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/uikit.min.css"/>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

    <style>
        @import url('https://fonts.googleapis.com/css?family=Oswald');
    </style>
<!--    --><?php //wp_head(); ?>
</head>

<body>
<div class="nav-wrapper" data-uk-sticky>
<!--        Normal Grid-->
    <div class="uk-grid navigatiebalk">
<!--        Left Side -->
        <div class="uk-width-1-2">
            <a href="<?php echo home_url();?>"> <img class="ssclogo" src="
            <?php echo home_url('wp-content/uploads/2018/01/logo.png'); ?>" alt="Logo" > </a>
        </div>
<!--        Left Side End -->
<!--        Right Side-->
        <div class="uk-width-large-1-2 uk-hidden-small uk-hidden-medium navigatiemenu">
            <?php html5blank_nav(); ?>
            <div class="socialbuttons uk-hidden-medium uk-hidden-small">
                <a target="blank" href="https://www.facebook.com/scalda.domeinictbeheer/"><i class="fa fa-facebook socialbutton" aria-hidden="true"></i></a>
                <a target="blank" href="https://twitter.com/SSC_Scalda"><i class="fa fa-twitter socialbutton" aria-hidden="true"></i></a>
                <a target="blank" href="https://www.linkedin.com/in/ssc-scalda-bb7410b8"> <i class="fa fa-linkedin socialbutton" aria-hidden="true"></i></a>
            </div>
        </div>
<!--        Right Side End-->
    </div>
<!--        Normal Grid End-->
<!--        Hamburger Grid End-->
    <div class="uk-grid uk-hidden-large hamburgermenu">
        <nav class="toggle">
            <a class="uk-navbar-toggle" data-uk-offcanvas="" href="#nav-off"></a>
        </nav>
    </div>
<!--        Hamburger Grid End-->
<!--        Off Canvas-->
    <div id="nav-off" class="uk-offcanvas">
        <div class="uk-offcanvas-bar uk-offcanvas-bar-flip">
            <div class="uk-panel hamburger">
                <a href="#nav-off" class="uk-close"></a>
                <?php html5blank_nav(); ?>
                <div class="hamsocialbuttons">
                    <a target="blank" href="https://www.facebook.com/scalda.domeinictbeheer/"> <i class="fa fa-facebook hamsocialbutton" aria-hidden="true"></i></a>
                    <a target="blank" href="https://twitter.com/SSC_Scalda"><i class="fa fa-twitter hamsocialbutton" aria-hidden="true"></i></a>
                    <a target="blank" href="https://www.linkedin.com/in/ssc-scalda-bb7410b8"> <i class="fa fa-linkedin hamsocialbutton" aria-hidden="true"></i></a>
                </div>
                <div class="copyright">
                    <?php echo 'SSC '.comicpress_copyright(); ?>
                </div>
            </div>
        </div>
    </div>
</div>


    <div class="uk-grid">
        <div class="uk-width-1-1 metasliderblok" data-uk-parallax="{bgp: -30}">
            <div class="metaslider">
                <?php
$caption = '<div class="caption-wrap"><div class="caption" data-uk-parallax="{opacity:\'0.5\', viewport: 0.7, y: 50, velocity: 0.1}">Shared Service Center</div></div>';

                //Different Slides for each page
                if ( is_front_page() ) {
                    echo do_shortcode("[metaslider id=67] ") . $caption;

                    //Home
                } elseif ( is_page( 'over-ons' ) ) {
                    echo do_shortcode("[metaslider id=193]") . $caption;
                    //Over Ons
                } elseif ( is_page( 'projecten' ) ) {
                    echo do_shortcode("[metaslider id=196]") . $caption;
                    //Projecten
                } elseif ( is_page( 'contact' ) ) {
                    echo do_shortcode("[metaslider id=199]") . $caption;
                    //Contact
                } elseif ( is_page( 'projectaanvraag' ) ) {
                    echo do_shortcode("[metaslider id=201]") . $caption;
                    //Project Aanvraag
                }elseif ( is_single() ) {
                    echo do_shortcode("[metaslider id=203]") . $caption;
                    //Post Page
                }elseif ( is_page( 'parallax' ) ) {
                    echo do_shortcode("[metaslider id=67]") . $caption;
                    //Project Aanvraag
                }
                ?>

<!--                <div class="caption-wrap" data-uk-parallax="{bgp: -30}">-->
<!--                    <div class="caption" data-uk-parallax="{opacity:0, viewport: 0.7, y: 100}">--><?php //bloginfo( 'name' ); ?><!--</div>-->
<!--                </div>-->
                <div class="pagename" data-uk-parallax="{opacity: '0.5', viewport: 0.7, y: 50, velocity: 0.1}">
                    <?php echo wp_title(''); ?>
                </div>
                <!-- Button "Project aanvragen" op de Home -->

                <a href="<?php echo home_url('projectaanvraag/#form'); ?>">
                    <button class="slidelow-button">
                        <span>Project aanvragen</span>
                    </button>
                </a>
            </div>
        </div>
    </div>









