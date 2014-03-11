<?php
##############
#back end Page
#############
#initialization
//build menus
if (is_admin()){ 
	add_action('admin_menu', 'ap_wpinc_admin_backend');
}
//create top level menu
function ap_wpinc_admin_backend(){
	global $ap_wpincC;
	$ap_menu_title = 'Backend';
	$ap_page_title = $ap_wpincC->pluginname.' Backend';
	add_submenu_page('ap-wpinc-general-options', $ap_page_title, $ap_menu_title, 'administrator', 'ap-wpinc-backend-options', 'ap_wpinc_generate_backend');
}


//generate the options page
function ap_wpinc_generate_backend(){	
	global $ap_wpincC;
	$optionpage_name = 'Backend';
	$optionpage_codename = 'backend';
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
	
	<!-- main contenet here -->
	<script type="text/javascript">
	jQuery(document).ready(function($){
		$("#un_clean").change(function(){
			if ($("#un_clean-warning").css("display") == "none"){
				$("#un_clean-warning").css("display","block");
				return;
			}
			if ($("#un_clean-warning").css("display") == "block"){
				$("#un_clean-warning").css("display","none");
				return;
			}
		});
	});
	</script>
	
	<div id="post-body-content">
		<div id="normal-sortables" class="meta-box-sortables ui-sortable">
		
			<form method="post" action="options.php">
		
			<?php if ( $ap_ambusyC->premium ) { ?>
			
			<div id="miscellaneous-backend-box" class="postbox ">
				<div class="handlediv" title="Click to toggle"><br /></div>
				<h3 class="hndle"><span>Miscellaneous</span></h3>
				<div class="inside">
					<p><label><input type="checkbox" name="<?php echo $optionname;?>[backend][rss_onside]" id="rss_onside" value="1" <?php if ($options['backend']['rss_onside']){echo "checked = checked";}?> /> Hide AmberPanther News widget in <?php echo $thename;?> options sidebar (not shown on front side pages) </label></p>
					<p><label><input type="checkbox" name="<?php echo $optionname;?>[backend][rss_ondash]" id="rss_ondash" value="1" <?php if ($options['backend']['rss_ondash']){echo "checked = checked";}?> /> Hide AmberPanther News widget on WordPress Dashboard </label></p>
					<p><label><input type="checkbox" name="<?php echo $optionname;?>[backend][banner_onside]" id="banner_onside" value="1" <?php if ($options['backend']['banner_onside']){echo "checked = checked";}?> /> Hide AmberPanther Ad banner in <?php echo $thename;?> options sidebar (not shown on front side pages) </label></p>
				</div><!-- end inside-->
			</div><!-- end main-box-1-->
			
			<?php } ?>
			
			
			<div id="uninstall-box" class="postbox ">
				<div class="handlediv" title="Click to toggle"><br /></div>
				<h3 class="hndle"><span>Deactivate / Uninstall</span></h3>
				<div class="inside">
					<p><label><input type="checkbox" name="<?php echo $optionname;?>[clean_deact]" id="clean_deact" value="1" <?php if ($options['clean_deact']){echo "checked = checked";}?> /> Delete <?php echo $thename;?> options from database on plugin deactivation</label> | <strong>Warning: All your customization will be lost! You will have to customize it again.</strong></p>
					<p><label><input type="checkbox" name="<?php echo $optionname;?>[clean_uninst]" id="clean_uninst" value="1" <?php if ($options['clean_uninst']){echo "checked = checked";}?> /> Delete <?php echo $thename;?> options from database on plugin deletion</label> | <strong>Warning: All your customization will not be available when you reinstall the plugin!</strong></p>
					<div id="clean_uninst-warning" style="color:#900;display:none">
						Make sure you are certain you want to do this. All customization settings will be gone!
					</div>
				</div><!-- end inside-->
			</div><!-- end main-box-1-->
			
			<?php //add securities
			settings_fields($ap_wpincC->ap_get_option('settings'));
			$ap_wpincC->ap_input_whichpage($optionpage_codename);
			$ap_wpincC->ap_savebutton_options();
			?>
			</form>
			<br />
			<br />
			
			<?php //add footer
				$ap_wpincC->ap_resetoptions_box();
			?>



	
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