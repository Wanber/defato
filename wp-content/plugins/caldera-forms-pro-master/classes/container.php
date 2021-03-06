<?php


namespace calderawp\calderaforms\pro;
use calderawp\calderaforms\pro\api\log;


/**
 * Class container
 *
 * Contains "main" instances of all reusable classes
 *
 * @package calderawp\calderaforms\pro
 */
class container extends repository{


	/**
	 * Holds main instance
	 *
	 * @since 0.0.1
	 *
	 * @var container
	 */
	protected static $instance;
	

	/**
	 * Holds main instance
	 *
	 * @since 0.0.1
	 *
	 * @return container
	 */
	public static function get_instance(){
		if( ! self::$instance ){
			self::$instance = new self();

		}

		return self::$instance;
	}

	/**
	 * Get the messages DB abstraction
	 *
	 * @since 0.0.1
	 *
	 * @return messages
	 */
	public function get_messages_db(){
		if( ! $this->has( 'db' ) ){
			global  $wpdb;
			$table_name = $wpdb->prefix . 'cf_pro_messages';
			$this->set( 'db',  new messages( $wpdb, $table_name ) );
		}
		return $this->get( 'db' );
	}

	/**
	 * Get the main settings object
	 *
	 * @since 0.0.1
	 *
	 * @return settings
	 */
	public function get_settings(){
		if( ! $this->has( 'settings' ) ){
			$this->set( 'settings', settings::from_saved() );
		}
		return $this->get( 'settings' );
	}

	/**
	 * Get hooks class
	 *
	 * @since 0.0.1
	 *
	 * @return hooks
	 */
	public function get_hooks(){
		if( ! $this->get( 'hooks' ) ){
			$this->set( 'hooks', new hooks() );
		}

		return $this->get( 'hooks' );
	}

	/**
	 * Get remote logger
	 *
	 * @since 0.2.0
	 *
	 * @return log
	 */
	public function get_logger(){
		if( ! $this->get( 'logger' ) ){
			$this->set( 'logger', new log( $this->get_settings()->get_api_keys() ) );
		}

		return $this->get( 'logger' );
	}
}