<?php //if(function_exists(‘rl_color’)){ $rl_category_color = rl_color($the_category_id); } ?>
<div class="section">
    <div class="container w-container">
        <div class="box-cidades-home w-row">
            <div class="w-col w-col-9">
                <div class="w-row">
                    <div class="w-col w-col-7">

                        <!--destaque - slider-->
                        <div class="slider w-slider">
                            <?php echo do_shortcode('[recent_post_slider design="design-3"]'); ?>
                        </div>

                        <!--destaques-->
                        <div class="w-row">
                            <?php
                            $the_query = new WP_Query(array(
                                'category_name' => 'destaque',
                                'posts_per_page' => 2
                            ));
				
				$c = 1;
                            while ($the_query->have_posts()) :
                                $the_query->the_post();
                                $thumb = get_post_thumbnail_id();
                                $image = vt_resize($thumb, '', 250, 250, true);
				$editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));
				$rl_category_color = rl_color(get_cat_ID($editorial->cat_name));
                                ?>
				
			
				<!--loop-->
                                <div class="news-left-1 w-col w-col-6">
			    		<a class="category-link" style="position:absolute; top:25px; background:<?php echo $rl_category_color ?>"
					   href="<?php echo get_category_link($editorial->cat_ID) ?>">
					    <?php echo $editorial->cat_name ?>
					</a>
                                    <img class="news-left-img"
                                         src="<?php echo $image[url]; ?>"
                                         width="<?php echo $image[width]; ?>"
                                         height="<?php echo $image[height]; ?>"/>
                                    <a href="<?php the_permalink() ?>" class="news-left-title"><?php echo get_the_title(); ?></a>
                                </div>
			
			
                                <?php
                            endwhile;
                            wp_reset_postdata();
                            ?>
                        </div>
                        <!--tv defato-->
                        <?php
                        $the_query = new WP_Query(array(
                            'category_name' => 'tv-defato',
                            'posts_per_page' => 1
                        ));
                        while ($the_query->have_posts()) : $the_query->the_post(); ?>

                            <div class="news-left-video">

                                <?php
                                $thumb = get_post_thumbnail_id();
                                $image = vt_resize($thumb, '', 500, 290, true);
                                ?>
                                <h3 class="news-left-title-v">TV DE FATO</h3>
                                <a href="<?php the_permalink() ?>">
                                    <div class="news-left-video-image"><img
                                                src="<?php echo $image[url]; ?>"
                                                width="<?php echo $image[width]; ?>"
                                                height="<?php echo $image[height]; ?>"/></div>
                                    <div class="meta-wrapper">
                                        <div class="vide-title-news"><a
                                                    href="<?php the_permalink() ?>"><?php the_title(); ?></a></div>
                                    </div>
                            </div></a>
                            <?php
                        endwhile;
                        wp_reset_postdata();
                        ?>
                    </div>

                    <div class="w-col w-col-5">

                        <!--adword-->
                        <div class="sombra-banner-home">
                            <img class="image-3"
                                 src="<?php echo get_template_directory_uri() ?>/images/banner.png">
                        </div>

                        <h3 class="title-home-cidades">Cidades</h3>

                        <!--ultimo post das cidades-->
                        <ol class="ordered-list w-list-unstyled">
                            <?php
                            $cid_cat_ID = get_cat_ID('cidades');
                            $cid_cats = get_categories(array('parent' => $cid_cat_ID));
                            shuffle($cid_cats);

                            $news_query = new WP_Query;

                            $c = 0;
                            foreach ($cid_cats as $cid_cat) :
                                if ($c++ >= 7) break;
                                $news_query->query(array(
                                    'cat' => $cid_cat->cat_ID,
                                    'posts_per_page' => 1
                                ));
                                ?>
                                <?php

                                while ($news_query->have_posts()) :
                                    $news_query->the_post();
                                    $thumb = get_post_thumbnail_id();
                                    $image = vt_resize($thumb, '', 140, 95, true);

                                    if (function_exists('rl_color')) {
                                        $rl_category_color = rl_color($cid_cat->cat_ID);
                                        $style = 'style = "background: ' . $rl_category_color . '"';
                                    }
                                    ?>

                                    <!--loop-->
                                    <li class="box-list-cidades-home w-clearfix">
                                        <a href="<?php the_permalink() ?>"><img class="box-list-cidades-home-img"
                                                                                src="<?php echo $image[url]; ?>"
                                                                                width="<?php echo $image[width]; ?>"
                                                                                height="<?php echo $image[height]; ?>"/></a>
                                        <a href="<?php echo get_category_link($cid_cat->cat_ID) ?>"
                                           class="titulo-categoria-cidades" <?php echo @$style ?>><?php echo $cid_cat->name ?></a>
                                        <a href="<?php the_permalink() ?>"
                                           class="titulo-cidades-home"><?php echo get_the_title(); ?></a>
                                    </li>

                                <?php endwhile; ?>

                                <?php
                            endforeach;
                            wp_reset_postdata();
                            ?>
                        </ol>


                    </div>
                </div>
            </div>


            <div class="sidebar w-col w-col-3">
                <div class="box-vagas-home">
                    <h3 class="vagas-titulo">VAGAS</h3>
                    <div class="vagas-titulo-p">Confira oportunidades de emprego em Itabira e Reigão.</div>
                    <img class="img-vagas" src="<?php echo get_template_directory_uri() ?>/images/vagas.png">
                </div>
                <div class="box-wpp-home">
                    <h4 class="titulo-wpp-home">WHATSAPP DEFATO</h4>
                    <div class="sub-wpp-home">Tem alguma sugestão ou quer fazer contato conosco? Estamos à disposição no
                        WhatsApp.
                    </div>
                    <img class="wpp-img-box" src="<?php echo get_template_directory_uri() ?>/images/whatsapp.png">
                </div>
                <div class="box-newsletter-home">
                    <h3 class="newsletter-titulo">NEWSLETTER</h3>
                    <div class="form-wrapper w-form">
                        <form data-name="Email Form" id="email-form" name="email-form">
                            <input class="input-newsletter w-input" data-name="Field" id="Field-2" maxlength="256"
                                   name="Field" placeholder="Seu endereço de e-mail" required="required" type="email">
                            <input class="bt-newsletter-home w-button" data-wait="Por favor espere..." type="submit"
                                   value="CADASTRAR">
                        </form>
                        <div class="w-form-done">
                            <div>Obrigado! Seu cadastro foi efetuado!</div>
                        </div>
                        <div class="w-form-fail">
                            <div>Oops! Algo deu errado ao enviar o formulário</div>
                        </div>
                    </div>
                </div>
                <div class="banner-home-right">
                    <img class="image-2"
                         src="<?php echo get_template_directory_uri() ?>/images/banner-2.png">
                </div>
            </div>
        </div>


        <!--ultimo post de cada editorial-->
        <div class="box-sec-last">
            <div class="w-row" id="carr_editoriais" style="display: none">
                <?php
                $news_cat_ID = get_cat_ID('editoriais');
                $news_cats = get_categories(array('parent' => $news_cat_ID));
                shuffle($news_cats);

                $news_query = new WP_Query;

                $c = 0;
                foreach ($news_cats as $news_cat) :
                    //if ($c++ >= 4) break;
                    $news_query->query(array(
                        'cat' => $news_cat->term_id,
                        'posts_per_page' => 1,
                        'no_found_rows' => true,
                        'ignore_sticky_posts' => true,
                    ));

                    while ($news_query->have_posts()) : $news_query->the_post();
                        $thumb = get_post_thumbnail_id();
                        $image = vt_resize($thumb, '', 277, 142, true);
                        $image[url] .= '?w=277&h=142';
                        ?>

                        <!--loop-->
                        <div class="div-news-last-home w-clearfix w-col w-col-3">
                            <img class="image-editorial-home" src="<?php echo $image[url]; ?>"/>
                            <?php if (function_exists('rl_color')) {
                                $rl_category_color = rl_color(get_cat_ID($news_cat->name));
                                $style = 'style = "background: ' . $rl_category_color . '"';
                            } ?>
                            <a href="<?php echo get_category_link($news_cat->term_id) ?>"
                               class="category-last-news" <?php echo @$style ?>><?php echo esc_html($news_cat->name) ?></a>
                            <a href="<?php the_permalink() ?>" class="news-last-titulo"><?php the_title(); ?></a>
                        </div>

                        <?php
                        wp_reset_postdata();
                    endwhile;
                endforeach;
                ?>

            </div>


            <script>
                jQuery(document).ready(function () {
                    $('#carr_editoriais').slick({
                        infinite: true,
                        slidesToShow: 4,
                        slidesToScroll: 1,
                        autoplay: true,
                        arrows: true,
                        responsive: [
                            {
                                breakpoint: 1024,
                                settings: {
                                    slidesToShow: 3,
                                    slidesToScroll: 3,
                                    infinite: true,
                                    dots: true
                                }
                            },
                            {
                                breakpoint: 768,
                                settings: {
                                    slidesToShow: 2,
                                    slidesToScroll: 2
                                }
                            },
                            {
                                breakpoint: 480,
                                settings: {
                                    slidesToShow: 1,
                                    slidesToScroll: 1
                                }
                            }
                        ],
			prevArrow : '<button type="button" class="slick-prev3" style="top:35%"><</button>',
                        nextArrow : '<button type="button" class="slick-next3" style="top:35%"><</button>'
                        
                    });

                    $('#carr_editoriais').show();
                });
            </script>

        </div>

    </div>
