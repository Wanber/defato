<?php get_header(); ?>

    <main class="section" id="section">

        <?php if (have_posts()) : ?>

            <div class="sec-page" style="margin-top: 20px">
                <h1 style="color: #ED1C24; border-color: #ED1C24"
                    class="titulo-category-page"><?php _e('Resultados para', 'defato'); ?>
                    &quot;<?php the_search_query(); ?>&quot;</h1>
            </div>

            <?php while (have_posts()) : the_post(); ?>

                <?php get_template_part('content', 'list'); ?>

            <?php endwhile; ?>

            <?php echo defato_theme_pagination_links(); ?>

        <?php else : get_template_part('content', 'none'); endif; ?>

    </main><!-- .section -->

<?php get_sidebar(); ?>

<?php get_footer(); ?>