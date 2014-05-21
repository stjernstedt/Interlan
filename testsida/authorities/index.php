<?php

	// $today = date("Y-m-d");
	$today = "2014-05-20";
	
	$okDomCount = 0;
	$notOkDomCount = 0;

	
	// loadData($today);
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
		// $linkStart = "<a href=\"javascript:void(null)\" onclick=\"var w = window.open('','_blank','width=800,height=240,scrollbar=yes,toolbar=no'); w.document.write('<pre>" . $errOutput . "</pre>');\"";
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
?>

<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	    <link type="text/css" href="css/pepper-grinder/jquery-ui-1.8.17.custom.css" rel="stylesheet" />
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.17.custom.min.js"></script>
		<script type="text/javascript" src="index.js.php"></script>
		<title>Authorities with DNSSEC</title>
	</head>
	<body>
		<div class="mainContainer">
			<h1>Authorities with DNSSEC</h1>
			<div class="subContainer">
				<p><b>myndighetermeddnssec.se</b> is an independent website that show the authorities domains health and if it's signed with <b><a href=http://en.wikipedia.org/wiki/DNSSEC>DNSSEC</a> </b>or not.<br>
<?php //stats(); ?>
				<br><i>Contact: tobbe (a] <a href=http://www.interlan.se>interlan</a> punkt se</i><br>
<script type="text/javascript" language="javascript">
function showBigger(o, bShow){
   if(bShow){
        document.getElementById("dBigger").style.backgroundImage="url('"+o.src+"')";
        document.getElementById("dBigger").style.display = 'block';
   }
   else{
        document.getElementById("dBigger").style.display = 'none';
   }
}
</script>
<table border="0" cellpadding="2" cellspacing="0">
        <tr>
                <td><img src="dnssec.png" width="200" onmouseover="showBigger(this, true)" onmouseout="showBigger(this, false)"/></td>
        </tr>
</table>
<div id="dBigger">&nbsp;</div>



			</div>

			<h2>Domains</h2>
			<div>

				<table id="legend" cellspacing="3" cellpadding="2" style="margin-bottom:7px;border:1px solid black;font: 11px verdana">
					<tr><td style="background-color:#A0FFA0;width:145px;height:20px"><img src="tick.png"/>&nbsp;domain</td><td>Signed with DNSSEC and without remarks</td></tr>
					<tr><td style="background-color:#FFFFFF;height:20px">domain</td><td>Without remarks in DNSCheck but not signed</td></tr>
					<tr><td style="background-color:#FFA500;height:20px"><img src="tick.png"/>&nbsp;domain</td><td>Signed with DNSSEC but with warnings</td></tr>
					<tr><td style="background-color:#FFA500;height:20px">domain</td><td>Warnings in DNSCheck</td></tr>
					<tr><td style="background-color:#FF0000;height:20px">domain</td><td>Error in DNSCheck</td></tr>

				</table>
			<div style="margin: auto;" id="datepicker"></div>

			</div>
			<div class="subContainer">
				<div id="domains">
				<i>Updated <?php echo date("Y-m-d"); ?></i><br/>
				<?php

					isset($_POST['date']) ? $date = $_POST['date'] : $date = $today;
					loadData($date);
					echo $okDomCount . " of " . ($okDomCount + $notOkDomCount) . " domains secured<br/>\n\n";

					echo "<div id='securedDomains'>";
					echo "<h3>Secured</h3>" . $GLOBALS['secureDomains'] . "</div>";
					echo "<div id='unsecuredDomains'>";
					echo "<h3>Unsecured</h3>" . $GLOBALS['unsecureDomains'] . "</div>";
				?>
				</div>
				<div style="clear:both">&nbsp;</div>
			</div>
			<div style="clear:both">&nbsp;</div>
		</div>

		<div id="hoverDiv">&nbsp;</div>

	</body>
</html>

