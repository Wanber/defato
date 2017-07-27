<?php get_header(); ?>

<article <?php post_class('article'); ?> id="post-<?php the_ID(); ?>" itemscope
                                         itemtype="http://schema.org/CreativeWork">

<?php if (have_posts()) : while (have_posts()) : the_post(); ?>

    <?php
    $ID = get_the_ID();
    $post = get_post($ID);
    $thumb = get_post_thumbnail_id();
    $image = vt_resize($thumb, '', 300, 250, true);
    $estreia = get_field('estreia');
    $estreia = date('d/m/Y', strtotime($estreia));
    ?>

    <div class="sec-page">
        <a href="<?php echo get_permalink(get_page_by_title('cinema')) ?>">
            <h1 class="titulo-category-page">Cinema</h1>
        </a>
        <div class="w-container">
            <div class="w-row">
                <div class="w-col w-col-8">
                    <div class="titulo-noticia-page" style="color: <?php echo $cor_cat ?>; text-align: justify">
                        <?php the_title() ?>
                    </div>
                    <div class="sub-titulo-page"
                         style="border-color: <?php echo $cor_cat ?>"></div>
                    <div class="w-row">
                        <div class="w-col w-col-6">
                            <div class="box-autor-news-page">
                                <div class="w-col w-col-6">
                                    <div class="box-autor-news-page">
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="w-col w-col-6">
                            <div class="shared-page-noticias w-clearfix" style="text-align: right">
                                <?php echo do_shortcode('[Sassy_Social_Share style="margin: 5px 0 15px 0; float:right"]') ?>
                                <br><br>
                            </div>
                        </div>
                    </div>
                    <div class="box-conteudo-noticia">
                        <div class="texto-conteudo-page-news"><div class="w-col w-col-4">
                          <img class="image-27"
                             src="<?php echo $image[url] ?>"><br />
                            <p>Ano: <?php the_field('ano') ?></p>
                            <p>Estreia: <?php echo $estreia ?></p>
                            <p>Pais: <?php the_field('pais') ?></p>
                            <p>Duração: <?php the_field('duracao') ?></p>
                            <p>Distribuidora: <?php the_field('distribuidora') ?></p>
                            <p>Gênero: <?php the_field('genero') ?></p>
                          </div><div id="conteudo-cinema-p" class="w-col w-col-8"><?php echo the_content() ?></div>
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
                </div></div>
                <div class="sidebaer-page w-col w-col-4">
                    <div class="banner-home-1">
                        <div class="box-sombra-banner">
                            <img class="image-3"
                                 src="<?php echo get_template_directory_uri() ?>/images/banner.png">
                        </div>
                        <div class="box-laste-news">


                            <h3 class="titulo-widget-last-news"
                                style="border-color:<?php echo $cor_cat ?>;color: <?php echo $cor_cat ?>">
                                + Cinema
                            </h3>
                            <ul class="w-list-unstyled">

                                <?php
                                $the_query = new WP_Query(array(
                                    'category_name' => 'cinema',
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


                        </div>
                    </div>
                    <div class="banner-home-right">
                        <img class="image-2"
                             src="<?php echo get_template_directory_uri() ?>/images/banner-2.png">
                    </div>
                </div>
            </div>
        </div>
    </div>
    </article>

<?php endwhile; endif; ?>

<?php get_footer(); ?>