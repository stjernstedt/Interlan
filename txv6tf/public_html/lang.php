<?php

/*
	å = &aring;
	ä = &auml;
	ö = &ouml;
	Å = &Aring;
	Ä = &Auml;
	Ö = &Ouml;
*/

	$langText = array(
		"MONTH_NAMES_LONG" => array("'Januari','Februari','Mars','April','Maj','Juni','Juli','Augusti','September','Oktober','November','December'","'January','February','March','April','May','June','July','August','September','October','November','December'"),
		"MONTH_NAMES_SHORT" => array("'Jan','Feb','Mar','Apr','Maj','Jun','Jul','Aug','Sep','Okt','Nov','Dec'", "'Jan','Feb','Mar','Apr','May','Jun','Jul','Aug','Sep','Oct','Nov','Dec'"),
		"DAY_NAMES_SHORT" => array("'S&ouml;', 'M&aring', 'Ti', 'On', 'To', 'Fr', 'L&ouml;'", "'Su', 'Mo', 'Tu', 'We', 'Th', 'Fr', 'Sa'"),
		"DOMAINS_THAT_ARE" => array("Dom&auml;ner som &auml;r","Domains that are"),
		"DOMAINS_SIGNED" => array("Signerade", "Signed"),
		"DOMAINS_WITHOUT_ERROR" => array("Utan fel <div style=\"display:inline;width:16px;height;16px,overflow:hidden;background-color:#eaea6a;border:1px solid black;\">&nbsp;&nbsp;&nbsp;</div> = Osignerade", "Without error <div style=\"display:inline;width:16px;height;16px,overflow:hidden;background-color:#eaea6a;border:1px solid black;\">&nbsp;&nbsp;&nbsp;</div> = Unsigned"),
		"DOMAINS_WITH_WARNING" => array("Med varningar", "With warning"),
		"DOMAINS_WITH_ERROR" => array("Med fel", "With error"),
		"VISIT" => array("Bes&ouml;k","Visit"),

		"DNSSEC_MESSAGE_1" => array("Utan anm&auml;rkningar i DNSCheck men osignerad","Without remarks in DNSCheck but not signed"),
		"DNSSEC_MESSAGE_2" => array("Signerad med DNSSEC och utan anm&auml;rkningar","Signed with DNSSEC and without remarks"),
		"DNSSEC_MESSAGE_3" => array("Signerad med DNSSEC men med varningar","Signed with DNSSEC but with warnings"),
		"DNSSEC_MESSAGE_4" => array("Varningar i DNSCheck", "Warnings in DNSCheck"),
		"DNSSEC_MESSAGE_5" => array("Fel i DNSCheck","Error in DNSCheck"),

		"DNS_RECURSIVE" => array("<b>DNS &auml;r:</b> Rekursiv","<b>DNS is:</b> Recursive"),
		"DNSSEC_WARNINGS" => array("Varningar", "Warnings"),
		"DNSSEC_ERRORS" => array("Fel", "Errors"),
		"DNSSEC_DNSLIST" => array("DNS-lista", "DNS Entries"),

		"IPV6_WEB" => array("WWW", "WWW"),
		"IPV6_DNS" => array("DNS", "DNS"),
		"IPV6_MX" => array("Mail", "Mail"),

		"IPV6_ALL" => array("IPv6 p&aring; WWW, DNS och Mail", "IPv6 on WWW, DNS and Mail"),

		"MAPDATA_RIGHTS" => array("", ""),

		"SITE_CONTACT" => array("Kontakt","Contact"),

		"DNSCHECK_RESULT" => array("DNSCheck mot {0}st dom&auml;ner {1} gav {2}st rekursiva DNS;er. DNSCheck fann {3}st FEL samt {4}st VARNINGAR. {5}st dom&auml;ner har enbart en DNS.", "A DNSCheck against {0} domains {1} gave a result of {2} recursive DNS&acute;s and DNSCheck also found {3} ERROR and {4} WARNINGS. {5} domains has just one DNS."),

		"DNSCHECK_LINK" => array("<a href=\"http://dnscheck.iis.se\" target=\"_blank\">dnscheck</a> kontrollerar dom&auml;nens status och vad betyder <a href=\"http://dnscheck.iis.se/?faq=1&test=standard#f7\" target=\"_blank\">fel respektive varning</a>? Klicka p&aring; respektive kommun f&ouml;r mer information.","<a href=\"http://dnscheck.iis.se\" target=\"_blank\">dnscheck</a> is is used to control the domain status and what does <a href=\"http://dnscheck.iis.se/?faq=1&test=standard#f7\" target=\"_blank\">error and warnings mean</a>? Click on the appropriate municipality for more information."),

		"IPV6_OLDSITE" => array("<a href=\"http://new.kommunermeddnssec.se/ipv6/\">Bes&ouml;k gamla sidan</a>","<a href=\"http://new.kommunermeddnssec.se/ipv6/\">Visit old site</a>"),

		"PROJECT_FINANCIEER" => array("Detta projekt &auml;r finansierat av <a href=\"http://www.interlan.se\" target=\"_blank\">Interlan</a> &amp; <a href=\"http://www.youknowwhat.se\" target=\"_blank\">YouKnowWhat AB</a>.", "This project was financed by <a href=\"http://www.interlan.se\" target=\"_blank\">Interlan</a> &amp; <a href=\"http://www.youknowwhat.se\" target=\"_blank\">YouKnowWhat AB</a>. Note: pages in swedish."),

		"SOURCE_LINK" => array("Ladda ned k&auml;llkod (ursprungsprojekt)", "Download source (initial project)")

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