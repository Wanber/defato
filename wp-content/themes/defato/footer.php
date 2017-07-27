<div class="footer">
        <div class="box-footer">
            <div class="row-2 w-row">
                <div class="column-6 w-col w-col-3"><img class="image-11"
                                                         src="<?php echo get_template_directory_uri() ?>/images/logo-footer.png"><img
                            class="image-10"
                            src="<?php echo get_template_directory_uri() ?>/images/footer-1.png">
                </div>
                <div class="w-col w-col-3"><?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("footer-categoria") ) : ?>
<?php endif ;?>
                </div>
                <div class="w-col w-col-2"><?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("footer-social") ) : ?>
<?php endif ;?>
                </div>
                <div class="w-col w-col-4"><?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar("footer-tags") ) : ?>
<?php endif ;?>
                </div>
            </div>
        </div>
    </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js" type="text/javascript"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/webflow.js" type="text/javascript"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/slick.min.js" type="text/javascript"></script>
<script src="<?php echo get_template_directory_uri() ?>/mp/dist/jquery.magnific-popup.min.js" type="text/javascript"></script>
<script src="<?php echo get_template_directory_uri() ?>/js/scripts.js" type="text/javascript"></script>
  <!-- [if lte IE 9]><script src="https://cdnjs.cloudflare.com/ajax/libs/placeholders/3.0.2/placeholders.min.js"></script><![endif] -->
<?php wp_footer(); ?>

</body>
</html>