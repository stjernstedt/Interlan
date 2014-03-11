<!-- $Id$ -->

<?php
	
	$translationIndex = array(
		"A service from .SE",
		"Test your DNS-server and find errors",
		"Enter your domain name in the field below to test the DNS-servers that are used.",
		"Test now",
		"Basic results",
		"Advanced results",
		"Test history",
		"Error loading history",
		"No test history exist",
		"Page",
		".SE (The Internet Infrastructure Foundation)",
		"Domain doesn't exist",
		"The domain you entered doesn't seem to be registered",
		"Loading",
		"Waiting for the test results to be loaded",
		"All tests are ok",
		"Warnings found in test",
		"Errors found in test",
		"About DNSCheck",
		"DNSCheck info",
		"About DNS",
		"DNS info",
		"Explanation",
		"Test was ok",
		"Test contains warnings",
		"Test contains errors",
		"Test was not performed"
	);
	
	$translationMap = array(
		"en" => array(
			"A service from .SE",
			"Test your DNS-server and find errors",
			"Enter your domain name in the field below to test the DNS-servers that are used. Example: iis.se",
			"Test now",
			"Basic results",
			"Advanced results",
			"Test history",
			"Error loading history",
			"No test history exist",
			"Page",
			".SE (The Internet Infrastructure Foundation)",
			"Domain doesn't exist",
			"The domain you provided doesn't seem to be registered or was entered incorrectly. You need to enter only the domain name, like &quot;nic.se&quot;, not the name of a subdomain, like &quot;dev.nic.se&quot; or a webserver like &quot;www.nic.se&quot;.",
			"Loading",
			"Waiting for the test results to be loaded",
			"All tests are ok",
			"Warnings found in test",
			"Errors found in test",
			"About DNSCheck",
			"<img src='_img/img_trafficlight.png' alt='Trafficlight' class='right' /><p>DNSCheck is a program that was designed to help people check, measure and hopefully also understand the workings of the Domain Name System, DNS. When a domain is submitted to DNSCheck it will investigate the domain's general health by traversing the DNS from root (.) to the TLD (Top Level Domain) to eventually the nameserver(s) that holds the information about the specified zone. Some other sanity checks, for example measuring host connectivety and validity of IP-addresses, will also be performed.</p>",
			"About the domain name system, DNS",
			"<p>The domain name system (DNS in short) is what could be called the &#8220;phone book&#8221; of the Internet. It keeps track of the mapping of, for example, a human-readable website name (like www.iis.se) to the slightly more arcane form of an IP-address that the computer needs to initiate communication (in this case 212.247.7.229). </p><p>Besides browsing the Internet with your web browser using website names instead of IP-addresses the DNS also makes sure your emails find their way. In short, a stable DNS is vital for most companies to maintain a working and efficient operation.</p>",
			"Explanation",
			"Test was ok",
			"Test contains warnings",
			"Test contains errors",
			"Test was not performed"
		),
		"se" => array(
			"En tj&auml;nst fr&aring;n .se",
			"Testa din DNS-server och uppt&auml;ck fel",
			"Ange ditt dom&auml;nnamn nedan s&aring; kommer vi att testa DNS-Servrarna som &auml;r kopplade till det.",
			"Testa nu",
			"F&ouml;renklat resultat",
			"Avancerat resultat",
			"Tidigare tester",
			"Historiken kunde ej laddas",
			"Ingen historik finns",
			"Sida",
			".SE (Stiftelsen f&ouml;r Internetinfrastruktur)",
			"Dom&auml;nen finns inte",
			"Dom&auml;nen du angav verkar inte vara registrerad",
			"Laddar",
			"V&auml;ntar p&aring; test resultat",
			"Alla test &auml;r ok",
			"Testet inneh&ouml;ll varningar",
			"Testet inneh&ouml;ll fel",
			"Om DNSCheck",
			"<p>DNSCheck info</p>",
			"Om domain name system, DNS",
			"<p>DNS info</p>",
			"F&ouml;rklaring",
			"Testet var ok",
			"Testet inneh&ouml;ll varningar",
			"Testet inneh&ouml;ll fel",
			"Testet utf&ouml;rdes inte"
		)
	);
	
	
	function translate($translateString)
	{
		global $languageId;
		global $translationMap;
		global $translationIndex;
		
		if (!isset($translationMap[$languageId]))
		{
			return $translateString;
		}
		
		$index = array_search($translateString, $translationIndex);
		if (false === $index)
		{
			return $translateString;
		}
		
		if ((!isset($translationMap[$languageId][$index])) || (is_null($translationMap[$languageId][$index])))
		{
			return $translateString;
		}
		
		return $translationMap[$languageId][$index];
	}
?>
