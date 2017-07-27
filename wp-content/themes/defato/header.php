<!DOCTYPE html>
<!--[if IE 7]>
<html id="ie7" <?php language_attributes(); ?>><![endif]-->
<!--[if IE 8]>
<html id="ie8" <?php language_attributes(); ?>><![endif]-->
<html data-wf-page="58ffbf3224b4577e0f17ce08" data-wf-site="58ffbf3224b4577e0f17ce07" <?php language_attributes(); ?>>
<head>
    <meta charset="<?php bloginfo('charset'); ?>"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta http-equiv="X-UA-Compatible" content="IE=Edge,chrome=1"/>
    <link rel="profile" href="http://gmpg.org/xfn/11"/>
    <link rel="pingback" href="<?php bloginfo('pingback_url'); ?>"/>
    <link href="<?php echo get_template_directory_uri() ?>/css/normalize.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_template_directory_uri() ?>/css/slick.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_template_directory_uri() ?>/css/slick-theme.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_template_directory_uri() ?>/mp/dist/magnific-popup.css" rel="stylesheet" type="text/css">
    <link href="<?php echo get_template_directory_uri() ?>/css/webflow.css" rel="stylesheet" type="text/css">
    <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.1.0/css/font-awesome.min.css" rel="stylesheet">
    <script async="async" src="<?php bloginfo('url'); ?>/wp-content/themes/defato/js/jquery-latest.min.js" type="text/javascript"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/webfont/1.4.7/webfont.js"></script>
    <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
    <link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,700,900" rel="stylesheet">
    <script type="text/javascript">
        WebFont.load({
            google: {
                families: ["Open Sans:300,300italic,400,400italic,600,600italic,700,700italic,800,800italic"]
            }
        });
    </script>
    <script>
        $(document).ready(function () {
            $(".search-wrapper input").mouseenter(function () {
                $(".search-wrapper button").css("background-color", "#4aba10");


            });
            $(".search-wrapper input").mouseout(function () {
                $(".search-wrapper button").css("background-color", "");
            });
        });</script>
    <script>
        (function ($) {

            $(document).ready(function () {
                $('#cssmenu').prepend('<div id="menu-button">Menu</div>');
                $('#cssmenu #menu-button').on('click', function () {
                    var menu = $(this).next('ul');
                    if (menu.hasClass('open')) {
                        menu.removeClass('open');
                    } else {
                        menu.addClass('open');
                    }
                });
            });

        })(jQuery);
    </script>
    <script>
        $(document).ready(function () {
            $('#menuhome').prepend('<div id="menu-button">Menu</div>');
            $('#menuhome #menu-button').on('click', function () {
                var menu = $(this).next('ul');
                if (menu.hasClass('open')) {
                    menu.removeClass('open');
                } else {
                    menu.addClass('open');
                }
            });
        });</script>
    <script>
        $(document).ready(function () {

            var $searchTrigger = $('[data-ic-class="search-trigger"]'),
                $searchInput = $('[data-ic-class="search-input"]'),
                $searchClear = $('[data-ic-class="search-clear"]');

            $searchTrigger.click(function () {

                var $this = $('[data-ic-class="search-trigger"]');
                $this.addClass('active');
                $searchInput.focus();

            });

            $searchInput.blur(function () {

                if ($searchInput.val().length > 0) {

                    return false;

                } else {

                    $searchTrigger.removeClass('active');

                }

            });

            $searchClear.click(function () {
                $searchInput.val('');
            });

            $searchInput.focus(function () {
                $searchTrigger.addClass('active');
            });

        });
    </script>

    <script src="<?php echo get_template_directory_uri() ?>/js/modernizr.js" type="text/javascript"></script>
    <style>
        .w-container {
            max-width: 1170px;
        }
    </style>
    <?php wp_head(); ?>
</head>

<body>
<div class="header">
    <div class="w-container">
        <div class="w-row">
            <div class="w-col w-col-4">
                <div class="clima-tempo"><!-- weather widget start --><a target="_blank"
                                                                         href="http://ibooked.com.br/weather/itabira-w302910"><img
                                src="https://w.bookcdn.com/weather/picture/13_w302910_1_8_ffffff_158_fff5d9_333333_000000_3_fff5d9_333333_0_6.png?scode=2&domid=585&anc_id=55635"
                                alt="booked.net"/></a><!-- weather widget end -->
                    <div class="date-temp-home">
                        <?php setlocale(LC_ALL, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese'); ?>
                        <?php echo ucfirst(utf8_encode(strftime('%A, %d de %B de %G', time()))) ?></div>
                </div>
            </div>
            <a href="<?php echo get_site_url() ?>" class="column w-col w-col-4">
                <img class="logo"
                     src="<?php echo get_template_directory_uri() ?>/images/logo-defato.png"
                     width="200">
            </a>
            <div class="w-clearfix w-col w-col-4">
                <div class="box-br381 w-clearfix">
			<a class="br-agora" href="<?php echo get_category_link(get_cat_ID('BR-381')) ?>">
				<i class="fa fa-road" aria-hidden="true" style="font-size:1.3rem;"></i>
				&nbsp;
				BR-381 AGORA
			</a>
                </div>
                <div class="w-col w-col-10"><?php echo do_shortcode('[cn-social-icon selected_icons="1,2,3,6,7"]'); ?></div>
                <div id="box-search-home" class="w-col w-col-2">
                    <form role="search" class="icon-search-container" data-ic-class="search-trigger" method="get"
                          action="<?php echo esc_url(home_url()); ?>">
                        <span class="fa fa-search"></span>
                        <input type="text" name="s" class="search-input" data-ic-class="search-input"
                               placeholder="Pesquisar.." title="<?php esc_attr_e('Pesquisar..', 'defato'); ?>"/>
                        <span class="fa fa-times-circle" data-ic-class="search-clear"></span>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<div class="sec-menu">
    <div class="w-container">
        <div class="menu-principal"><?php
            wp_nav_menu(array(
                'menu' => 'Principal',
                'container_id' => 'menuhome',
                'walker' => new CSS_Menu_Walker()
            ));
            ?> </div>
    </div>
    <div class="menu-em-alta">
        <div class="w-container">
            <div class="menu-alta-titulo"><h2 class="menu-alta-titulo">Em Alta</h2></div>
            <?php
            wp_nav_menu(array(
                'menu' => 'Em alta',
                'container_id' => 'cssmenu',
                'walker' => new CSS_Menu_Walker()
            ));
            ?>
        </div>
    </div>
	<div class="sec-banner-home-3">
        <div class="box-banner-home">
            <div class="w-container">
                <div class="banner-home-2">
                    <?php if(function_exists( 'wp_bannerize' ))
	wp_bannerize( 'group=Home 970x90' ); ?>
                </div>
            </div>
        </div>
    </div>