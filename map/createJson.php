<?php
	header('Content-Type: application/json');
	$conn = new mysqli("localhost", "root", "", "interlan");
	
	$conn->query("SET NAMES utf8");
	
	$jsonData = array();

	// $date = "2014-01-01";
	// $code = 1;
	$date = $_GET['date'];
	$code = trim($_GET['code']);

	$query = "SELECT sDomain, sDnssec, sRecursive, sMail, sDns, iTruedns6, iTruemx6, iTruewww6, mId, mCode, mName FROM status " .
	"INNER JOIN municipalities ON sDomain = mDomain AND mCountryId = '$code' " .
	"LEFT JOIN ipv6 ON sDomain = iDomain AND iInsDate LIKE '$date%' " .
	"WHERE sInsDate LIKE '$date%'";
	
	$statusResult = $conn->query($query) or die(mysqli_error($conn));

	$query = "SELECT lData, lMunicipalityId FROM logs WHERE lInsDate LIKE '$date%' AND lType LIKE 'WARNING'";
	$warningsResult = $conn->query($query) or die(mysqli_error($conn));
	$warnings = array();
	while($line = mysqli_fetch_array($warningsResult, MYSQL_NUM)) {
		if (!isset($warnings[$line[1]])) $warnings[$line[1]] = array();
		array_push($warnings[$line[1]], $line[0]);
	}
	
	$query = "SELECT lData, lMunicipalityId FROM logs WHERE lInsDate LIKE '$date%' AND lType LIKE 'ERROR'";
	$errorsResult = $conn->query($query) or die(mysqli_error($conn));
	$errors = array();
	while($line = mysqli_fetch_array($errorsResult, MYSQLI_NUM)) {
		if (!isset($errors[$line[1]])) $errors[$line[1]] = array();
		array_push($errors[$line[1]], $line[0]);
	}
	
	while($line = mysqli_fetch_array($statusResult, MYSQLI_ASSOC)) {
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
	
	$conn->close();
?>