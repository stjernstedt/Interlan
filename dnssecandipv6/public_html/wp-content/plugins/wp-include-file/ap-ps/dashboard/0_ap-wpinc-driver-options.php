<?php
/*
utilize class
*/
	
function ap_wpinc_sanitize($options){
	global $ap_wpincC;
	if (isset($_POST['ap_whichpage'])){
	
	
		//RESET
		if ('reset' == $_POST['ap_whichpage']){
			$options = ap_wpinc_defaults();
			return $options;
		}
		
		//General settings
		if ('general' == $_POST['ap_whichpage']){
		
			$a_which = array("1", "2","3","4");
			if(!in_array($options['whichpath'],$a_which)) $options['whichpath']= "1";
			
			
			$options['path_ext']=$options['path_ext'];
		
			if($options['debug'] == "1" ) {$options['debug']= true;}else{$options['debug']= false;}
		}
		
		//Backend
		if ('backend' == $_POST['ap_whichpage']){
			if (!$options['backend']){
				$options['backend'] = false;
			}else{
			if ($options['backend']['rss_onside'] == "1"){$options['backend']['rss_onside'] =true;}else{$options['backend']['rss_onside']=false;}
			if ($options['backend']['rss_ondash'] == "1"){$options['backend']['rss_ondash'] =true;}else{$options['backend']['rss_ondash']=false;}
			if ($options['backend']['banner_onside'] == "1"){$options['backend']['banner_onside'] =true;}else{$options['backend']['banner_onside']=false;}
			if ($options['backend']['phpinfo'] == "1"){$options['backend']['phpinfo'] =true;}else{$options['backend']['phpinfo']=false;}
			
			if ($options['clean_deact'] == "1" ){$options['clean_deact']=true;}else{$options['clean_deact']=false;}
			if ($options['clean_uninst'] == "1" ){$options['clean_uninst']=true;}else{$options['clean_uninst']=false;}
			}
		}//backend
			
	} //isset $_POST
	

	
	//came so far... let's see what the options in the db have to say 
	//1. pull out options from database and merge them
	$dbopt = $ap_wpincC->ap_get_option('array');
	if (!$dbopt) $dbopt = array();
	$newopt = $ap_wpincC->ap_array_merge_recursive_distinct($dbopt,$options);
	$dbopt = array();
	foreach ($newopt as $key => $value){
		if ($value){
			if (is_array($value)){ // handle if array
				foreach ($value as $subkey => $subvalue){
					if ($subvalue){
						$dbopt[$key][$subkey] = $subvalue;
					}
				}
			}else{ //not an array
				$dbopt[$key] = $value;
			}
		}
	}
	
	return $dbopt;
	
}

?>