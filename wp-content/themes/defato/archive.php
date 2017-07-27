<?php get_header(); ?>

<?php if (have_posts()) : ?>

    <?php
    $queried_object = get_queried_object();

    if (function_exists('rl_color'))
        $cor_cat = rl_color($queried_object->term_id);
    else
        $cor_cat = '#EEEEEE';
    ?>

    <?php
    $bg = false;

    if (is_category())
        if ($queried_object->parent == get_cat_ID('em alta'))
            $bg = get_field('background', $queried_object);
    ?>


    <?php if (!$bg) : ?>

        <h1 class="titulo-category-page" style="border-color: <?php echo $cor_cat ?>; color: <?php echo $cor_cat ?>">
            <?php echo $queried_object->name ?>
        </h1>

    <?php else : ?>

        <h1 class="titulo-category-emalta"
            style="border-color: <?php echo $cor_cat ?>; color: <?php echo $cor_cat ?>; height: 200px; color: <?php echo $cor_cat ?>; background: url(<?php echo $bg ?>); background-size: 100% 100%;">
            <?php echo $queried_object->name ?>
        </h1>

    <?php endif; ?>

    <?php the_archive_description('<div class="pagetitle-desc">', '</div>'); ?>
    <div class="sec-page">
    <div class="w-container">
    <div class="w-row">
    <div class="w-col w-col-8">

    <?php while (have_posts()) : the_post(); ?>
        <?php
        $thumb = get_post_thumbnail_id();
        $image = vt_resize($thumb, '', 150, 100, true);
        $editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));

        ?>

        <?php get_template_part('content', 'list'); ?>

    <?php endwhile; ?>

    <?php echo defato_theme_pagination_links(); ?>

<?php else : get_template_part('content', 'none'); endif; ?>
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
                    + Lidas em <?php echo $queried_object->name ?>
                </h3>
                <ul class="w-list-unstyled">

                    <?php

                    $the_query = new WP_Query(array(
                        'posts_per_page' => 6,
                        'category_name' => $queried_object->name,
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
    </div></div>
<?php get_footer(); ?>