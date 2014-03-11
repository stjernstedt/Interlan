<?php
/**
	class ap_plugin_AmbraPanthera : Control center for AmberPanther Plugins
	@version 3.1.3
	@change clean_url -> esc_url
	
*/
//WP_PLUGIN_DIR, WP_PLUGIN_URL, plugin_basename( __FILE__ )

if (!class_exists('ap_plugin_AmbraPanthera')){
class ap_plugin_AmbraPanthera {

	var $pluginname = '';
	var $codename = '';
	var $menutitle = '';
	var $version = '';
	var $hook = array();
	var $thefile = '';
	var $thedir = '';
	var $theurl = '';
	var $xsettings = '';
	var $theicon = '';
	var $thepaw = 'http://chest.amberpanther.com/img/paw_16x16.png';
	var $wpurl = '';
	var $homeurl = '';
	var $demourl ='';
	var $fromcamp = 'plugin';
	var $textdomain = 'ap_plugin';
	var $premium=false;
	var $sitewide=false;
	
		
	function ap_plugin_AmbraPanthera(){
		register_activation_hook( $this->thefile, array(&$this, 'ap_activate') );
		register_deactivation_hook( $this->thefile, array(&$this, 'ap_deactivate') );
		//print_r('test');
		if (is_admin()) {
			add_action( 'admin_init', array(&$this, 'ap_register_settings') );
			//print_r($_GET['page']);
			if (isset($_GET['page']) && in_array($_GET['page'], $this->hook)){
				//print_r('test');
				add_action('admin_head', array(&$this,'ap_admin_head_addition'));
				add_action('admin_print_scripts',array(&$this, 'ap_admin_scripts'));
			}
		}
		add_action('ini',array(&$this, 'ap_load_jquery_intheme'));
		add_action('wp_dashboard_setup', array(&$this,'ap_rsswidget_setup'));
	}
		
	//***** let's do some housekeeping
	//define the option name saved in the database and return it value also
	function ap_get_option($which='array',$xsettings=''){
		$name = "ap_{$this->codename}_options"; //name option in database
		switch($which){
			case 'name':
			case 'string':
				return $name;
				break;
			case 'array':
				if ( !is_multisite() ){
					$options = get_option($name);
				}else{
					if ( $this->sitewide ){
						$options = get_site_option($name.'_sw');
					}else{
						$options = get_option($name);
					}
				}
				return $options;
				break;
			case 'settings':
				$setnm = $name;
				if (!empty($xsettings)) $setnm .= '-'.$xsettings;
				$setnm .= '-inwhite';
				return $setnm;
				break;
		}
	}

	//on activation add default options to databaseoptions 
	function ap_activate(){
		if (!$this->ap_get_option('array')){
			$funcnm = "ap_{$this->codename}_defaults";
			if (function_exists($funcnm)){
				$defaults = $funcnm();
			}else{
				$defaults = array();
			}
			$name = $this->ap_get_option('string');
			if ( !is_multisite() ){
					add_option($name,$defaults,'','yes');
			}else{
				if ( $this->sitewide ){
					add_site_option($name.'_sw' , $defaults);
				}else{
					add_option($name,$defaults,'','yes');
				}
			}
		}
	}

	//on deactivation unregister options and remove options
	function ap_deactivate(){
		$optionname = $this->ap_get_option('string');
		$options = $this->ap_get_option('array');
		$setname = $this->ap_get_option('settings');
		unregister_setting( $setname, $optionname, '' );
		if ($options['clean_deact']){
			delete_option($optionname);
			if ( !is_multisite() ){
					delete_option($optionname);
			}else{
				if ( $this->sitewide ){
					delete_site_option($optionname.'_sw');
				}else{
					delete_option($optionname);
				}
			}
		}
	}

	//register settings in white list before saving in db
	function ap_register_settings(){
		$optionname = $this->ap_get_option('string');
		$setname = $this->ap_get_option('settings');
		$sanitization = "ap_{$this->codename}_sanitize";
		register_setting( $setname, $optionname, $sanitization );
	}
	
	//css for administration options page
	function ap_admin_head_addition(){	
		$out = '<style type="text/css">'
              .'/*<![CDATA[*/'
              .'#ap_footer{clear:both}'
              .'#ap_footer.postbox h3,#ap_footer.postbox{-moz-border-radius-topleft:0;-moz-border-radius-topright:0;-moz-border-radius-bottomleft:6px;-moz-border-radius-bottomright:6px;height:25px;}'
              .'#ap_footer.postbox h3{text-align:center;margin:0;cursor:auto;line-height:25px;font-weight:normal;font-size:12px}'
              .'#ap_footer img{margin-bottom:-3px;}'
              .'.ap_indent{padding-left:30px}'
              .'/*]]>*/'
              .'</style>' . "\r\n";
		if ( file_exists( $this->thedir . '/ap-ps/dashboard/'. $this->codename .'-dashboard.css' ) ){
			$out .= '<link rel="stylesheet" href="'. $this->theurl . '/ap-ps/dashboard/'. $this->codename .'-dashboard.css' . '" type="text/css" />' ."\n";
		}
		if ( file_exists( $this->thedir . '/ap-ps/dashboard/'. $this->codename .'-dashboard.js' ) ){
			$out .= '<script type="text/javascript" src="'. $this->theurl . '/ap-ps/dashboard/'. $this->codename .'-dashboard.js' . '"></script>' ."\n";
		}
		echo $out;

	}
	//load wp scripts for sortable boxes
	function ap_admin_scripts() {
		wp_enqueue_script('postbox');
		wp_enqueue_script('dashboard');
	}
		
	//load jquery in them
	//jQuery - load?
	function ap_load_jquery_intheme(){
		$options = $this->ap_get_option('array');
		if ($options['jquery']){
			wp_enqueue_script('jquery');
		}
	}

	
	// functions to build options pages
	function ap_postbox($id, $title, $content) {
	?>
		<div id="<?php echo $id; ?>" class="postbox">
			<div class="handlediv" title="Click to toggle"><br /></div>
			<h3 class="hndle"><span><?php echo $title; ?></span></h3>
			<div class="inside">
				<?php echo $content; ?>
			</div>
		</div>
	<?php
	}


/*
Assist functions
*/
	function ap_sidebar_options(){
		$options = $this->ap_get_option('array');
	?>
		<div id="side-info-column" class="inner-sidebar">
			<div id="side-sortables" class="meta-box-sortables ui-sortable">
			
				<?php
				if(isset($_GET['page']) && ($_GET['page'] == "ap-{$this->codename}-phpinfo-options") && function_exists('ap_phpinfo_quicklinks')){ 
					ap_phpinfo_quicklinks();
				}
				?>
				<?php
				if (!$options['backend']['rss_onside']){
					$content = $this->ap_news();
					$this->ap_mainbox('ap-rss','AmberPanther News',$content);
				}
			?>
			
				<div id="ap_quicklinks" class="postbox ">
					<div class="handlediv" title="Click to toggle"><br /></div>
					<h3 class="hndle"><span><?php _e( 'Quick-links' , $this->textdomain); ?></span></h3>
					<div class="inside">
						<ul class="ap_listdisc">
							<li><a href="http://www.amberpanther.com/" target="_blank" title="">AmberPanther</a></li>
							<li><a href="<?php echo $this->homeurl; ?>" target="_blank" title=""><?php _e( sprintf('%s Home' , $this->pluginname ) , $this->textdomain ); ?></a></li>
							<?php if ($this->demourl){echo '<li><a href="'.$this->demourl.'" target="_blank" title="">'.$this->pluginname.' Demo</a></li>';} ?>
							<?php if ($this->wpurl){echo '<li><a href="'.$this->wpurl.'" target="_blank" title="">'.$this->pluginname.' at WordPress</a></li>';} ?>
							<?php if ($options['backend']['rss_onside']){
									echo '
									<li><a href="http://www.amberpanther.com/feed" target="_blank" title="">Subscribe to our feed</a></li>
									<li><a href="http://chest.amberpanther.com/redir/facebook" target="_blank" title="">Find us on Facebook</a></li>
									<li><a href="http://chest.amberpanther.com/redir/twitter" target="_blank" title="">Follow us on Twitter</a></li>
									';
									} 
							?>
							<li>&nbsp; </li>
							<li><a href="http://chest.amberpanther.com/redir/csstut" target="_blank" title=""><?php _e( 'CSS Tutorial' , $this->textdomain); ?></a></li>
						</ul>
					</div><!-- end inside-->
				</div><!-- end side-box-1-->

		
			<?php
				if (!$options['backend']['banner_onside']){
					$this->ap_sidebanner();
				}
			?>
		
			
				<!-- <div id="side-banner-1" class="postbox ">
					<div class="inside">
					</div>
				</div>-->

			</div><!-- end side-sortables-->
		</div><!-- end side-info-column-->
	<?php
	}

	//the footer
	function ap_footer_options(){
	?>

		<div id="ap_footer" class="postbox ">
			<h3>
				<span>WordPress back-ends that are functional!  &middot;  the <a href="http://www.amberpanther.com" title="">AmberPanther</a> team </span> <img src="<?php echo $this->thepaw; ?>" alt="the paw!" />
			</h3>
		</div>

	<?php
	}

	//the save button primary
	function ap_savebutton_options(){
	?>
		<p class="submit">
			<input class="button-primary" type="submit" value="<?php _e( 'Save Changes' , $this->textdomain); ?>" name="Submit"/>
		</p>
	<?php
	}
	
	//the button
	function ap_button_options($name,$style=''){
	?>
		<p class="submit" style="<?php echo $style;?>">
			<input class="button" type="submit" value="<?php echo $name;?>" name="<?php echo $name;?>"/>
		</p>
	<?php
	}
	//click button
	function ap_clickbutton_options($name,$style=''){
	?>
		<p class="submit" style="<?php echo $style;?>">
			<button class="button" type="button" id="<?php echo $name;?>"><?php echo $name;?></button>
		</p>
	<?php
	}
	
	//which page identifier
	function ap_input_whichpage($name){
		echo '<input type="hidden" name="ap_whichpage" value="'.$name.'" />';
	}

	function ap_mainbox($boxid,$boxtitle,$boxcontent){
?>
	<div id="<?php echo $boxid; ?>" class="postbox ">
		<div class="handlediv" title="Click to toggle"><br /></div>
		<h3 class="hndle"><span><?php echo $boxtitle; ?></span></h3>
		<div class="inside">
			<?php echo $boxcontent; ?>
		</div><!-- end inside-->
	</div><!-- end main-box-->
	<?php
	}
	
	//function to create reset box;
	function ap_resetoptions_box(){ ?>
		<script type="text/javascript">
			jQuery(document).ready(function($){
				$("#proceed-reset").bind("click", function(){
					$("#ap_reset-confirm").css("display","block");
					$("#proceed-reset").attr("disabled","disabled");

				});
				$("#cancel-reset").bind("click", function(){
					$("#ap_reset-confirm").css("display","none");
					$("#proceed-reset").removeAttr("disabled")
				});
			});
		</script>
		<form method="post" action="options.php">
		<div id="reset-box" class="postbox ">
		<div class="handlediv" title="Click to toggle"><br /></div>
		<h3 class="hndle"><span><?php _e( 'Reset' , $this->textdomain); ?></span></h3>
		<div class="inside">
		<p><?php _e( sprintf('Reset all %s options to default values' , $this->pluginname ) , $this->textdomain ); ?> | <strong><?php _e( 'Warning: All your customization will be lost!' , $this->textdomain); ?></strong></p>
		<p class="submit" style="float:none"><button class="button" type="button" id="proceed-reset"><?php _e( 'Proceed' , $this->textdomain); ?></button></p>
		<div id="ap_reset-confirm" style="margin-top:10px;color:#900;display:none">
			<?php _e( 'Are you sure you want to proceed and reset?' , $this->textdomain); ?>
			<p class="submit" style="float:none;margin-top:10px">
			<input class="button" type="submit" value="<?php _e( 'Reset' , $this->textdomain); ?>" name="Reset"/><button class="button" type="button" id="cancel-reset" style="margin-left:20px">Cancel</button>
			</p>
		</div>

		</div><!-- end inside-->
		</div><!-- end main-box-1-->
		<?php //add securities
			settings_fields($this->ap_get_option('settings'));
			$this->ap_input_whichpage('reset');
		?>
		</form>

	
<?php	}
	
	function ap_news(){
		include_once(ABSPATH . WPINC . '/feed.php');
		// Get a SimplePie feed object
		$rss = fetch_feed('http://www.amberpanther.com/feed/');
		if( is_wp_error( $rss ) ) return;
		//print_r($rss);
		// Figure out how many total items there are, but limit it to 5. 
		$maxitems = $rss->get_item_quantity(5); 
		// Build an array of all the items, starting with element 0 (first element).
		$rss_items = $rss->get_items(0, $maxitems);
		
		if ($maxitems == 0){
			$content = 'AmberPanther has no news at this time... but you can:';
		}else{
			$content = '<ul class="ap_list">';
			foreach ( $rss_items as $item ){
				$content .= '<li>';
				$content .= '<a href="'.esc_url( $item->get_permalink() ).'" title="Posted on '.$item->get_date('j F Y | g:i a').'">'. $item->get_title() .'</a> ';
				$content .= '</li>';
			}
			$content .= '</ul>';
		}
		$content .= '<div style="border-top: 1px solid #ddd; text-align:right;">';
		$content .= '<ul class="ap_list">';
		$content .= '<li class="social"><a href="http://www.amberpanther.com/feed">Subscribe via RSS</a></li>';
		$content .= '<li class="social"><a href="http://www.facebook.com/amberpanther">Fan us on Facebook</a></li>';
		$content .= '<li class="social"><a href="http://twitter.com/amberpanther">Follow us on Twitter</a></li>';
		$content .= '</ul>';
		$content .= '</div>';
		return $content;
		
	
	}
	function ap_sidebanner(){
		$request = "http://chest.amberpanther.com/adbanners/getbanner.php?which=banner&what=url&for=wpadmin&from={$this->fromcamp}&cname={$this->codename}";
		if (function_exists('json_decode')){
			$request .= '&type=json';
			$response = wp_remote_get($request);
			if( is_wp_error( $response ) ) return;
			$banner = json_decode($response['body'],true);
		}else{
			$request .= '&type=string';
			$response = wp_remote_get($request);
			if( is_wp_error( $response ) ) return;
			$banner = explode(',',$response['body']);
		}
		$width = 'auto';
		$height = '500px';
		$awidth = '270px';
		if (is_array($banner)){
			$url = $banner[0];
			if ( $banner[3] ) $turl = $banner[3];
			if ( $banner[1] && $banner[1] != 0 ){
				$width = $banner[1].'px';
				$height = $banner[2].'px';
				$awidth = $width;
			}
		}else{
			$url = $banner;
		}
		if ($url == 'AmberPanther') return;
		
		$get_req = "?ap-camp=1&from={$this->fromcamp}&cname={$this->codename}";
		if ( $turl ) $get_req .= "&turl=$turl";
		echo '<script type="text/javascript">jQuery(document).ready(function($){var bw = $("#side-banner-1").width();var sw = $("#side-info-column").width();if (sw > bw){$("#side-banner-1").css("margin-left",Math.round((sw-bw)/2)+"px");}});</script>';
		echo '<div id="side-banner-1" class="postbox " style="height:'.$height.';width:'.$width.';background:transparent url('.$url.') no-repeat top left;overflow:hidden;min-width:0">';
		echo '<a href="http://www.amberpanther.com/'.$get_req.'" target="_balnk"><h5 style="height:'.$height.';width:'.$awidth.';text-indent:-9999px;margin:0">AmberPanther</h5></a>';
		//echo '<div class="inside">';
		//echo '</div><!-- end inside-->';
		echo '</div><!-- end side-banner-1-->';
	}
	function ap_db_rsswidget(){
		$options = get_option('ap_pldb_rsswidget');
		if (!$options){
			$options['showrss'] = true;
			add_option('ap_pldb_rsswidget',$options,'','yes');
		}
		if (isset($_POST['ap_showrss']) && $_POST['ap_showrss']=='0') {
				$options['showrss'] = false;
				update_option('ap_pldb_rsswidget',$options);
		}
		if (!$options['showrss']) {
			echo "If you reload, this widget will disappear. It will only appear in the event you delete the database option <code>ap_pldb_rsswidget</code>.";
			return;
		}
		include_once(ABSPATH . WPINC . '/feed.php');
		// Get a SimplePie feed object
		$rss = fetch_feed('http://www.amberpanther.com/feed/');
		if( is_wp_error( $rss ) ) return;
		// Figure out how many total items there are, but limit it to 5. 
		$maxitems = $rss->get_item_quantity(5); 
		// Build an array of all the items, starting with element 0 (first element).
		$rss_items = $rss->get_items(0, $maxitems);
		
		if ($maxitems != 0){
			echo '<div class="rss-widget">';
			echo '<a href="http://www.amberpanther.com" title="AmberPanther"><img src="'.$this->thepaw.'" class="alignright" alt="AmberPanther"/></a>';			
			echo '<ul>';
			foreach ( $rss_items as $item ){
				echo '<li>';
				echo '<a href="'.esc_url( $item->get_permalink() ).'">'. $item->get_title() .'</a> ';
				echo '<span>'. $item->get_date('F j, Y') .'</span>';
				echo '<div class="ap_rsssum">'. $this->ap_excerpt($item->get_description(),200) .'</div>';
				echo '</li>';
			}
			echo '</ul>';
			echo '<div style="border-top: 1px solid #ddd; padding-top: 10px; text-align:center;">';
			echo '<a href="http://www.amberpanther.com/feed">Subscribe via RSS</a>';
			echo ' &nbsp; &nbsp; &nbsp; ';
			echo '<a href="http://www.facebook.com/amberpanther">Fan us on Facebook</a>';
			echo ' &nbsp; &nbsp; &nbsp; ';
			echo '<a href="http://twitter.com/amberpanther">Follow us on Twitter</a>';
			echo '<form class="alignright" method="post"><input type="hidden" name="ap_showrss" value="0"/><input class="button" title="Remove the AmberPanther RSS widget from all users dashboards" type="submit" value="x"/></form>';
			echo '<div style="clear:right"></div>';
			echo '</div>';
			echo '</div>';
		}
	}
	function ap_excerpt($text, $limit=250, $end = ' [&hellip;]') {
		if(strlen($text) > $limit){
			$text = substr($text, 0, $limit);
			$text = substr($text, 0, -(strlen(strrchr($text,' '))));
			$text .= $end;
		}
		return $text;
	}
	function ap_rsswidget_setup() {
		$options = get_option('ap_pldb_rsswidget');
		$opt = $this->ap_get_option('array');
			if ( (!$options || $options['showrss']) && !$opt['backend']['rss_ondash'])
				wp_add_dashboard_widget( 'ap_db_rsswidget-news' , 'AmberPanther News' , array(&$this, 'ap_db_rsswidget'));
	}
	

	//array handling
	//remove by key:
	function ap_array_remove_key(){
		$args  = func_get_args();
		return array_diff_key($args[0],array_flip(array_slice($args,1)));
	}
	// remove by value:
	function ap_array_remove_value(){
		$args = func_get_args();
		return array_diff($args[0],array_slice($args,1));
	}

	function ap_array_merge_recursive_distinct($array1, $array2 = null){
		$merged = (array)$array1;
		if (is_array($array2)){
			foreach ($array2 as $key => $val){
				if (is_array($array2[$key]))
					$merged[$key] = is_array($merged[$key]) ? $this->ap_array_merge_recursive_distinct($merged[$key], $array2[$key]) : $array2[$key];
				else
					$merged[$key] = $val;
			}
		}
		return $merged;
	}
	
	//image exists
	function ap_image_exists($url=''){
		$exists = false;
		$handle = @fopen($url,'r');
		if ( $handle ){
			$exists = true;
			@fclose($handle);
		}
		return $exists;
	}
	
	
/*
 * Returns array with all the php files in a directory
 *
 * @since 1.0
 * @param
 */
	function ap_read_dir($dir,$sort='ASC'){
		$apfiles = array();
		$h = opendir($dir);
		while (false !== ($fname = readdir($h))){
			$apfiles[] = $fname; 
		}
		closedir($h);
		
		//ensure all files are .php files
		$ifiles = array();
		foreach ($apfiles as $apfile){
			if(preg_match("/.php$/",$apfile)){
				$ifiles[] = $apfile;
			}
		}
		
		sort($ifiles);
		if  ($sort != 'ASC')
			rsort($ifiles);

		return $ifiles;
	}
/*
 * Loads the files
 *
 * @since 1.0
 * @param
 */
	function ap_load_files($appath){
		if (file_exists($appath)){
			$apfiles = $this->ap_read_dir($appath);
			foreach ($apfiles as $apfile){
				include_once($appath.'/'.$apfile);
			}
		}
	}

	
// class ends	
}
//if exists ends
}


?>