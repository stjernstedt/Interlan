<?php
	header('Content-Type: application/json');
	$conn = mysql_connect("localhost", "root");
	mysql_select_db("interlan");
	mysql_query("SET NAMES utf8");
	
	$jsonData = array();

	// $query = "SELECT sDomain, sDnssec, sRecursive, sMail, sDns FROM status";
	$query = "SELECT sDomain, sDnssec, sRecursive, sMail, sDns FROM status " .
	"INNER JOIN municipalities ON sDomain = mDomain " .
	"INNER JOIN ipv6 ON sDomain = iDomain";
	$statusResult = mysql_query($query) or die(mysql_error());

	$date = "2014-01-01";
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
		// $query = "SELECT mId, mCode, mName FROM municipalities WHERE mDomain LIKE '$line[sDomain]'";
		// $result = mysql_fetch_array(mysql_query($query));
		
		// $query = "SELECT iTruedns6, iTruemx6, iTruewww6 FROM ipv6 WHERE iDomain LIKE '$line[sDomain]' AND iInsDate LIKE '$date%'";
		// $ipv6Result = mysql_fetch_array(mysql_query($query));
		
		$warn = array();
		if(isset($warnings[$result['mId']])) {
			foreach ($warnings[$result['mId']] as $post) {
				$tmp = array("description" => $post);
				array_push($warn, $tmp);
			}
		}

		$err = array();
		if(isset($errors[$result['mId']])) {
			foreach ($errors[$result['mId']] as $post) {
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
	// echo '<pre>';
	// print_r($json);
	// echo '</pre>';
	
	echo $json;
	
	mysql_close($conn);
?>