<?php

	$langText = array(
		"MONTH_NAMES_LONG" => array("'Januari','Februari','Mars','April','Maj','Juni','Juli','Augusti','September','Oktober','November','December'","'January','February','March','April','May','June','July','August','September','October','November','December'"),
		"MONTH_NAMES_SHORT" => array("'Jan','Feb','Mar','Apr','Maj','Jun','Jul','Aug','Sep','Okt','Nov','Dec'", "'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'"),
		"DAY_NAMES_SHORT" => array("'S&ouml;', 'M&aring', 'Ti', 'On', 'To', 'Fr', 'L&ouml;'", "'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'"),

		"TITLE" => array("Myndigheter med DNSSEC", "Authorities with DNSSEC"),
		"SITE_DESCRIPTION" => array("<b>myndighetermeddnssec.se</b> är en oberoende hemsida som visar myndigheters domäners hälsa och om dom är signerade med <b><a href=http://en.wikipedia.org/wiki/DNSSEC>DNSSEC</a> </b>eller inte.", "<b>myndighetermeddnssec.se</b> is an independent website that show the authorities domains health and if it's signed with <b><a href=http://en.wikipedia.org/wiki/DNSSEC>DNSSEC</a> </b>or not."),
		"DOMAIN" => array("Domän", "Domain"),
		"DOMAINS" => array("Domäner", "Domains"),
		"SIGNED_WITHOUT_REMARKS" => array("Signerade med DNSSEC och utan anmärkningar", "Signed with DNSSEC and without remarks"),
		"WITHOUT_REMARKS_UNSIGNED" => array("Utan anmärkningar i DNSCheck men inte signerad", "Without remarks in DNSCheck but not signed"),
		"SIGNED_WITH_WARNINGS" => array("Signerad med DNSSEC men med varningar", "Signed with DNSSEC but with warnings"),
		"WARNINGS" => array("Varningar i DNSCheck", "Warnings in DNSCheck"),
		"ERRORS" => array("Errors i DNSCheck", "Error in DNSCheck"),
		"OF" => array(" av ", " of "),
		"DOMAINS_SECURED" => array(" domäner säkrade", " domains secured"),
		"SECURED" => array("Säkrade", "Secured"),
		"UNSECURED" => array("Osäkrade", "Unsecured")

	);


	function getTranslatedItem($strKey){
		global $langText;

		$lang = substr($_SERVER['HTTP_ACCEPT_LANGUAGE'], 0, 2);

		$arrIndex = 0;
		switch($lang){
			case 'sv' : $arrIndex=0; break;
			case 'en' : $arrIndex=1; break;
			default : $arrIndex=1; break;
		}


		if( isset($langText[$strKey]) ){
			if( isset($langText[$strKey][$arrIndex]) ){
				return $langText[$strKey][$arrIndex];
			}
		}

		return "[MISSING: " . $strKey .  ":" . $arrIndex . "]";
	}

?>