</div>
<div class="sec-colunas">
    <h3 class="titulo-colunas-blog">COLUNAS E BLOGS</h3>
    <div class="box-blog-coluna">
        <div class="w-container">

            <div class="w-row centered aligncenter" id="carr_autor" style="display: none">

                <?php
                $args = array(
                    'role' => 'author'
                );
                $autores = get_users($args);
                shuffle($autores);

                foreach ($autores as $autor) :
                    ?>
                    <a href="<?php echo get_author_posts_url($autor->ID) ?>"
                       class="box-colunista-blog w-clearfix w-col w-col-3">
                        <div class="autor-imagem-home">
                            <?php echo get_avatar($autor->ID, 130, '', '', array('class' => 'blog-colum-img')) ?></div>
                        <div class="text-block-2"><?php echo esc_html($autor->display_name) ?></div>
                        <div class="p-blogs-colum">
                            <?php echo wp_trim_words(get_the_author_meta('description', $autor->ID), 10, '...') ?>
                        </div>
                    </a>

                <?php endforeach; ?>
            </div>

            <script>
                jQuery(document).ready(function () {
                    $('#carr_autor').slick({
                        infinite: true,
                        slidesToShow: 4,
                        slidesToScroll: 1,
                        autoplay: true,
                        responsive: [
                            {
                                breakpoint: 1024,
                                settings: {
                                    slidesToShow: 3,
                                    slidesToScroll: 3,
                                    infinite: true,
                                    dots: true
                                }
                            },
                            {
                                breakpoint: 768,
                                settings: {
                                    slidesToShow: 2,
                                    slidesToScroll: 2
                                }
                            },
                            {
                                breakpoint: 480,
                                settings: {
                                    slidesToShow: 1,
                                    slidesToScroll: 1
                                }
                            }
                        ],
			prevArrow : '<button type="button" class="slick-prev2" style="top:50%"><</button>',
                        nextArrow : '<button type="button" class="slick-next2" style="top:50%"><</button>'
                        
                    });

                    $('#carr_autor').show();
                });	
            </script>

        </div>
    </div>
    <div>
        <div class="w-container">
            <div class="box-banner-colunista">
                <img class="image-6"
                     sizes="(max-width: 767px) 100vw, (max-width: 991px) 728px, 940px"
                     src="<?php echo get_template_directory_uri() ?>/images/banner-3.png"
                     srcset="<?php echo get_template_directory_uri() ?>/images/banner-3-p-500.png 500w, <?php echo get_template_directory_uri() ?>/images/banner-3.png 970w">
            </div>
        </div>
    </div>
