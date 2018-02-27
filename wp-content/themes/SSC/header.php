<!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
    <title>SSC</title>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="<?php echo home_url('/wp-content/themes/ssc/js/uikit.min.js'); ?>"></script>
    <script src="https://use.fontawesome.com/46636d4f0f.js"></script>

    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/css/uikit.min.css"/>
    <link rel="stylesheet" href="<?php echo get_template_directory_uri(); ?>/style.css"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <style>
        @import url('https://fonts.googleapis.com/css?family=Oswald');
    </style>

    <meta description="">
</head>
<body>
<div class="uk-grid navigatiebalk">
    <div class="uk-width-1-2">
        <a href="http://localhost/sscfinal/home/"> <img class="ssclogo" src="
        <?php echo home_url('wp-content/uploads/2018/01/logo.png'); ?>" alt="Logo"> </a>
    </div>

    <div class="uk-width-large-1-2 uk-hidden-small uk-hidden-medium navigatiemenu">
        <?php html5blank_nav(); ?>
        <div class="socialbuttons uk-hidden-medium uk-hidden-small">
            <a target="blank" href="https://www.facebook.com/scalda.domeinictbeheer/"> <i
                        class="fa fa-facebook socialbutton"
                        aria-hidden="true"></i></a>
            <a target="blank" href="https://twitter.com/SSC_Scalda"> <i class="fa fa-twitter socialbutton"
                                                                        aria-hidden="true"></i></a>
            <a target="blank" href="https://www.linkedin.com/in/ssc-scalda-bb7410b8"> <i
                        class="fa fa-linkedin socialbutton"
                        aria-hidden="true"></i></a>
        </div>

    </div>
</div>
<div class="uk-grid uk-hidden-large hamburgermenu">
    <nav class="toggle">
        <a class="uk-navbar-toggle" data-uk-offcanvas="" href="#nav-off"></a>
    </nav>
</div>

<div id="nav-off" class="uk-offcanvas">
    <div class="uk-offcanvas-bar">
        <div class="uk-panel hamburger">
            <?php html5blank_nav(); ?>
        </div>
    </div>
</div>


<div class="uk-grid">
    <div class="uk-width-1-1 metasliderblok">
        <div class="metaslider">
            <?php echo do_shortcode('[metaslider id="67"]'); ?>
            <div class="pagename">
                <?php echo wp_title(''); ?>
            </div>
            <!-- Button "Project aanvragen" op de Home -->

            <a href="http://localhost/sscfinal/projectaanvraag/">
                <button class="slidelow-button uk-hidden-medium uk-hidden-small">
                    <span>Project aanvragen</span>
                </button>
            </a>
            <a href="http://localhost/sscfinal/projectaanvraag/">
                <button class="slidelow-klein uk-hidden-large">
                    <span>Project aanvragen</span>
                </button>
            </a>
        </div>
    </div>
</div>









