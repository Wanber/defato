<?php
if ( @isset( $_SERVER['HTTP_X_REQUESTED_WITH'] ) ) {
  require_once( '../../../wp-config.php' );
  $_db = @mysql_connect( DB_HOST, DB_USER, DB_PASSWORD );
  mysql_select_db( DB_NAME );
  $postID = intval( $_POST['id'] );
  $sql    = "UPDATE `" . $wpdb->prefix . "bannerize_b` SET `clickcount` = `clickcount`+1 WHERE id = " . $postID;
  $result = mysql_query( $sql );
}