<?php get_header() ?>

<?php
$curauth = (get_query_var('author_name')) ? get_user_by('slug', get_query_var('author_name')) :
    get_userdata(get_query_var('author'));
?>

<div class="sec-banner-home-3">
    <div class="box-banner-home">
        <div class="w-container">
            <div class="banner-home-2">
                <img class="image-31" sizes="90vw"
                     src="<?php echo get_template_directory_uri() ?>/images/banner-3.png"
                     srcset="<?php echo get_template_directory_uri() ?>/images/banner-3-p-500.png 500w, <?php echo get_template_directory_uri() ?>/images/banner-3.png 970w">
            </div>
        </div>
    </div>
</div>
<div class="sec-page">
    <h1 class="titulo-blog-coluna-page">
        <a class="titulo-blog-coluna-page"
           style="border: none"
           href="<?php echo get_permalink(get_page_by_title('Blogs/Colunas')) ?>">
            BLOGS E COLUNAS
        </a> /
        <span class="titulo-blogc-span"> <?php echo $curauth->display_name ?></span>
    </h1>
    <div class="w-container">
        <div class="w-row">
            <div class="box-blog-lis w-col w-col-8">
                <div class="box-conteudo-noticia">
                    <ul class="w-list-unstyled">

                        <?php
                        $paged = (get_query_var('paged')) ? get_query_var('paged') : 1;

                        $the_query = new WP_Query(array(
                            'author' => $curauth->ID,
                            'posts_per_page' => 6,
                            'paged' => $paged
                        ));
                        while ($the_query->have_posts()) :
                            $the_query->the_post();
                            $thumb = get_post_thumbnail_id();
                            $image = vt_resize($thumb, '', 620, 228, true);
                            $image[url] .= '?w=620&h=228';
                            ?>

                            <!--loop-->
                            <li class="blogsc-item">
                                <h1 onclick="link('<?php the_permalink() ?>')"
                                    class="titulo-bc-item cursor-pointer"><?php the_title() ?></h1>
                                <div class="info-blogc-public"><?php echo ucfirst(get_the_date('l, d \d\e F \d\e Y   \à\s H\hi')) ?></div>
                                <img class="img-blogs-colunas-item"
                                     src="<?php echo $image[url] ?>">
                                <div class="p-blogs-colunas">
                                    <?php the_excerpt(); ?>
                                    <a href="<?php the_permalink() ?>" class="text-span">continue lendo...</a>
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
                                    ?>
                                </div>

                                <!--social-->
                                <?php echo do_shortcode('[Sassy_Social_Share style="margin: 5px 0 15px 0; float:left"]') ?>
                                <img src="<?php echo get_template_directory_uri() ?>/images/redes_soc.png"
                                     style="clear: both; height: 40px; margin: 6px 0 0 4px"><br><br>
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
            <div class="column-4 w-col w-col-4">
                <?php get_sidebar('author'); ?>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>