</div>

<?php

$entreterimentos = array();

$the_query = new WP_Query(array(
    'category_name' => 'entreterimento',
    'posts_per_page' => 8
));
while ($the_query->have_posts()) :
    $the_query->the_post();
    $thumb = get_post_thumbnail_id();
    $image = get_the_post_thumbnail_url();

    $item['titulo'] = get_the_title();
    $item['imagem'] = $image;
    $item['link'] = get_the_permalink();

    $entreterimentos[] = $item;

endwhile;

wp_reset_postdata();
?>

<div class="sec-entretenimento">
    <div class="w-container">
        <h2 class="titulo-entretenimento-home">ENTRETENIMENTO</h2>
        <div class="box-entre-1">
            <div class="w-row">
                <div class="entre-colum w-col w-col-4 cursor-pointer"><a
                            href="<?php echo $entreterimentos[0]['link'] ?>">
                        <img class="entrete-img" src="<?php echo $entreterimentos[0]['imagem'] . '?w=396&h=263'; ?>"/>
                        <div class="entre-meta-wrapper">
                            <div class="news-entre-titulo"><a
                                        href="<?php the_permalink() ?>"><?php echo $entreterimentos[0]['titulo'] ?></a>
                            </div>
                        </div>
                    </a></div>


                <div class="entre-colum w-col w-col-4 cursor-pointer"><a
                            href="<?php echo $entreterimentos[1]['link'] ?>">
                        <img class="entrete-img" src="<?php echo $entreterimentos[1]['imagem'] . '?w=396&h=263'; ?>"/>
                        <div class="entre-meta-wrapper">
                            <div class="news-entre-titulo"><a
                                        href="<?php the_permalink() ?>"><?php echo $entreterimentos[1]['titulo'] ?></a>
                            </div>
                        </div>
                    </a></div>


                <div class="entre-colum w-col w-col-4">
                    <!--adword-->
                    <img style="height:250px" src="<?php echo get_template_directory_uri() ?>/images/5.png">
                </div>
            </div>
        </div>
        <div class="boxx-entre-2">
            <div class="w-row">
                <?php
                for ($x = 2; $x < sizeof($entreterimentos); $x++):
                    ?>
                    <!--loop-->
                    <a href="<?php echo $entreterimentos[$x]['link'] ?>')"
                       class="box-news-entre-colum w-clearfix w-col w-col-4 cursor-pointer"
                       style="margin-bottom: 10px">
                        <img class="img-news-entre-2"
                             src="<?php echo $entreterimentos[$x]['imagem'] . '?w=180&h=150'; ?>"
                             style="width: 180px; height: 150px;"/>
                        <div class="titulo-news-entre-2"><?php echo $entreterimentos[$x]['titulo'] ?></div>
                    </a>
                    <?php
                endfor;
                ?>
            </div>
        </div>
    </div>

    <div class="sec-agenda">
        <div class="w-container">
            <div class="w-row">

                <h3 class="agend-titulo-home">AGENDA</h3>

                <ol class="w-list-unstyled" id="carr_agenda" style="display: none">

                    <?php
                    $the_query = new WP_Query(array(
                        'post_type' => 'event',
                        'suppress_filters' => false,
                        'posts_per_page' => 9,
                        'event_start_after' => 'today',
                        'showpastevents' => false,
                        //'orderby' => 'eventend',
                    ));
                    while ($the_query->have_posts()) :
                        $the_query->the_post();
                        $evento = get_post(get_the_ID());
                        $thumb = get_post_thumbnail_id();
                        $image = vt_resize($thumb, '', 140, 95, true);
                        setlocale(LC_ALL, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
                        $data_inicio = strtotime($evento->StartDate);

                        //var_dump($evento);
                        ?>

                        <!--loop-->
                        <li class="agenda-list w-clearfix w-col w-col-4" style="display: inline-block">
                            <a href="<?php the_permalink() ?>">
                                <div class="date-agend-list w-clearfix"><?php echo strftime('%d', $data_inicio) ?>
                                    <br><span
                                            class="agend-data-span"><?php echo ucfirst(strftime('%b', $data_inicio)) ?></span>
                                </div>
                                <img class="img-agend-list" src="<?php echo $image['url'] ?>" style="margin-left: 5px">
                                <div class="agend-titulo-cidade"><?php echo eo_get_venue_address()[city] ?></div>
                                <div class="agend-titulo-event"><?php echo $evento->post_title ?></div>
                                <div class="agend-titulo-local">Local: <?php echo eo_get_venue_name() ?></div>
                                <div class="agend-titulo-hora"></div>
                            </a>
                        </li>

                        <?php
                    endwhile;
                    wp_reset_postdata();
                    ?>

                </ol>

                <script>
                    jQuery(document).ready(function () {
                        $('#carr_agenda').slick({
                            infinite: true,
                            slidesToShow: 3,
                            slidesToScroll: 1,
                            autoplay: true,
                            responsive: [
                                {
                                    breakpoint: 1024,
                                    settings: {
                                        slidesToShow: 2,
                                        slidesToScroll: 2,
                                        infinite: true,
                                        dots: true
                                    }
                                },
                                {
                                    breakpoint: 768,
                                    settings: {
                                        slidesToShow: 1,
                                        slidesToScroll: 1
					    
					    }
                            }
                        ],
			prevArrow : '<button type="button" class="slick-prev" style="top:45%"><</button>',
                        nextArrow : '<button type="button" class="slick-next" style="top:45%"><</button>'
                        
                    });

                    $('#carr_agenda').show();
                });	
                                                    
                </script>
 <a href="agenda/" target="_parent" id="bt-revista" class="w-button">Ver Todas</a>
            </div>
        </div>
    </div>
    <div class="sec-banner-home-3">
        <div class="box-banner-home">
            <div class="w-container">
                <div class="banner-home-2">
                    <img sizes="90vw"
                         src="<?php echo get_template_directory_uri() ?>/images/banner-3.png"
                         srcset="<?php echo get_template_directory_uri() ?>/images/banner-3-p-500.png 500w, <?php echo get_template_directory_uri() ?>/images/banner-3.png 970w">
                </div>
            </div>
        </div>
    </div>
    <div class="sec-galeria">
        <div class="w-container">
            <h3 class="titulo-fotos-home">FOTOS</h3>
            <div class="box-galeria w-row">
                <div class="w-col w-col-8">

                    <?php

                    $the_query = new WP_Query(array(
                        'category_name' => 'fotos',
                        'posts_per_page' => 1
                    ));


                    while ($the_query->have_posts()) :
                        $the_query->the_post();
                        $thumb = get_post_thumbnail_id();
                        $image = vt_resize($thumb, '', 774, 468, true);
                        $image[url] .= '?w=774&h=468&zc=1';
                        ?>

                        <a href="<?php the_permalink() ?>">
                            <img class="img-galeria-destaque"
                                 sizes="(max-width: 479px) 90vw, (max-width: 767px) 97vw, (max-width: 991px) 478.65625px, 619.984375px"
                                 src="<?php echo $image[url] ?>">
                            <div class="titulo-galeria">
                                <div class="meta-wrapper-foto">
                                    <div class="titulo-galeria-home"><a
                                                href="<?php the_permalink() ?>"><?php the_title() ?></a>
                                    </div>
                                </div>
                            </div>
                        </a>

                        <?php
                    endwhile;
                    ?>

                    <div class="w-row">

                        <?php

                        $the_query = new WP_Query(array(
                            'category_name' => 'fotos',
                            'offset' => 1,
                            'posts_per_page' => 4
                        ));


                        while ($the_query->have_posts()) :
                            $the_query->the_post();
                            $thumb = get_post_thumbnail_id();
                            $image = vt_resize($thumb, '', 200, 124, true);
                            $image[url] .= '?w=200&h=124';
                            ?>
                            <a href="<?php the_permalink() ?>">
                                <div class="w-col w-col-3">
                                    <img class="tumbs-galeria"
                                         src="<?php echo $image[url] ?>">
                                    <div class="titulo-tumbs-galeria"><?php the_title() ?></div>
                                </div>
                            </a>

                            <?php
                        endwhile;
                        ?>

                    </div>


                </div>
                <div class="w-col w-col-4">
                    <div class="w-tabs" data-duration-in="300" data-duration-out="100">
                        <div class="w-tab-menu">
                            <a class="w--current w-inline-block w-tab-link" data-w-tab="Tab 1">
                                <div>+ Lidas</div>
                            </a>
                            <a class="w-inline-block w-tab-link" data-w-tab="Tab 2">
                                <div>+ Comentadas</div>
                            </a>
                        </div>
                        <div class="w-tab-content">
                            <div class="tab-pane w--tab-active w-tab-pane" data-w-tab="Tab 1">
                                <ol class="w-list-unstyled">
                                    <?php

                                    $the_query = new WP_Query(array(
                                        'posts_per_page' => 6,
                                        'category__not_in' => array(get_cat_ID('revista'), get_cat_ID('cinema')),
                                        'meta_key' => 'wpb_post_views_count',
                                        'orderby' => 'meta_value_num',
                                        'order' => 'DESC'
                                    ));

                                    while ($the_query->have_posts()) :
                                        $the_query->the_post();
                                        ?>
                                        <?php
                                        $thumb = get_post_thumbnail_id();
                                        $image = vt_resize($thumb, '', 115, 90, true);
                                        $image[url] .= '?w=115&h=90';
                                        $editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));
                                        $rl_category_color = rl_color(get_cat_ID($editorial->cat_name));
                                        ?>

                                        <!--loop-->
                                        <li class="list-mais-lidas w-clearfix">
                                            <a href="<?php echo get_category_link($editorial->cat_ID) ?>"
                                               style="background: <?php echo $rl_category_color ?>"
                                               class="category-mais-lidas"><?php echo $editorial->cat_name ?></a>
                                            <a class="mais-lidas-titulo-list" href="<?php the_permalink() ?>">
                                                <?php the_title() ?>
                                            </a>
                                        </li>

                                        <?php
                                    endwhile;
                                    wp_reset_postdata();
                                    ?>
                                </ol>
                            </div>

                            <div class="tab-pane w--tab-active w-tab-pane" data-w-tab="Tab 2">
                                <?php

                                $the_query = new WP_Query(array(
                                    'posts_per_page' => 6,
                                    'category__not_in' => array(get_cat_ID('revista'), get_cat_ID('cinema')),
                                    'meta_key' => 'wpb_fb_comments',
                                    'orderby' => 'meta_value_num',
                                    'order' => 'DESC'
                                ));

                                while ($the_query->have_posts()) :
                                    $the_query->the_post();
                                    ?>
                                    <?php
                                    $thumb = get_post_thumbnail_id();
                                    $image = vt_resize($thumb, '', 115, 90, true);
                                    $image[url] .= '?w=115&h=90';
                                    $editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));
                                    $rl_category_color = rl_color(get_cat_ID($editorial->cat_name));
                                    ?>

                                    <!--loop-->
                                    <li class="list-mais-lidas w-clearfix">
                                        <a href="<?php echo get_category_link($editorial->cat_ID) ?>"
                                           style="background: <?php echo $rl_category_color ?>"
                                           class="category-mais-lidas"><?php echo $editorial->cat_name ?></a>
                                        <a class="mais-lidas-titulo-list" href="<?php the_permalink() ?>">
                                            <?php the_title() ?>
                                        </a>
                                    </li>

                                    <?php
                                endwhile;
                                wp_reset_postdata();
                                ?>
                            </div>

                            <div class="w-tab-pane" data-w-tab="Tab 2"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="sec-tv-defato">
        <div class="w-container">
            <h3 class="titulo-home-tv-defato">TV DE FATO</h3>
            <div class="w-row">

                <?php
                $the_query = new WP_Query(array(
                    'category_name' => 'tv-defato',
                    'posts_per_page' => 1
                ));
                while ($the_query->have_posts()) :
                    $the_query->the_post();
                    $thumb = get_post_thumbnail_id();
                    $image = vt_resize($thumb, '', 600, 400, true);
		    $image[url] .= '?w=640&h=426&zc=1';
                    ?>
