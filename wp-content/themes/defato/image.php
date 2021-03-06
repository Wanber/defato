<?php get_header(); ?>

  <main class="section-wide">

    <?php if( have_posts() ) : while ( have_posts() ) : the_post(); ?>

    <article class="article" <?php post_class(); ?> id="post-<?php the_ID(); ?>" itemscope itemtype="http://schema.org/CreativeWork">

      <header class="post-header">
        <h2 class="post-title entry-title" itemprop="headline"><?php the_title(); ?></h2>
      </header>

      <article class="post-content entry-content" itemprop="text">

        <img src="<?php echo wp_get_attachment_url( $post->ID ); ?>" alt="<?php the_title(); ?>" class="aligncenter" />

        <article class="attachment-caption"><?php the_excerpt(); ?></article>

        <article class="attachment-desc"><?php the_content(); ?></article>

      </article><!-- .post-content -->

    </article><!-- .article -->

    <?php endwhile; endif; ?>

  </main><!-- .section -->

<?php get_footer(); ?>