<?php get_header(); ?>

	<article <?php post_class( 'article' ); ?> id="post-<?php the_ID(); ?>" itemscope itemtype="http://schema.org/CreativeWork">
       
      <?php if( have_posts() ) : while ( have_posts() ) : the_post(); ?>
	<div class="sec-page">
    
    <div class="w-container">
      <div class="w-row">
       <h2 class="titulo-category-page"><?php the_title(); ?></h2>
        <div class="w-col w-col-8">
          <div class="w-row">
            <div class="w-col w-col-6">
              <div class="box-autor-news-page"></div>
            </div>
            <div class="w-col w-col-6">
              <div class="shared-page-noticias"></div>
            </div>
          </div>
          <div class="box-conteudo-noticia"><?php the_content(); ?></div>
          <div class="box-recomendados"></div>
        </div>
        <div class="w-col w-col-4"><?php get_sidebar(); ?></div>
      </div>
    </div>
  </div>
  <?php endwhile; endif; ?>
<?php get_footer(); ?>