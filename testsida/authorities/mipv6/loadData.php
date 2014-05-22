<?php
	// $conn = new mysqli("localhost", "root", "1q2w3e4r", "test") or die("cannot connect");
	$conn = new mysqli("localhost", "root", "", "interlan") or die("cannot connect");
	$conn->query("SET NAMES utf8");

	$today = date("Y-m-d");
	// $today = "2014-05-20";
	isset($_GET['date']) ? $date = $_GET['date'] : $date = $today;

	$query = "SELECT aiDomain, aiDns6, aiErrdns6, aiMx6, aiErrmx6, aiWww6, aiErrwww6 FROM authIpv6 ".
	"WHERE aiInsDate LIKE '$date%'";
	$ipResults = $conn->query($query);
	
	$query = "SELECT COUNT(aId) FROM authorities";
	$countResult = $conn->query($query);
	
	$authCount = mysqli_fetch_row($countResult)[0];
	
	$www = "";
	$mx = "";
	$dns = "";
	$allOk = "";
	
	$wwwCount = 0;
	$mxCount = 0;
	$dnsCount = 0;
	$okCount = 0;

	while($line = mysqli_fetch_array($ipResults, MYSQLI_ASSOC)) {
		$count = 0;
		if($line['aiDns6'] == 1) {
			$dnsCount++;
			if($line['aiErrdns6'] == 0) {
					$dns = $dns . '<div class="dom"><a href="http://www.'. $line['aiDomain'] .'">'. $line['aiDomain'] .'</a></div>';
					$count++;
				}
			else
				$dns = $dns . '<div class="errDom">'. $line['aiDomain'] .'</div>';
		}
		if($line['aiMx6'] == 1) {
			$mxCount++;
			if($line['aiErrmx6'] == 0) {
					$mx = $mx . '<div class="dom"><a href="http://www.'. $line['aiDomain'] .'">'. $line['aiDomain'] .'</a></div>';
					$count++;
				}
			else
				$mx = $mx . '<div class="errDom">'. $line['aiDomain'] .'</div>';
		}
		if($line['aiWww6'] == 1) {
			$wwwCount++;
			if($line['aiErrwww6'] == 0) {
					$www = $www . '<div class="dom"><a href="http://www.'. $line['aiDomain'] .'">'. $line['aiDomain'] .'</a></div>';
					$count++;
				}
			else
				$www = $www . '<div class="errDom">'. $line['aiDomain'] .'</div>';
		}
		if($count == 3) {
			$allOk = $allOk . '<div class="okDom"><a href="http://www.'. $line['aiDomain'] .'">'. $line['aiDomain'] .'</a></div>';
			$okCount++;
		}
	}

	$data = '<h2>Authorities with working AAAA in web, dns and mail</h2>'.
	'<div class="subContainer">'.
	'	<b>'. $okCount .' of '. $authCount .' domains<br></b>'.
	'	'. $allOk .
	'</div>'.	
	'<h2>Authorities with AAAA in its www and domain name</h2>'.
	'<div class="subContainer">'.
	'	<b>'. $wwwCount .' of '. $authCount .' domains<br></b>'.
	'	'. $www .
	'</div>'.
	'<h2>Authorities with AAAA in its MX record</h2>'.
	'<div class="subContainer">'.
	'	<b>'. $mxCount .' of '. $authCount .' domains<br></b>'.
	'	'. $mx .
	'</div>'.
	'<h2>Authorities with AAAA on some of their DNS servers</h2>'.
	'<div class="subContainer">'.
	'	<b>'. $dnsCount .' of '. $authCount .' domains<br></b>'.
	'	'. $dns .
	'</div>';

	echo $data;
	$conn->close();
?>