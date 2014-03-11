<?php
##############
#Options Page
#############
#initialization
//build menus
if (is_admin()){ 
	add_action('admin_menu', 'ap_wpinc_admin_top_level');
}
//create top level menu
function ap_wpinc_admin_top_level(){
	global $ap_wpincC;
	$optionpage_top_level = $ap_wpincC->menutitle;
	$optionpage_name = "General Options";
	$icon_url = $ap_wpincC->theicon;
	add_menu_page( $optionpage_top_level, $optionpage_top_level, 'administrator', 'ap-wpinc-general-options', 'ap_wpinc_generate_general',$icon_url);
	add_submenu_page('ap-wpinc-general-options', $optionpage_name, $optionpage_name, 'administrator', 'ap-wpinc-general-options', 'ap_wpinc_generate_general');
}

//generate the options page
function ap_wpinc_generate_general(){	
	global $ap_wpincC;
	$optionpage_name = 'General Options';
	$optionpage_codename = 'general';
      $optionpage_local = $ap_wpincC->pluginname.' '.$optionpage_name;
		
	$optionname = $ap_wpincC->ap_get_option('string');

	//retrieve current options from database
	$options = $ap_wpincC->ap_get_option('array'); 
	
?>



<div class="wrap">

<div id="icon-options-general" class="icon32"><br /></div>
<h2><?php echo ($ap_wpincC->pluginname.' '.$optionpage_name); ?></h2>

<div id="poststuff" class="metabox-holder has-right-sidebar">

	<?php // include the sidebar
		$ap_wpincC->ap_sidebar_options();
	?>
	
	<!-- main contenet here -->
	
	<form method="post" action="options.php">
	
	<div id="post-body-content">
		<div id="normal-sortables" class="meta-box-sortables ui-sortable">
		
			<?php 
			//$content= 'This is the content...';
			//$ap_wpincC->ap_mainbox('ap_misc','Miscellaneous',$content)
			?>
			
			
			<div id="wpinc-box-1" class="postbox ">
				<div class="handlediv" title="Click to toggle"><br /></div>
				<h3 class="hndle"><span>Choose the path where the Include files will be located</span></h3>
				<div class="inside">
				
				<p><label><input type="radio" name="<?php echo $optionname;?>[whichpath]" id="whichpath" value="1" <?php if ($options['whichpath'] == 1 || $options['whichpath'] == false){echo 'checked="checked"';}?> /> WordPress Root Directory. Your WordPress' root directory is: <strong><?php echo trailingslashit(str_replace('\\','/',ABSPATH)); ?></strong> (default)</label></p>
				<p><label><input type="radio" name="<?php echo $optionname;?>[whichpath]" id="whichpath3" value="3" <?php if ($options['whichpath'] == 3 || $options['whichpath'] == false){echo 'checked="checked"';}?> /> Site Root Directory. Your site's root directory is: <strong><?php echo trailingslashit(str_replace('\\','/',$_SERVER['DOCUMENT_ROOT'])); ?></strong></label></p>
				<p><label><input type="radio" name="<?php echo $optionname;?>[whichpath]" id="whichpath2" value="2" <?php if ($options['whichpath'] == 2){echo 'checked="checked"';}?>/> Theme Root Directory. Your current theme's root directory is: <strong><?php echo trailingslashit(str_replace('\\','/',TEMPLATEPATH)); ?></strong></label></p>
				<p><label><input type="radio" name="<?php echo $optionname;?>[whichpath]" id="whichpath4" value="4" <?php if ($options['whichpath'] == 4){echo 'checked="checked"';}?>/> Custom. Define a <strong>custom full path</strong>. <small> ( <i>new feature!</i> ) </small></label></p>

				

				</div><!-- end inside-->
			</div><!-- end main-box-1-->


			<div id="wpinc-box-2" class="postbox ">
				<div class="handlediv" title="Click to toggle"><br /></div>
				<h3 class="hndle"><span>Custom Path - Path Extension</span></h3>
				<div class="inside">

				<p>Enter the path extension where the Include files will be located. <span <?php if ($options['whichpath'] == 4) echo 'style="display:none"';?>>(optional)</span></p>
				<p><input name="<?php echo $optionname;?>[path_ext]" class="input_box" type="text" id="path_ext" value="<?php if ($options['path_ext']){echo $options['path_ext'];}?>" style="width:99%" maxlength="255" /></p>
				<?php 
					if ($options['path_ext']){ 
					$fullpath = ap_wpinc_get_path($options);
						if (!file_exists($fullpath)){
				?>
				<p style="color:#990000"><strong>Specified Directory NOT Found.</strong> Ensure the path is correct.</p>
				<?php 
						}
					} 
				?>
				<?php 
					if ($options['whichpath'] == 4 && !$options['path_ext']){ 
				?>
				<p style="color:#990000"><strong>A Custom Directory Path MUST be specified.</strong></p>
				<?php 
					} 
				?>
				<p>For example: </p>
				<ol>
					<li>If you selected <strong>WordPress Root Directory</strong> above and in this field you type <strong>/include_files/example</strong> then the full path will be:<br /><strong><?php echo str_replace('\\','/',ABSPATH); ?>include_files/example</strong></li>
					<li>If you selected <strong>Site Root Directory</strong> above and in this field you type <strong>/include_files/example</strong> then the full path will be:<br /><strong><?php echo str_replace('\\','/',$_SERVER['DOCUMENT_ROOT']); ?>/include_files/example</strong></li>
					<li>If you selected <strong>Theme Root Directory</strong> above and in this field you type <strong>/include_files/example</strong> then the full path will be:<br /><strong><?php echo str_replace('\\','/',TEMPLATEPATH); ?>/include_files/example</strong></li>
					<li>If you selected <strong>Custom</strong> above, then in this field you <strong>need to define</strong> the complete full custom path. For example:<br /><strong>/home/your_site/public_html/include_files/example</strong></li>
				</ol>
				<br/>
				<p>Note: Read also the <a href="admin.php?page=wpinc_options_help.php" title="WP Include File Help">Help page</a> or visit the <a href="http://www.amberpanther.com/contributions/wp-include-file/" title="WP Include File Home">plugin's home</a> for more information.</p>
<br/>

				

				</div><!-- end inside-->
			</div><!-- end main-box-1-->
			
			<div id="wpinc-box-4" class="postbox ">
				<div class="handlediv" title="Click to toggle"><br /></div>
				<h3 class="hndle"><span>The Current Path</span></h3>
				<div class="inside">
				
				<p>Current Path is:</p>
				<p><strong><?php echo trailingslashit(ap_wpinc_get_path($options)); ?></strong></p>

				</div><!-- end inside-->
			</div><!-- end main-box-1-->
			
			<div id="wpinc-box-3" class="postbox ">
				<div class="handlediv" title="Click to toggle"><br /></div>
				<h3 class="hndle"><span>Debug Mode</span></h3>
				<div class="inside">
				
				<p><label><input type="checkbox" name="<?php echo $optionname;?>[debug]" id="debug" value="1" <?php if ($options['debug'] == true ){echo '"checked="checked"';}?> /> Enable Debug Mode</label></p>

				

				</div><!-- end inside-->
			</div><!-- end main-box-1-->


			

			
			


			
			

	
		</div><!-- end normal-sortables -->
		
		<!--<div id="advanced-sortables" class="meta-box-sortables ui-sortable"> </div>-->
	</div><!-- end post-body-content -->
	
	
</div><!-- end poststuff -->

<?php //add securities
	settings_fields($ap_wpincC->ap_get_option('settings'));
	$ap_wpincC->ap_input_whichpage($optionpage_codename);
	$ap_wpincC->ap_savebutton_options();
?>
</form>

<?php //add footer
	$ap_wpincC->ap_footer_options()
?>

</div><!--end wrap-->

<?php
}

if (!function_exists('ap_image_exists')){
	function ap_image_exists($url=''){
		$exists = false;
		$handle = @fopen($url,'r');
		if ( $handle ){
			$exists = true;
			@fclose($handle);
		}
		return $exists;
	}
}

?>