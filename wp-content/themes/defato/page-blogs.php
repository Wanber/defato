<?php get_header(); ?>
    <h1 class="titulo-category-page">
        <?php the_title() ?>
    </h1>

    <div class="sec-page">
        <div class="w-container">
            <div class="w-row">
                <div class="box-blog-lis w-col w-col-8">
                    <div class="box-conteudo-noticia">
                        <ul class="w-list-unstyled">

                            <?php
                            $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;
                            $ids = get_users(array('role' => 'author', 'fields' => 'ID'));

                            $the_query = new WP_Query(array(
                                'posts_per_page' => 6,
                                "author__in" => $ids,
                                'category__not_in' => array(get_cat_ID('cinema'), get_cat_ID('revista'), get_cat_ID('tv defato'), get_cat_ID('fotos')),
                                'paged' => $paged
                            ));
                            while ($the_query->have_posts()) :
                                $the_query->the_post();
                                $thumb = get_post_thumbnail_id();
                                $image = vt_resize($thumb, '', 773, 300, true);
                                $image[url] .= '?w=773&h=300';
                                ?>

                                <!--loop-->
                                <li class="blogsc-item">
                                    <a href="<?php the_permalink() ?>"><h1
                                                class="titulo-bc-item"><?php the_title() ?></h1></a>
                                   <div class="w-col w-col-12">
					   <div class="w-col w-col-6">
					 <div class="info-blogc-public"><i class="fa fa-clock-o" aria-hidden="true"></i> publicado em  
                                         <?php echo ucfirst(get_the_date('d \d\e F \d\e Y   \à\s H\hi')) ?>
                                        <br/>
                                        <a href="<?php echo get_author_posts_url(get_the_author_meta('ID')) ?>">
                                            <i class="fa fa-user-o" aria-hidden="true"></i> <?php echo the_author_meta('display_name'); ?>
                                        </a>						   
					   </div></div><div class="w-col w-col-6">	
<?php echo do_shortcode('[Sassy_Social_Share style="margin: 5px 0 15px 0; float:right"]') ?>
                                    </div> </div>			
                                    <img class="img-blogs-colunas-item"
                                         src="<?php echo $image[url] ?>">
                                    <div class="p-blogs-colunas">
                                        <?php the_excerpt(); ?>
                                        <a href="<?php the_permalink() ?>" class="bt-leia-mais">Ler mais</a>
                                    </div>
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
                                        ?><br /><br />
                                    </div>

                                
                                </li>

                                <?php
                            endwhile;
                            ?>

                        </ul>
                    </div>

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
                <div class="column-4 w-col w-col-4" style="padding-left: 35px">

                    <div class="box-sombra-banner">
                        <img class="image-3"
                             src="<?php echo get_template_directory_uri() ?>/images/banner.png">
                    </div>

                    <div class="box-laste-news">
                        <h3 class="titulo-widget-last-news" style="color: #FF0F0F; border-color: #FF0F0F">
                            COLUNISTAS
                        </h3>
                        <ul class="w-list-unstyled">

                            <?php
                            $args = array(
                                'role' => 'author'
                            );
                            $autores = get_users($args);

                            foreach ($autores as $autor) :
                                ?>

                                <!--loop-->
                                <li class="last-item-page w-clearfix" style="border-color: <?php echo $cor_cat ?>">
                                    <?php echo get_avatar($autor->ID, 100, '', '', array('class' => 'img-item-last-news')) ?>
                                    <a href="<?php echo get_author_posts_url($autor->ID) ?>"
                                       class="titulo-last-news cursor-pointer">
                                        <?php echo esc_html($autor->display_name) ?>
                                    </a>
                                </li>

                            <?php endforeach; ?>

                        </ul>
                    </div>

                    <div class="box-laste-news">
                        <h3 class="titulo-widget-last-news"
                            style="border-color:<?php echo $cor_cat ?>;color: <?php echo $cor_cat ?>">
                            + Lidas
                        </h3>
                        <ul class="w-list-unstyled">

                            <?php

                            $ids = get_users(array('role' => 'author', 'fields' => 'ID'));

                            $the_query = new WP_Query(array(
                                'posts_per_page' => 6,
                                "author__in" => $ids,
                                'category__not_in' => array(get_cat_ID('cinema'), get_cat_ID('revista'), get_cat_ID('tv defato'), get_cat_ID('fotos')),
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
            </div>
        </div>
    </div>
<?php get_footer(); ?>