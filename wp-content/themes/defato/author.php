<?php get_header() ?>

<?php
$curauth = (get_query_var('author_name')) ? get_user_by('slug', get_query_var('author_name')) :
    get_userdata(get_query_var('author'));
?>
<div class="sec-page">
    <h1 class="titulo-blog-coluna-page"><div class="w-container">
	    
	    
        <a class="titulo-blog-coluna-page"
           style="border: none"
           href="<?php echo get_permalink(get_page_by_title('Blogs/Colunas')) ?>">
            BLOGS E COLUNAS
        </a> 
        <span class="titulo-blogc-span"> <?php echo $curauth->display_name ?></span>
    </h1></div>
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
                                <div class="w-col w-col-12">
					   <div class="w-col w-col-6">
					 <div class="info-blogc-public"><i class="fa fa-clock-o" aria-hidden="true"></i> publicado em  
                                         <?php echo ucfirst(get_the_date('d \d\e F \d\e Y   \à\s H\hi')) ?>
                                        <br/>					   
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
            <div class="column-4 w-col w-col-4">
                <?php get_sidebar('author'); ?>
            </div>
        </div>
    </div>
</div>

<?php get_footer(); ?>
