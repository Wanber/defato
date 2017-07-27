<?php get_header(); ?>
<?php
$em_alta_id = get_cat_ID('Em alta');

if (function_exists('rl_color'))
    $cor_em_alta = rl_color($em_alta_id);
else
    $cor_em_alta = '#EEEEEE';
?>

    <div class="sec-page">
        <h1 class="titulo-category-emalta"
            style="border-color: <?php echo $cor_em_alta ?>; color: <?php echo $cor_em_alta ?>; height: 200px; color: <?php echo $cor_cat ?>; background: url(<?php the_field('background', get_term($em_alta_id)); ?>); background-size: 100% 100%;">
            Em alta
        </h1>
        <div class="w-container">
            <div class="w-row">
                <div class="w-col w-col-8">

                    <?php
                    $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

                    $the_query = new WP_Query(array(
                        'posts_per_page' => 6,
                        'category_name' => 'Em alta',
                        'paged' => $paged
                    ));
                    while ($the_query->have_posts()) :
                        $the_query->the_post();
                        $thumb = get_post_thumbnail_id();
                        $image = vt_resize($thumb, '', 620, 228, true);
                        $editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));

                        if (function_exists('rl_color'))
                            $cor_cat = rl_color($editorial->cat_ID);
                        else
                            $cor_cat = '#EEEEEE';

                        ?>

                        <article <?php post_class('article'); ?> id="post-<?php the_ID(); ?>" itemscope
                                                                 itemtype="http://schema.org/CreativeWork">
                            <div class="w-container">
                                <ul class="w-list-unstyled">
                                    <li class="list-item w-clearfix">
                                        <div class="w-row">

                                            <div class="w-clearfix w-col w-col-3">
                                                <img class="image-7"><?php if (has_post_thumbnail()) { ?>
                                                    <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail('post_thumb', array('class' => 'alignleft')); ?></a>
                                                <?php } ?>

                                                <a href="<?php echo get_category_link($editorial->cat_ID) ?>"
                                                   class="category-list-news"
                                                   style="background: <?php echo $cor_cat ?>">
                                                    <?php echo $editorial->name ?>
                                                </a>
                                            </div>

                                            <div id="box-list-cat-div" class="w-col w-col-9">
                                                <div class="date-list-cetegory-news"><?php echo get_the_date('j \d\e F \d\e Y') ?></div>
                                                <div class="titulo-list-category-news" itemprop="headline">
                                                    <a itemscope
                                                       style=""
                                                       itemprop="mainEntityOfPage"
                                                       itemType="https://schema.org/WebPage"
                                                       href="<?php the_permalink(); ?>"
                                                       rel="<?php esc_attr_e('bookmark', 'defato'); ?>"><?php the_title(); ?></a>
                                                </div>
                                                <div class="p-list-category-news"
                                                     itemprop="text"><?php echo substr(get_the_excerpt(), 0, 220); ?> </div>
                                    </li>

                                </ul>
                            </div>

                        </article><!-- .article -->


                    <?php endwhile; ?>

                    <?php echo defato_theme_pagination_links(); ?>


                </div>
                <div class="sidebaer-page w-col w-col-4">
                    <div class="banner-home-1">
                        <div class="box-sombra-banner">
                            <img class="image-3"
                                 src="<?php echo get_template_directory_uri() ?>/images/banner.png">
                        </div>
                        <div class="box-laste-news">
                            <h3 class="titulo-widget-last-news"
                                style="border-color:<?php echo $cor_em_alta ?>;color: <?php echo $cor_em_alta ?>">
                                + Lidas Em alta
                            </h3>
                            <ul class="w-list-unstyled">

                                <?php

                                $the_query = new WP_Query(array(
                                    'posts_per_page' => 6,
                                    'category_name' => 'Em alta',
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
                                    ?>

                                    <!--loop-->
                                    <li class="last-item-page w-clearfix"
                                        style="border-color: <?php echo $cor_em_alta ?>">
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
<?php get_footer(); ?>