<a href="<?php the_permalink() ?>">
                    <div id="box-tv-principal" class="w-col w-col-7">
                        <img class="img-tv-principal"
                             sizes="(max-width: 479px) 96vw, (max-width: 767px) 97vw, (max-width: 991px) 416.328125px, 540px"
                             src="<?php echo $image['url'] ?>">
                                    <div class="meta-wrapper-videos">
                                    <div class="titulo-videos-home"><a href="<?php the_permalink() ?>"><?php the_title() ?>
					    </div></a>
			    </div> </div></a>

                    <?php
                endwhile;
                wp_reset_postdata();
                ?>

                <div class="box-tv-list w-col w-col-5">
                    <ul class="w-list-unstyled">

                        <?php
                        $the_query = new WP_Query(array(
                            'category_name' => 'tv-defato',
                            'offset' => 1,
                            'posts_per_page' => 4
                        ));
                        while ($the_query->have_posts()) :
                            $the_query->the_post();
                            $thumb = get_post_thumbnail_id();
                            $image = vt_resize($thumb, '', 115, 90, true);
                            ?>

                            <li class="tv-list-item w-clearfix">
                                <a href="<?php the_permalink() ?>">
                                    <img class="img-tv-list"
                                         src="<?php echo $image['url'] ?>">
                                    <div class="titulo-tv-list-item"><a
                                                href="<?php the_permalink() ?>"><?php the_title() ?></a></div>
                                </a>
                            </li>

                            <?php
                        endwhile;
                        wp_reset_postdata();
                        ?>

                    </ul>
                </div>
            </div>
        </div>
    </div>
    <div class="sec-revista-defato">
        <div class="w-container">
            <h3 class="titulo-revisa-home">ÚLTIMAS EDIÇÕES</h3>

            <div class="row w-row">


                <?php
                $the_query = new WP_Query(array(
                    'category_name' => 'revista',
                    'posts_per_page' => 6
                ));
                while ($the_query->have_posts()) :
                    $the_query->the_post();
                    $thumb = get_post_thumbnail_id();
                    $image = vt_resize($thumb, '', 178, 235, true);
                    ?>

                    <a href="<?php the_field('link_issuu') ?>" class="w-col w-col-2" target="_blank">
                        <img src="<?php echo $image[url] ?>">
                        <div class="titulo-edicoes"><?php the_title() ?></div>
                    </a>

                    <?php
                endwhile;
                wp_reset_postdata();
                ?>

            </div>
            <a href="https://issuu.com/grupodefato/docs" target="_blank" id="bt-revista" class="w-button">Ver Todas</a>
        </div>
    </div>
    <div class="sec-banner-4">
        <div class="box-banner-home">
            <div class="w-container">
                <div class="banner-home-2"><img sizes="90vw"
                                                src="<?php echo get_template_directory_uri() ?>/images/banner-3.png"
                                                srcset="<?php echo get_template_directory_uri() ?>/images/banner-3-p-500.png 500w, <?php echo get_template_directory_uri() ?>/images/banner-3.png 970w">
                </div>
            </div>
        </div>
    </div>
    <div class="sec-recomendados">
        <div class="w-container">
            <h3 class="titulo-recomendados-home">RECOMENDADOS PRA VOCÊ</h3>
            <div class="w-row">
            </div>
        </div>
    </div>