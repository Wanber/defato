<?php get_header(); ?>

    <h1 class="titulo-category-page" style="border-color: <?php echo $cor_cat ?>; color: <?php echo $cor_cat ?>">
        <?php the_title() ?>
    </h1>

    <div class="sec-page" style="margin-top: 30px">
        <div class="section">
            <div class="container w-container">


                <div class="w-col w-col-9">

                    <div class="box-sec-last">
                        <div class="w-row">

                            <?php
                            $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

                            $the_query = new WP_Query(array(
                                'posts_per_page' => 12,
                                'paged' => $paged
                            ));

                            $c = 1;

                            while ($the_query->have_posts()) :
                                $the_query->the_post();
                                $thumb = get_post_thumbnail_id();
                                $image = vt_resize($thumb, '', 300, 150, true);
                                $image[url] .= '?w=300&h=150';
                                $img = wp_get_attachment_url($thumb);
                                $quebra = false;

                                if ($c++ % 3 == 0)
                                    $quebra = true;

                                echo $quebra ? '<div class="w-row">' : '';
                                ?>

                                <!--loop-->
                                <div class="video-list w-clearfix w-col w-col-4" style="padding: 0 10px 25px 0">
                                    <a title="<?php the_title(); ?>" class="image-link" href="<?php echo $img ?>">
                                        <img src="<?php echo $image[url]; ?>"
                                             width="<?php echo $image[width]; ?>"
                                             height="<?php echo $image[height]; ?>"/>
                                    </a>
                                    <?php
                                    $style = 'style="left:0;';
                                    if (function_exists('rl_color')) {
                                        $editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));
                                        $rl_category_color = rl_color($editorial->cat_ID);
                                        $style .= "background: " . $rl_category_color . "";
                                    }
                                    $style .= '"';
                                    ?>
                                    <a href="<?php echo get_category_link($editorial->cat_ID) ?>"
                                       class="category-last-news" <?php echo @$style ?>><?php echo esc_html($editorial->name) ?></a>
                                    <a href="<?php the_permalink() ?>"
                                       class="video-list-titulo"><?php the_title(); ?></a>
                                </div>

                                <?php
                                echo $quebra ? '</div>' : '';
                            endwhile;
                            ?>


                            <?php if ($the_query->max_num_pages > 1) { ?>

                                <?php if ($paged > 1) : ?>
                                    <a class="bt-blogs-page-list w-button"
                                       href="<?php echo pegaMeioStr('href="', '"', get_previous_posts_link('')); ?>">
                                        Página anterior</a>

                                <?php endif; ?>

                                <?php if ($paged != $the_query->max_num_pages) : ?>
                                    <a class="bt-blogs-page-list w-button"
                                       href="<?php echo pegaMeioStr('href="', '"', get_next_posts_link('', $the_query->max_num_pages)); ?>">
                                        Próxima página</a>

                                <?php endif; ?>

                            <?php }
                            wp_reset_postdata(); ?>

                        </div>
                    </div>

                </div>

                <div class="w-col w-col-3" style="padding-left: 30px">


                    <div class="banner-home-1">
                        <div class="box-sombra-banner">
                            <img class="image-3"
                                 src="<?php echo get_template_directory_uri() ?>/images/banner.png">
                        </div>
                        <div class="box-laste-news">
                            <h3 class="titulo-widget-last-news"
                                style="border-color:<?php echo $cor_cat ?>;color: <?php echo $cor_cat ?>">
                                + Vistas
                            </h3>
                            <ul class="w-list-unstyled">

                                <?php

                                $the_query = new WP_Query(array(
                                    'posts_per_page' => 4,
                                    'meta_key' => 'wpb_post_views_count',
                                    'orderby' => 'meta_value_num',
                                    'order' => 'DESC'
                                ));

                                while ($the_query->have_posts()) :
                                    $the_query->the_post();
                                    ?>
                                    <?php
                                    $thumb = get_post_thumbnail_id();
                                    $image = vt_resize($thumb, '', 300, 150, true);
                                    $img = wp_get_attachment_url($thumb);
                                    $image[url] .= '?w=300&h=150';
                                    ?>

                                    <!--loop-->
                                    <div class="div-news-last-home w-clearfix w-col w-col-12">
                                        <a title="<?php the_title(); ?>" class="image-link" href="<?php echo $img ?>">
                                            <img src="<?php echo $image[url]; ?>"
                                                 width="<?php echo $image[width]; ?>"
                                                 height="<?php echo $image[height]; ?>"/>
                                        </a>
                                        <?php
                                        $style = 'style="left:0;';
                                        if (function_exists('rl_color')) {
                                            $editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));
                                            $rl_category_color = rl_color($editorial->cat_ID);
                                            $style .= "background: " . $rl_category_color . "";
                                        }
                                        $style .= '"';
                                        ?>
                                        <a href="<?php echo get_category_link($editorial->cat_ID) ?>"
                                           class="category-last-news" <?php echo @$style ?>><?php echo esc_html($editorial->name) ?></a>
                                        <a href="<?php the_permalink() ?>"
                                           class="news-last-titulo"><?php the_title(); ?></a>
                                    </div>

                                    <?php
                                endwhile;
                                wp_reset_postdata();
                                ?>

                            </ul>
                        </div>
                    </div>


                </div>

            </div>
        </div>
    </div>

    </div>

    <script language="JavaScript">
        $(document).ready(function () {
            $('.image-link').magnificPopup({type: 'image'});
        });
    </script>

<?php get_footer(); ?>