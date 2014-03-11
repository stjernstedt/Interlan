<?php
/*
Plugin Name: AmberPanther WP Include File
Plugin URI: http://www.amberpanther.com/contributions/wp-include-file/
Description: WP Include File utilizes the WordPress Shortcode API to include the contents and output from PHP code lacated in an external file anywhere within the post content
Version: 3.1
Author: the AmberPanther team
Author URI: http://www.amberpanther.com
*/

/*  Copyright 2009  the AmberPanther team  ()

    This program is free software; you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation; either version 2 of the License, or
    any later version.

    This program is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License along with
    this program; if not, see <http://www.gnu.org/licenses/> or write to the Free Software
    Foundation, Inc., 51 Franklin St, Fifth Floor, Boston, MA  02110-1301  USA
*/

if ( ! class_exists( 'ap_wpinc_cove' ) ) {

require_once( dirname(__FILE__) . '/ap-plfw/class/ap_plugin_ambrapanthera.php');
	
class ap_wpinc_cove extends ap_plugin_AmbraPanthera {
	
	var $pluginname = 'WP Include File';
	var $codename = 'wpinc';
	var $menutitle = 'WP Include';
	var $version = '3.1';
	var $hook = array('ap-wpinc-general-options','ap-wpinc-backend-options','ap-wpinc-help-options');
	var $thefile = __FILE__ ;
	var $theicon = '';
	var $theurl = '';
	var $thedir = '';
	var $wpurl = '';
	var $homeurl = 'http://www.amberpanther.com/contributions/wp-include-file/';
	var $demourl ='';

	function ap_wpinc_cove(){
	
		$pl_basename = plugin_basename($this->thefile);
		
		//initialize
		$this->ap_plugin_AmbraPanthera();
		
		//plugin url and dir
		$dir = rtrim( str_replace( basename( $this->thefile ), '', $pl_basename ), '/');
		$this->theurl = WP_PLUGIN_URL .'/'. $dir;
		$this->thedir = WP_PLUGIN_DIR .'/'. $dir;
		
		//define image url
		$this->theicon = $this->theurl .'/ap-plfw/images/paw_b.png';
		$this->thepaw =  $this->theurl .'/ap-plfw/images/paw_b.png';
		
		//include files
		$this->ap_load_files( $this->thedir . '/ap-ps/dashboard' );
		if ( file_exists( $this->thedir . '/'. $this->codename .'-premium' ) ){
			$this->ap_load_files( $this->thedir . '/'. $this->codename .'-premium' );
			$this->pluginname .= ' Premium';
			$this->premium = true;
		}

		//load text domain
		$this->textdomain = 'ap_' . $this->codename . '_plugin';
		load_plugin_textdomain( $this->textdomain, false, $this->thedir . '/locale/' );
		
		//handle options for older versions
		$oldopt = get_option('wpinc_file_options');
		if ($oldopt){
			add_option('ap_wpinc_options',$oldopt);
			delete_option('wpinc_file_options');
		}
	}
}
	global $ap_wpincC;
	$ap_wpincC = new ap_wpinc_cove();
}



/**
 * The main driver function for WP Include File
 *
 */
function wp_include_file($atts) {
	global $ap_wpincC;
	
	//get the attributes from shortcode
	// variable used to avoid input errors with forgeting the plural
	// parameters kept for back compatibility: v < 3.1
	extract(shortcode_atts(array('file' => NULL,'path' => NULL,'masterpath' => NULL,'variables'=>NULL,'variable'=>NULL,'parameters'=>NULL), $atts));
	
	//quick return if file is not specified
	if ($file==NULL) return;
	
	//retrieve options
	$options=$ap_wpincC->ap_get_option('array');
	
	//define ampersand coding
	$amp = array('&amp;', '&#038;');

	// get path
	//if masterpath is specified - it dominates
	if ($masterpath !=NULL){
		$ap_fullpath = $masterpath;
	}else{
		$ap_fullpath = ap_wpinc_get_path($options,$path);
	}
	$ap_fullpath = trailingslashit($ap_fullpath);


	//is get request set? extract the variables
	if ( strpos($file,'?') ){
		$parts = explode('?',$file);
		$file = $parts[0];
		$parts[1] = str_replace( $amp, '&', $parts[1] );
		parse_str( $parts[1], $params );
		$_GET = $_GET + $params;
		$_GET['include_file'] = $file;
		$_GET['include_path'] = $ap_fullpath;
	}

	//append file name to path
	$ap_fullpath .= $file;
	
	//return if file does not exist
	if (!file_exists($ap_fullpath)){
		if ( $options['debug'] == true )
			return ap_wpinc_warnings('nofile' , array('fullpath' => $ap_fullpath) );
		else
			return;
	}
	
	//deal with input variables
	if ($parameters != NULL){
		if ($variables != NULL){
			$variables .= '&' .ltrim($parameters,'&');
		}else{
			$variables = $parameters;
		}
	}
	if ($variable != NULL){
		if ($variables != NULL){
			$variables .= '&' .ltrim($variable,'&');
		}else{
			$variables = $variable;
		}
	}
	if ($variables != NULL){
		//check if ap_fullpath is not one of the variables.
		if ( strpos($variables,'ap_fullpath') ){
			if ( $options['debug'] == true )
				return ap_wpinc_warnings('variable');
			else
				return;
		}

		//ok? then parse variables
		$amp = array('&amp;', '&#038;');
		$variables = str_replace( $amp, '&', $variables );
		parse_str( $variables );
		
	}
	
	
	//load the file and return the results
	ob_start();
	include($ap_fullpath);
	$content = ob_get_clean();
	$content = "<!-- Content included by AmberPanther WP Include File --> \n" . $content ."\n<!-- End of included content -->\n";
	return $content;
}
add_shortcode('include', 'wp_include_file');

