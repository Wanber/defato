<article <?php post_class('article'); ?> id="post-<?php the_ID(); ?>" itemscope
                                         itemtype="http://schema.org/CreativeWork">
    <div class="w-container">
        <ul class="w-list-unstyled">
            <li class="list-item w-clearfix">
                <div class="w-row">

                    <?php
                    $thumb = get_post_thumbnail_id();
                    $image = vt_resize($thumb, '', 193, 128, true);
                    $image[url] .= '?w=193&h=128';
                    $editorial = get_child_cat(get_the_category(), get_cat_ID('editoriais'));

                    if (function_exists('rl_color'))
                        $cor_cat = rl_color($editorial->cat_ID);
                    else
                        $cor_cat = '#EEEEEE';
                    ?>

                    <div class="w-clearfix w-col w-col-3">
                        <img class="image-7"><?php if (has_post_thumbnail()) { ?>
                            <a href="<?php the_permalink(); ?>"><img src="<?php echo $image[url] ?>" class="alignleft"/></a>
                        <?php } ?>

                        <a href="<?php echo get_category_link($editorial->cat_ID) ?>"
                           class="category-list-news" style="background: <?php echo $cor_cat ?>">
                            <?php echo $editorial->name ?>
                        </a>
                    </div>

                    <div id="box-list-cat-div" class="w-col w-col-9">
                        <div class="date-list-cetegory-news"><?php echo get_the_date('j \d\e F \d\e Y') ?></div>
                        <div class="titulo-list-category-news" itemprop="headline">
                            <a itemscope
                               style=""
                               itemprop="mainEntityOfPage"
                               itemType="https://schema.org/WebPage"
                               href="<?php the_permalink(); ?>"
                               rel="<?php esc_attr_e('bookmark', 'defato'); ?>"><?php the_title(); ?></a>
                        </div>
                        <div class="p-list-category-news"
                             itemprop="text"><?php echo substr(get_the_excerpt(), 0, 140); ?> </div>
            </li>

        </ul>
    </div>

</article><!-- .article -->