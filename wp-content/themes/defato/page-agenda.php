<?php get_header(); ?>
    <h1 class="titulo-category-page" style="border-color: <?php echo $cor_cat ?>; color: <?php echo $cor_cat ?>">
        <?php the_title() ?>
    </h1>

    <div class="sec-page" style="margin-top: 30px">
        <div class="section">
            <div class="container w-container">


                <div class="w-col w-col-9">

                    <div class="sec-agenda">
                        <div class="w-container">
                            <div class="w-row">
                                <ol class="w-list-unstyled">


                                    <?php
                                    $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

                                    $text_query = @$_REQUEST['t'];
                                    $mes_query = @$_REQUEST['d'];

                                    $the_query = new WP_Query(array(
                                        'post_type' => 'event',
                                        'suppress_filters' => false,
                                        'posts_per_page' => 16,
                                        'event_start_after'=>'today',
                                        'showpastevents' => false,
                                        //'orderby' => 'eventend',
                                        's' => $text_query
                                    ));

                                    while ($the_query->have_posts()) :
                                        $the_query->the_post();
                                        $evento = get_post(get_the_ID());
                                        $thumb = get_post_thumbnail_id();
                                        $image = vt_resize($thumb, '', 150, 95, true);
                                        setlocale(LC_ALL, 'pt_BR', 'pt_BR.utf-8', 'pt_BR.utf-8', 'portuguese');
                                        $data_inicio = strtotime($evento->StartDate);
                                        $mes = date('m', $data_inicio);

                                        if ($mes_query && $mes != $mes_query)
                                            continue;
                                        ?>

                                        <!--loop-->
                                        <li class="agenda-list w-clearfix w-col w-col-6">
                                            <a href="<?php the_permalink() ?>">
                                                <div class="date-agend-list w-clearfix"><?php echo strftime('%d', $data_inicio) ?>
                                                    <br><span
                                                            class="agend-data-span"><?php echo ucfirst(strftime('%b', $data_inicio)) ?></span>
                                                </div>
                                                <img class="img-agend-list" src="<?php echo $image['url'] ?>" style="margin-left: 5px">
                                                <div class="agend-titulo-cidade"><?php echo eo_get_venue_address()[city] ?></div>
                                                <div class="agend-titulo-event"><?php echo $evento->post_title ?></div>
                                                <div class="agend-titulo-local">Local: <?php echo eo_get_venue_name() ?></div>
                                            </a>
                                        </li>

                                        <?php
                                    endwhile;
                                    wp_reset_postdata();
                                    ?>

                                </ol>


                            </div>
                        </div>
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
                            </form>
                        </div>

                        <!--
                        <div class="box-laste-news">
                            <h3 class="titulo-widget-last-news"
                                style="border-color:<?php echo $cor_cat ?>;color: <?php echo $cor_cat ?>">
                                + Vistas
                            </h3>
                            <ul class="w-list-unstyled">

                                <div class="galeria-foto">

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

                                        <!--loop--class="image-link"--
                                        <div class="div-news-last-home w-clearfix w-col w-col-12">
                                            <a title="<?php the_title(); ?>" href="<?php echo $img ?>">
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

                                </div>

                            </ul>
                        </div>
                        -->
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