/**
 * Returns the directory path for the included file
 *
 */
function ap_wpinc_get_path($options,$path = NULL){
	//build path
	if ($options['whichpath']==1 || $options['whichpath']==false){
		$fullpath = trailingslashit(ABSPATH);
		if ( $path != NULL ){
			$fullpath .= ap_wpinc_leadingunslashit($path);
		}else{
			if ($options['path_ext']) $fullpath .= $options['path_ext'];
		}
	}elseif ($options['whichpath']==2){
		$fullpath = trailingslashit(TEMPLATEPATH);
		if ($path !=NULL){
			$fullpath .= ap_wpinc_leadingunslashit($path);
		}else{
			if ($options['path_ext']) $fullpath .= ap_wpinc_leadingunslashit($options['path_ext']);
		}
	}elseif ($options['whichpath']==3){
		$fullpath = trailingslashit($_SERVER['DOCUMENT_ROOT']);
		if ($path !=NULL){
			$fullpath .= ap_wpinc_leadingunslashit($path);
		}else{
			if ($options['path_ext']) $fullpath .= ap_wpinc_leadingunslashit($options['path_ext']);
		}
	}elseif ($options['whichpath']==4){
		$fullpath = trailingslashit($options['path_ext']);
		if ($path !=NULL){
			$fullpath .= ap_wpinc_leadingunslashit($path);
		}
	}
	return $fullpath;
}

/**
 * Removes the leading slash from a given string
 *
 */
function ap_wpinc_leadingunslashit($str){
	return ltrim($str,'/');
}

/**
 * Returns warnings for debug mode
 *
 */
function ap_wpinc_warnings($which , $inputs=array() ){
		
		$startdiv = '<style type="text/css">#ap-wp-include-file p{margin:5px 0}</style><div id="ap-wp-include-file" style="margin:15px 0;-moz-border-radius:3px 3px 3px 3px;border-style:solid;border-width:1px;padding:10px;background-color:#FFEBE8;border-color:#CC0000;"><p style="margin-bottom:10px"><strong><i>AmberPanther WP Include File Debug Mode:</i></strong></p>';
		$enddiv = '</div>';
		
		$out = array(
			'nofile' => $startdiv . '<p><strong>The included file is not found.</strong></p><p> The file path is defined as: <strong>'.$inputs['fullpath'].'</strong>.</p><p>Ensure the file exists OR set up the path correctly through the shortcode in the <a href="'.get_edit_post_link().'" title="">post/page</a> or <a href="'. admin_url('admin.php?page=ap-wpinc-general-options').'" title="">WP Include Options</a> page.</p>' . $enddiv,

			'variable' => $startdiv . '<p><strong>The variable <i>ap_fullpath</i> is reserved and cannot be used</strong>.</p><p>Consider using a different name for your variable.</p>' . $enddiv
			);
	
		return $out[$which];
}
/**
 * Adds a warning to the Admin Pages if Debug mode is enabled
 *
 */
function ap_wpinc_adminwarndebug(){
	global $ap_wpincC;
	
	$options=$ap_wpincC->ap_get_option('array');
	if ( $options['debug'] == true ){
		echo '<div class="error" id="ap_wpinc_warn"> 
<p><strong>WARNING:</strong> WP Include File <i>DEBUG mode</i> is enabled. Make sure to deactivate it before going live!</p></div>';
	}
}
add_action('admin_notices','ap_wpinc_adminwarndebug');

/**
 * Set the Defaults
 *
 */
function ap_wpinc_defaults(){
	global $ap_wpincC;
	
	$defaults = array('version' => $ap_wpincC->version, 'whichpath'=> '1', 'path_ext' => '','debug'=>false); 
	return $defaults;
}

?>