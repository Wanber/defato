<?php
$curauth = (get_query_var('author_name')) ? get_user_by('slug', get_query_var('author_name')) :
    get_userdata(get_query_var('author'));
?>
    <div class="foto-autor-pagina">
        <?php echo get_avatar($curauth->ID, 100, '', '', array('class' => '')) ?>
	    <h3 class="nome-autor-page"></h3>
        <div style="text-align: justify"><?php echo get_the_author_meta('description', $curauth->ID) ?></div>
    </div>

    <div class="pesquisa-blog">
    <?php get_search_form(); ?>
</div>


<div class="banner-home-1">
    <div class="box-sombra-banner">
        <img class="image-3"
             src="<?php echo get_template_directory_uri() ?>/images/banner.png">
    </div>

    <div class="box-laste-news">
        <h3 class="titulo-widget-last-news" style="color: #FF0F0F; border-color: #FF0F0F">
            + COLUNISTAS
        </h3>
        <ul class="w-list-unstyled">

            <?php
            $args = array(
                'role' => 'author',
                'exclude' => array($curauth->ID)
            );
            $autores = get_users($args);

            foreach ($autores as $autor) :
                ?>

                <!--loop-->
                <li class="last-item-page w-clearfix" style="border-color: <?php echo $cor_cat ?>">
                    <?php echo get_avatar($autor->ID, 100, '', '', array('class' => 'img-item-last-news')) ?>
                    <a href="<?php echo get_author_posts_url($autor->ID) ?>" class="titulo-last-news cursor-pointer">
                        <?php echo esc_html($autor->display_name) ?>
                    </a>
                </li>

            <?php endforeach; ?>

        </ul>
    </div>


    <div class="box-laste-news">
        <h3 class="titulo-widget-last-news" style="color: <?php echo $cor_cat ?>; border-color: <?php echo $cor_cat ?>">
            + LIDAS
        </h3>
        <ul class="w-list-unstyled">

            <?php
            $the_query = new WP_Query(array(
                'posts_per_page' => 7,
                'author' => $curauth->ID,
                'meta_key' => 'wpb_post_views_count',
                'orderby' => 'meta_value_num',
                'order' => 'DESC'
            ));

            while ($the_query->have_posts()) :
                $the_query->the_post();
                $thumb = get_post_thumbnail_id();
                $image = vt_resize($thumb, '', 180, 120, true);
                ?>

                <!--loop-->
                <li class="last-item-page w-clearfix" style="border-color: <?php echo $cor_cat ?>">
                    <img src="<?php echo $image[url]; ?>"
                         class="img-item-last-news"
                         width="<?php echo $image[width]; ?>"
                         height="<?php echo $image[height]; ?>"/>
                    <a href="<?php the_permalink() ?>" class="titulo-last-news cursor-pointer">
                        <?php the_title() ?>
                    </a>
                </li>

            <?php endwhile; wp_reset_query(); ?>

        </ul>
    </div>
</div>