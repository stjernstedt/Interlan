<?php
	require_once "lang.php";
	
	// $today = date("Y-m-d");
	$today = "2014-05-20";
	isset($_GET['date']) ? $date = $_GET['date'] : $date = $today;

	$okDomCount = 0;
	$notOkDomCount = 0;

	
	loadData($date);
	function loadData($date) {
		// $conn = new mysqli("localhost", "root", "1q2w3e4r", "test") or die("cannot connect");
		$conn = new mysqli("localhost", "root", "", "interlan") or die("cannot connect");
		$conn->query("SET NAMES utf8");

		$GLOBALS['secureDomains'] = "";
		$GLOBALS['unsecureDomains'] = "";
		
		$query = "SELECT asDomain, asDnssec, asRecursive, asErrors, asWarnings, asMail, asDns ".
		"FROM authStatus WHERE asInsDate LIKE '$date%'";
		$statusResult = $conn->query($query);
		
		$query = "SELECT alType, alData, aDomain FROM authLogs ".
		"INNER JOIN authorities ON aId = alAuthorityId ".
		"WHERE alInsDate LIKE '$date%'";
		$logsResult = $conn->query($query);
		
		$errors = array();
		$warnings = array();
		while($line = mysqli_fetch_array($logsResult, MYSQLI_NUM)) {
			$domain = $line[2];
			if ($line[0] == 'ERROR') {
				if(isset($errors[$domain])) $errors[$domain] = $errors[$domain] . $line[1] . "<br>";
				else $errors[$domain] = $line[1] . "<br>";
			}
			if ($line[0] == 'WARNING') {
				if(isset($warnings[$domain])) $warnings[$domain] = $warnings[$domain] . $line[1] . "<br>";
				else
					$warnings[$domain] = $line[1] . "<br>";
			}
		}
		
		while($line = mysqli_fetch_array($statusResult, MYSQLI_NUM)) {
			$domain = $line[0];
			$secure = $line[1];
			$recursive = $line[2];
			$errorcount = $line[3];
			$warningcount = $line[4];
			$mail = $line[5];
			$dns = "";
			foreach (unserialize($line[6]) as $post) {
				$dns = $dns . $post . "<br>";
			}
			
			$messages = "";
			if(isset($errors[$domain]))	{
				$messages = $errors[$domain];
				if(isset($warnings[$domain])) $messages = $messages . $warnings[$domain];
			} else {
				if(isset($warnings[$domain])) $messages = $warnings[$domain];
			}
			outputSingleDomain($domain, $secure, $mail, $dns, $errorcount, $warningcount, $recursive, $messages);
		}
		$conn->close();
	}
	
	function outputSingleDomain($host, $isSecure, $email, $nsList, $errLevel, $warnLevel, $isRecursive, $errOutput){

		global $okDomCount;
		global $notOkDomCount;
		
		if($errOutput == "") $errOutput = "No warnings or errors for this domain";

		$tagStart = "<div class=\"".($isSecure? ($warnLevel>0? "warningDom" : "okdom") : ( $errLevel>0? "errorDom" : ( $warnLevel > 0? "warningDom" : "dom" ) ))."\">";
		$tagEnd = "</div>";
		$okImg = "<img src=\"tick.png\" style=\"width:16px;height:16px;border:0px\"/>&nbsp;";
		$linkStart = "<a href=\"javascript:void(null)\" onclick=\"var w = window.open('','_nInfo','width=800,height=240,scrollbar=yes,toolbar=no'); w.document.write('<pre>" . str_replace("\n", "\\n", $errOutput) . "</pre>'); w.document.close(); \"";
		$linkMid = " onmouseover=\"showHover(event, '" . $email . "<br/>" . ($isRecursive? "Rekursiv<br/>" : "") . ($errLevel>0? "Error (".$errLevel.")<br/>" : "") . ($warnLevel>0? "Warning (".$warnLevel.")<br/>" : "") . $nsList . "')\" onmouseout=\"hideHover()\" title=\"";
		$linkMidEnd = "\">";
		$linkEnd = "</a>";

		if( $isSecure ){
			$okDomCount++;
			$GLOBALS['secureDomains'] = $GLOBALS['secureDomains'] . $tagStart . $linkStart . $host . $linkMid . $linkMidEnd . ($isSecure? $okImg : "") . $host . $linkEnd . $tagEnd . "\n";
		}
		else{
			$notOkDomCount++;
			$GLOBALS['unsecureDomains'] = $GLOBALS['unsecureDomains'] . $tagStart . $linkStart . $host . $linkMid . $linkMidEnd . ($isSecure? $okImg : "") . $host . $linkEnd . $tagEnd . "\n";
		}
	}
	
	$data = $okDomCount . getTranslatedItem("OF") . ($okDomCount + $notOkDomCount) . getTranslatedItem("DOMAINS_SECURED") ."<br/>\n\n".
			"<div id='securedDomains'>".
			"<h3>". getTranslatedItem("SECURED") ."</h3>" . $GLOBALS['secureDomains'] . "</div>".
			"<div id='unsecuredDomains'>".
			"<h3 id='test'>". getTranslatedItem("UNSECURED") ."</h3>" . $GLOBALS['unsecureDomains'] . "</div>";

	echo $data;
?>
