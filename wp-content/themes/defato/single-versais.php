<?php get_header(); ?>

<article <?php post_class('article'); ?> id="post-<?php the_ID(); ?>" itemscope
                                         itemtype="http://schema.org/CreativeWork">
 
<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
 
    <?php
    $ID = get_the_ID();
    $thumb = get_post_thumbnail_id();
    $image = vt_resize($thumb, '', 620, 340, true);
    $image[url] .= '?w=620&h=340';
    $editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));
 
    if (function_exists('rl_color'))
        $cor_cat = rl_color($editorial->cat_ID);
    else
        $cor_cat = '#EEEEEE';
    ?>
 
    <div class="sec-page">
        <h1 class="titulo-category-page"
            style="border-color: <?php echo $cor_cat ?>; color: <?php echo $cor_cat ?>"><?php echo $editorial->name ?></h1>
        <div class="w-container">
            <div class="w-row">
                <div class="w-col w-col-8">
                    <div class="versal-page" style="background: <?php echo $cor_cat ?>"><?php the_field('versal-pagina'); ?>
                    </div>
                    <div class="titulo-noticia-page" style="color: <?php echo $cor_cat ?>">
                        <?php the_title() ?>
                    </div>
                    <div class="sub-titulo-page"
                         style="border-color: <?php echo $cor_cat ?>"><?php the_excerpt() ?></div>
                    <div class="w-row">
                        <div class="w-col w-col-6">
                            <div class="box-autor-news-page">
                                <!--substituir pelo autor e data-->
                                <img class="image-22"
                                     src="<?php echo get_template_directory_uri() ?>/images/page-11.png">
                                <!-->
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
                            <?php the_content() ?>
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
                            <img class="image-3"
                                 src="<?php echo get_template_directory_uri() ?>/images/banner.png">
                        </div>
                        <div class="box-laste-news">
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
                                    <li class="last-item-page w-clearfix" style="border-color: <?php echo $cor_cat ?>">
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