<?php
/*
AmberPanther wpinc for WordPress - Uninstall file
*/
if( !defined( 'ABSPATH') && !defined('WP_UNINSTALL_PLUGIN') )  exit();
$oname = 'ap_wpinc_options';
$options =  get_option($oname);
if ($options['clean_uninst']){
	delete_option($oname);
}
?>
