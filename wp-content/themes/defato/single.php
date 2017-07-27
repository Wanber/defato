<?php get_header(); ?>
<article <?php post_class('article'); ?> id="post-<?php the_ID(); ?>" itemscope
                                         itemtype="http://schema.org/CreativeWork">

<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <?php
    $ID = get_the_ID();
    $post = get_post($ID);
    $thumb = get_post_thumbnail_id();
    $image = vt_resize($thumb, '', 620, 340, true);
    $image[url] .= '?w=620&h=340';
    $editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));
    $evento = $post->post_type == 'event' ? true : false;
    $em_alta_cat = get_child_cat(get_the_category(), get_cat_ID('em alta'));

    if (function_exists('rl_color'))
        $cor_cat = rl_color($editorial->cat_ID);
    else
        $cor_cat = '#EEEEEE';
    ?>

    <div class="sec-page">

        <?php if (!$em_alta_cat) : ?>

            <a href="<?php echo $evento ? get_permalink(get_page_by_title('agenda')) : get_category_link($editorial); ?>">
                <h1 class="titulo-category-page"
                    style="border-color: <?php echo $cor_cat ?>; color: <?php echo $cor_cat ?>">
                    <?php echo $evento ? 'Agenda' : $editorial->name; ?>
                </h1>
            </a>

        <?php else : ?>

            <a href="<?php echo get_category_link($editorial->cat_ID) ?>">
                <h1 class="titulo-category-emalta"
                    style="border-color: <?php echo $cor_cat ?>; height: 200px; color: <?php echo $cor_cat ?>; background: url(<?php the_field('background', $em_alta_cat) ?>); background-size: 100% 100%;">
                    <?php echo $editorial->name . ' / ' . $em_alta_cat->name ?>
                </h1>
            </a>

        <?php endif; ?>

        <div class="w-container">
            <div class="w-row">
                <div id="conteudo-pg" class="w-col w-col-8">
                    <?php if (!$evento): ?>
                        <div class="versal-page" style="background: <?php echo $cor_cat ?>">
                            <?php the_field('versal-pagina') ?>
                        </div>
                    <?php endif; ?>
                    <div class="titulo-noticia-page" style="color: <?php echo $cor_cat ?>; text-align: justify">
                        <?php the_title() ?>
                    </div>
                    <div class="sub-titulo-page"
                         style="border-color: <?php echo $cor_cat ?>"><?php the_excerpt() ?>
                    </div>

                    <div class="w-row">
                        <div class="w-col w-col-6">
                            <div class="box-autor-news-page">
                                <span class="box-autor-news-page-titulo">Por:
                                    <?php $author_id = $post->post_author; ?>
                                    <a href="<?php echo get_author_posts_url(get_the_author_meta('ID')) ?>">
                                        <?php echo the_author_meta('display_name', $author_id); ?>
                                    </a>
                                </span>
                                <b class="box-autor-news-page-data">postado
                                    em: <?php echo get_the_date('j \d\e F \d\e Y') ?></b>
                            </div>
                        </div>
                        <div class="w-col w-col-6">
                            <div class="shared-page-noticias w-clearfix" style="text-align: right">
                                <img src="<?php echo get_template_directory_uri() ?>/images/redes_soc.png"
                                     style="float: right; height: 40px; margin: 6px 0 0 4px">
                                <?php echo do_shortcode('[Sassy_Social_Share style="margin: 5px 0 15px 0; float:right"]') ?>
                                <br><br>
                            </div>
                        </div>
                    </div>
                    <div class="box-conteudo-noticia">
                        <img class="image-27"
                             src="<?php echo $image[url] ?>">

                        <div class="texto-conteudo-page-news">

                            <?php if ($evento) : ?>

                                <?php $data_inicio = strtotime($post->StartDate); ?>
                                <?php $hora_inicio = substr($post->StartTime, 0, 5) . 'h'; ?>
				<?php $data_termino = strtotime($post->EndDate); ?>
                                <?php $hora_termino = substr($post->FinishTime, 0, 5) . 'h'; ?>

                                <h1>Detalhes do evento</h1>
                                <b>Iníco:</b> <?php echo ucfirst(strftime('%A, %d de %B de %G', $data_inicio)) ?> às <?php echo $hora_inicio ?><br/>
                                <b>Término:</b> <?php echo ucfirst(strftime('%A, %d de %B de %G', $data_termino)) ?> às <?php echo $hora_termino ?><br/>
                                <b>Cidade:</b> <?php echo eo_get_venue_address()[city] ?><br/>
                                <b>Local:</b> <?php echo eo_get_venue_name() ?><br/>
                                <b>Endereço:</b> <?php echo eo_get_venue_address()[address] ?><br/><br/>

                                <?php echo eo_get_venue_map() ?>

                                <style>
                                    .eo-venue-map, .gm-style, .gm-style-pbc {
                                        overflow: hidden;
                                    }
                                </style>

                                <hr/><br/>
                            <?php endif; ?>

                            <?php the_content() ?>
                        </div>

                        <br/>

                        <div class="tag-blog-info">
                            <?php
                            $posttags = get_the_tags();
                            if ($posttags) {
                                echo 'Tags: <span class="span-blog-tags">';
                                foreach ($posttags as $tag) {
                                    echo '<a href="' . get_term_link($tag) . '">' . $tag->name . '</a> ';
                                }
                                echo '</span>';
                            }

                            echo '<br />';

                            $postcats = get_the_category();
                            if ($postcats) {
                                echo 'Categorias: <span class="span-blog-tags">';
                                foreach ($postcats as $cat) {
                                    echo '<a href="' . get_term_link($cat) . '">' . $cat->name . '</a>';
                                    echo $cat == end($postcats) ? '' : ', ';
                                }
                                echo '</span>';
                            }
                            ?>
                        </div>
                    </div>
                    <div class="box-banners w-clearfix" style="border-color: <?php echo $cor_cat ?>">
                        <img class="banner-footer-page1"
                             src="<?php echo get_template_directory_uri() ?>/images/banner.png"><img
                                class="banner-footer-page2"
                                src="<?php echo get_template_directory_uri() ?>/images/banner.png">
                    </div>
                    <div class="box-comment-page">
                        <?php echo do_shortcode('[wpdevart_facebook_comment curent_url="' . get_the_permalink() . '" order_type="social" title_text="" title_text_color="#000000" title_text_font_size="22" title_text_font_famely="monospace" title_text_position="left" width="100%" bg_color="#d4d4d4" animation_effect="random" count_of_comments="3" ]'); ?>
                    </div>
                </div>
                <div class="sidebaer-page w-col w-col-4">
                    <div class="banner-home-1">
                        <div class="box-sombra-banner">
                            <?php if(function_exists( 'wp_bannerize' ))
	wp_bannerize( 'group=Pagina Sidebar&random=1' ); ?>
                        </div>
                        <div class="box-laste-news">

                            <?php if ($evento): ?>

                                <h3 class="titulo-widget-last-news"
                                    style="border-color:<?php echo $cor_cat ?>;color: <?php echo $cor_cat ?>">
                                    + Eventos
                                </h3>
                                <ul class="w-list-unstyled">

                                    <?php
                                    $the_query = new WP_Query(array(
                                        'post_type' => 'event',
                                        'posts_per_page' => 6,
                                        'post__not_in' => array($ID)
                                    ));
                                    while ($the_query->have_posts()) :
                                        $the_query->the_post();
                                        ?>
                                        <?php
                                        $thumb = get_post_thumbnail_id();
                                        $image = vt_resize($thumb, '', 115, 90, true);
                                        $image[url] .= '?w=115&h=90';
                                        ?>

                                        <!--loop-->
                                        <li class="last-item-page w-clearfix"
                                            style="border-color: <?php echo $cor_cat ?>">
                                            <img class="img-item-last-news"
                                                 src="<?php echo $image[url] ?>">
                                            <a href="<?php the_permalink() ?>" class="titulo-last-news cursor-pointer">
                                                <?php the_title() ?>
                                            </a>
                                        </li>

                                        <?php
                                    endwhile;
                                    wp_reset_postdata();
                                    ?>

                                </ul>

                            <?php else: ?>

                                <h3 class="titulo-widget-last-news"
                                    style="border-color:<?php echo $cor_cat ?>;color: <?php echo $cor_cat ?>">
                                    + <?php echo $editorial->name ?>
                                </h3>
                                <ul class="w-list-unstyled">

                                    <?php
                                    $the_query = new WP_Query(array(
                                        'category_name' => $editorial->name,
                                        'posts_per_page' => 6,
                                        'post__not_in' => array($ID)
                                    ));
                                    while ($the_query->have_posts()) :
                                        $the_query->the_post();
                                        ?>
                                        <?php
                                        $thumb = get_post_thumbnail_id();
                                        $image = vt_resize($thumb, '', 115, 90, true);
                                        $image[url] .= '?w=115&h=90';
                                        ?>

                                        <!--loop-->
                                        <li class="last-item-page w-clearfix"
                                            style="border-color: <?php echo $cor_cat ?>">
                                            <img class="img-item-last-news"
                                                 src="<?php echo $image[url] ?>">
                                            <a href="<?php the_permalink() ?>" class="titulo-last-news cursor-pointer">
                                                <?php the_title() ?>
                                            </a>
                                        </li>

                                        <?php
                                    endwhile;
                                    wp_reset_postdata();
                                    ?>

                                </ul>

                            <?php endif; ?>
                        </div>
                    </div>
                    <div class="banner-home-right">
                        <?php if(function_exists( 'wp_bannerize' ))
	wp_bannerize( 'group=Pagina 300x600' ); ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </article>

<?php endwhile; endif; ?>

<?php get_footer(); ?>