<?php get_header(); ?>
<?php $cor_cat = rl_color(get_cat_ID('cinema')); ?>


    <h1 class="titulo-category-page" style="border-color: <?php echo $cor_cat ?>; color: <?php echo $cor_cat ?>">
        <?php the_title() ?>
    </h1>

    <div class="w-container">
        <div id="box-destaque-page" class="w-col w-col-12" style="background: <?php echo $cor_cat ?>; color: <?php echo $cor_cat ?>;">
            <?php

            $the_query = new WP_Query(array(
                'category_name' => 'cinema',
              	'meta_key' => 'tag',
                'orderby' => 'meta_value',
                'order' => 'ASC',
                'posts_per_page' => 1
            ));


            while ($the_query->have_posts()) :
                $the_query->the_post();
                $thumb = get_post_thumbnail_id();
                $image = vt_resize($thumb, '', 650, 400, true);
                $image[url] .= '?w=650&h=400&zc=0';

                ?>

                <!--container da foto grandona-->
                <div id="destaque-pagina" class="w-col w-col-6">
                    <!--titulo-->
                  	<a href="<?php the_permalink() ?>">
                    	<h1 style="filter: invert(100%);"><?php the_title() ?></h1>
                  	</a>
                    <!--resumo-->
                    <p style="filter: invert(100%);"><?php echo substr(get_the_excerpt(), 0, 250); ?></p></div>
                <!--thumb-->
                <a href="<?php the_permalink() ?>" class="w-col w-col-6">
                    <img src="<?php echo $image[url] ?>"/>
                </a>


                <?php
            endwhile;
            ?>
        </div>
    </div>

    <div class="sec-page" style="margin-top: 30px">
        <div class="section">
            <div class="container w-container">


                <div class="w-col w-col-9">
                    <div class="w-row">

                        <?php
                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

                        $text_query = @$_REQUEST['t'];
                        $mes_query = @$_REQUEST['d'];

                        $the_query = new WP_Query(array(
                            'category_name' => 'cinema',
                            'offset' => 1,
                            'posts_per_page' => 12,
                          	'meta_key' => 'tag',
                            'orderby' => 'meta_value',
                            'order' => 'ASC',
                            'paged' => $paged,
                            's' => $text_query,
                            'meta_query' => array(
                                array(
                                    'key' => 'estreia',
                                    'value' => $mes_query,
                                    'compare' => 'LIKE'
                                )
                            )
                        ));

                        $c = 1;

                        while ($the_query->have_posts()) :
                            $the_query->the_post();
                            $thumb = get_post_thumbnail_id();
                            $image = vt_resize($thumb, '', 300, 380, true);
                            $image[url] .= '?w=300&h=380&zc=0';
                            $cor = get_field('tag') == 'Estréia' ? '#FED308' : '#23B423';
                            
                            ?>

                            <!--loop-->
                            <div id="box-cinema" class="w-col w-col-3" style="position: relative">
                                <div style="padding: 5px; background: <?php echo $cor ?>; color: white; position: absolute;">
                                    <?php the_field('tag') ?>
                                </div>
                                <div class=""><a href="<?php the_permalink() ?>"><img src="<?php echo $image[url] ?>"/></a></div>
                                <a class="news-last-titulo" href="<?php the_permalink() ?>"><?php the_title() ?></a>
                            </div>

                            <?php
                            
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


                <div class="w-col w-col-3" style="padding-left: 30px">


                    <div class="banner-home-1">
                        <div class="box-sombra-banner">
                            <img class="image-3"
                                 src="<?php echo get_template_directory_uri() ?>/images/banner.png">
                        </div>

                        <div class="box-filtropesquisa">
                            <h1>Filtro de Pesquisa</h1>
                            <form action="" method="post">
                                <select name="d">
                                    <option value="" selected>Todos meses</option>
                                    <option value="01">Janeiro</option>
                                    <option value="02">Fevereiro</option>
                                    <option value="03">Março</option>
                                    <option value="04">Abril</option>
                                    <option value="05">Maio</option>
                                    <option value="06">Junho</option>
                                    <option value="07">Julho</option>
                                    <option value="08">Agosto</option>
                                    <option value="09">Setembro</option>
                                    <option value="10">Outubro</option>
                                    <option value="11">Novembro</option>
                                    <option value="12">Dezembro</option>
                                </select>
                                <input type="text" name="t" placeholder="Pesquisar …">
                                <button type="submit">Pesquisar</button>
                            </form>
                        </div>

                        <div class="box-laste-news">
                            <h3 class="titulo-widget-last-news"
                                style="border-color:<?php echo $cor_cat ?>;color: <?php echo $cor_cat ?>">
                                + Vistas
                            </h3>

                            <ul class="w-list-unstyled">

                                <div class="galeria-foto">

                                    <?php

                                    $the_query = new WP_Query(array(
                                        'category_name' => 'cinema',
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

                                        <!--loop--class="image-link"-->
                                        <div class="div-news-last-home w-clearfix w-col w-col-12">
                                            <a title="<?php the_title(); ?>" href="<?php the_permalink() ?>">
                                                <img src="<?php echo $image[url]; ?>"/>
                                            </a>
                                            <?php
                                            $cor = get_field('tag') == 'Estréia' ? '#FED308' : '#23B423';
                                            $style = 'style="left:0;';
                                            $style .= 'background: '. $cor;
                                            $style .= '"';
                                            ?>
                                            <a class="category-last-news" <?php echo @$style ?>><?php the_field('tag') ?></a>
                                            <a href="<?php the_permalink() ?>"
                                               onclick="link('<?php the_permalink() ?>')"
                                               class="news-last-titulo"><?php the_title(); ?></a>
                                        </div>

                                        <?php
                                    endwhile;
                                    wp_reset_postdata();
                                    ?>

                                </div>

                            </ul>
                        </div>
                    </div>


                </div>

            </div>
        </div>
    </div>

    </div>
<?php get_footer(); ?>