<?php
##############
#back end Page
#############
#initialization
//build menus
if (is_admin()){ 
	add_action('admin_menu', 'ap_wpinc_admin_help');
}
//create top level menu
function ap_wpinc_admin_help(){
	global $ap_wpincC;
	$ap_menu_title = 'Help';
	$ap_page_title = $ap_wpincC->pluginname.' Help';
	add_submenu_page('ap-wpinc-general-options', $ap_page_title, $ap_menu_title, 'administrator', 'ap-wpinc-help-options', 'ap_wpinc_generate_help');
}


//generate the options page
function ap_wpinc_generate_help(){	
	global $ap_wpincC;
	$optionpage_name = 'Help';
	$optionpage_codename = 'help';
      $optionpage_local = $ap_wpincC->pluginname.' '.$optionpage_name;
	$optionname = $ap_wpincC->ap_get_option('string');
	//retrieve current options from database
	$options = $ap_wpincC->ap_get_option('array'); 
	$thename = $ap_wpincC->pluginname;
	
?>



<div class="wrap">

<div id="icon-options-general" class="icon32"><br /></div>
<h2><?php echo ($ap_wpincC->pluginname.' '.$optionpage_name); ?></h2>

<div id="poststuff" class="metabox-holder has-right-sidebar">

	<?php // include the sidebar
		$ap_wpincC->ap_sidebar_options();
	?>
	
	
	<div id="post-body-content">
		<div id="normal-sortables" class="meta-box-sortables ui-sortable">
		
		
			<div id="help-box-1" class="postbox ">
				<div class="handlediv" title="Click to toggle"><br /></div>
				<h3 class="hndle"><span>Invoking WP Include File using the Shortcode within the tinyMCE</span></h3>
				<div class="inside">
				
					<p>WP Include File can be invoked using the Shortcode <code>[include]</code>. The Shortcode accepts four attributes: <code>file</code>, <code>path</code>, <code>masterpath</code> and <code>variables</code>. It will include the contents of the specified file at the location the Shortcode is placed within the post/page content.</p>
	<p><strong>Usage:</strong></p><br />
	<ol>
	<li>
	<code>[include file="MyCustomFile.php"]</code><br />
	This will include the contents of the file <strong>MyCustomFile.php</strong> located in the directory selected on the WP Include File Options page.<br />
	For example:<br />
	If you selected <strong>Site Root Directory</strong> on the Options page, the full path to the file to be included will be <strong><?php echo ABSPATH; ?>MyCustomFile.php</strong><br />
	If you selected <strong>Theme Root Directory</strong> on the Options page, the full path to the file to be included will be <strong><?php echo TEMPLATEPATH; ?>/MyCustomFile.php</strong><br />
	</li>
	
	<li>
	<code>[include file="/MyDirectory/demos/MyCustomFile.php"]</code><br />
	This will include the contents of the file <strong>MyCustomFile.php</strong> located in the directory <strong>/MyDirectory/demos</strong> relative to the <strong>Root</strong> directory selected on the WP Include File Options page.<br />
	For example:<br />
	If you selected <strong>Site Root Directory</strong> on the Options page, the full path to the file to be included will be <strong><?php echo ABSPATH; ?>MyDirectory/demos/MyCustomFile.php</strong><br />
	If you selected <strong>Theme Root Directory</strong> on the Options page, the full path to the file to be included will be <strong><?php echo TEMPLATEPATH; ?>/MyDirectory/demos/MyCustomFile.php</strong><br />
	</li>
	
	<li>
	<code>[include file="MyCustomFile.php" path="/MyDirectory/demos"]</code><br />
	The <code>path</code> attribute will <strong>override</strong> any path extension specified on the WP Include File Options page. This will include the contents of the file <strong>MyCustomFile.php</strong> located in the directory <strong>/MyDirectory/demos</strong> relative to the <strong>Root</strong> directory selected on the WP Include File Options page.<br />
	For example:<br />
	If you selected <strong>Site Root Directory</strong> on the Options page, the full path to the file to be included will be <strong><?php echo ABSPATH; ?>MyDirectory/demos/MyCustomFile.php</strong><br />
	If you selected <strong>Theme Root Directory</strong> on the Options page, the full path to the file to be included will be <strong><?php echo TEMPLATEPATH; ?>/MyDirectory/demos/MyCustomFile.php</strong><br />
	</li>
	
	<li>
	<code>[include file="MyCustomFile.php" masterpath="/home/SomeUser/SomeDirectory/SomeOtherDirectory/MyDirectory/demos"]</code><br />
	The <code>masterpath</code> attribute will <strong>override</strong> all the selections on the WP Include File Options page. This will include the contents of the file <strong>MyCustomFile.php</strong> located in the directory <strong>/home/SomeUser/SomeDirectory/SomeOtherDirectory/MyDirectory/demos</strong>.<br />
	For example:<br />
	The full path to the file to be included will be <strong>/home/SomeUser/SomeDirectory/SomeOtherDirectory/MyDirectory/demos/MyCustomFile.php</strong><br />
	</li>
	
	<li>
	<code>[include file="MyCustomFile.php?foo=bar&amp;buz=tiny"]</code><br />
	This will make the query string data available in the global $_GET variable.
	</li>

	<li>
	<code>[include file="MyCustomFile.php" variables="foo=bar&amp;buz=tiny"]</code><br />
	This will make the variable <code>foo</code> with the value <code>bar</code> and the variable <code>buz</code> with the value <code>tiny</code> available to the code in your included file.
	</li>


	</ol>
	<br />


				</div><!-- end inside-->
			</div><!-- end main-box-1-->
			
			
			<div id="help-box-2" class="postbox ">
				<div class="handlediv" title="Click to toggle"><br /></div>
				<h3 class="hndle"><span>FAQ</span></h3>
				<div class="inside">

				<ol>
	<li>What does WP Include File do when the file is not found?<br />
	WP Include File does not interfere with the rendering of your page if the file is not found.</li>
	
	<li>But my file is there, however, it does not seem to be included.<br />
	Enable the <strong>Debug</strong> mode under the General Options page. WP Include File will give you a message on the rendered page if the file path is not correct.</li>
	
	<li>I want to utilize the global <strong>$_GET</strong> variable (pass data to the included file in query form).<br />
	Just include the query string in the <code>file</code> attribute as you would for any url. For example: <code>[include file="myFile.php?foo=bar&amp;buz=tiny"]</code> .</li>
	
	<li>I want to pass some individual variables to my included file.<br />
	Just include the variables and their corresponding values in a string format in the <code>variables</code> attribute. For example: <code>[include file="myFile.php" variables="foo=bar&amp;buz=tiny"]</code> . The variable <code>foo</code> with the value <code>bar</code> and the variable <code>buz</code> with the value <code>tiny</code> will be available to the code in your included file.</li>

		</ol>
	<br />
	The AmberPanther team adds to the FAQ list as questions arise. For the most recent and up to date list visit <a href="http://www.amberpanther.com/contributions/wp-include-file/" title="WP Include File Home">WP Include File's home</a>.

				</div><!-- end inside-->
			</div><!-- end main-box-1-->

			
			<div id="help-box-3" class="postbox ">
				<div class="handlediv" title="Click to toggle"><br /></div>
				<h3 class="hndle"><span> Feedback - Exchange of ideas leads to excellence!</span></h3>
				<div class="inside">

	<p>If you discover any bugs...</p>
	<p>if you have any suggestions for improvements...</p>
	<p>if you have any requests...</p>
	<p>or you just like WP Include File and want to say so...</p>
	<p>visit the plugin's home and leave us a comment:	<a href="http://www.amberpanther.com/contributions/wp-include-file/" title="WP Include File Home">WP Include File home</a></p>



				</div><!-- end inside-->
			</div><!-- end main-box-1-->

			
			
			<br />
			<br />
			



	
		</div><!-- end normal-sortables -->
		
	</div><!-- end post-body-content -->
	
	
</div><!-- end poststuff -->


<?php //add footer
	$ap_wpincC->ap_footer_options();
?>

</div><!--end wrap-->

<?php
}

?>