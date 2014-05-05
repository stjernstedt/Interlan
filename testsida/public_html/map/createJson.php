<?php
	header('Content-Type: application/json');
	$conn = mysql_connect("localhost", "root");
	mysql_select_db("interlan");
	mysql_query("SET NAMES utf8");
	
	$jsonData = array();

	// $date = "2014-01-01";
	$date = $_GET['date'];

	$query = "SELECT sDomain, sDnssec, sRecursive, sMail, sDns, iTruedns6, iTruemx6, iTruewww6, mId, mCode, mName FROM status " .
	"LEFT JOIN municipalities ON sDomain = mDomain " .
	"LEFT JOIN ipv6 ON sDomain = iDomain AND iInsDate LIKE '$date%' " .
	"WHERE sInsDate LIKE '2014-01-01%'";
	
	$statusResult = mysql_query($query) or die(mysql_error());

	$query = "SELECT lData, lMunicipalityId FROM logs WHERE lType LIKE 'WARNING' AND lInsDate LIKE '$date%'";
	$warningsResult = mysql_query($query) or die(mysql_error());
	$warnings = array();
	while($line = mysql_fetch_array($warningsResult, MYSQL_NUM)) {
		if (!isset($warnings[$line[1]])) $warnings[$line[1]] = array();
		array_push($warnings[$line[1]], $line[0]);
	}
	
	$query = "SELECT lData, lMunicipalityId FROM logs WHERE lType LIKE 'ERROR' AND lInsDate LIKE '$date%'";
	$errorsResult = mysql_query($query) or die(mysql_error());
	$errors = array();
	while($line = mysql_fetch_array($errorsResult, MYSQL_NUM)) {
		if (!isset($errors[$line[1]])) $errors[$line[1]] = array();
		array_push($errors[$line[1]], $line[0]);
	}
	
	while($line = mysql_fetch_array($statusResult, MYSQL_ASSOC)) {
		$warn = array();
		if(isset($warnings[$line['mId']])) {
			foreach ($warnings[$line['mId']] as $post) {
				$tmp = array("description" => $post);
				array_push($warn, $tmp);
			}
		}

		$err = array();
		if(isset($errors[$line['mId']])) {
			foreach ($errors[$line['mId']] as $post) {
				$tmp = array("description" => $post);
				array_push($err, $tmp);
			}
		}

		$dnsArray = unserialize($line['sDns']);
		$dns = array();
		foreach ($dnsArray as $post) {
			$tmp = array("name" => $post);
			array_push($dns, $tmp);
		}

		$data = array(
		"knnr" => $line['mCode'],
		"name" => $line['mName'],
		"url" => $line['sDomain'],
		"contact" => $line['sMail'],
		"dnsSecSigned" => $line['sDnssec'],
		"isRecursive" => $line['sRecursive'],
		"ipWww" => $line['iTruewww6'],
		"ipDns" => $line['iTruedns6'],
		"ipMail" => $line['iTruemx6'],
		"dnsList" => $dns,
		"errors" => $err,
		"warnings" => $warn,
		);
		
		array_push($jsonData, $data);
	}

	$json = json_encode(array('municipalities' => array('municipality' => $jsonData)), JSON_PRETTY_PRINT);
	
	echo $json;
	
	mysql_close($conn);
?>