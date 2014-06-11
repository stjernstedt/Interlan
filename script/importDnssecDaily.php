<?php
	$conn = new mysqli("localhost", "root", "", "interlan") or die("cannot connect");
	$conn->query("SET NAMES utf8");
	ini_set('max_execution_time', 0);
	
	function formatEmail($email){
		if($email == "") return "";
		$email = str_replace("\\.", "¤", $email);

		if( strpos($email, '@') > 0){
			$email = str_replace("@", " [at] ", $email);
		}
		else{
			$firstDot = strpos($email, '.');
			$email = substr($email, 0, $firstDot) . " [at] " . substr($email, $firstDot + 1);
		}

		return str_replace("¤", ".", $email);
		return $email;
	}

	function removeEndingDot($str){
		if( strlen($str) > 0 && $str[ strlen($str)-1 ] == '.'){
			return substr($str, 0, -1);
		}
		return $str;
	}


	$date = date("Y-m-d");
	$scandir = "/usr/local/var/";
	// $scandir = "D:/Development/Interlan/testsida/result/";

	$dirs = ["sverige", "norge", "finland", "danmark"];

	// imports municipalities
	foreach ($dirs as $loadedDir) {
		$file = file($scandir . $loadedDir . "/kommun/result/dnssec/result.txt");

		foreach ($file as $line) {
			$data = str_getcsv($line, ",");

			$dns = array();
			$domain = $data[0];
			($data[1] == "yes") ? $dnssec = true : $dnssec = false;
			($data[2] == "yes") ? $rec = true : $rec = false;
			$errors = $data[3];
			$warnings = $data[4];
			$mail = formatEmail(removeEndingDot($data[5]));
		
			for ($i = 6;$i < count($data); $i++) {
					if( trim($data[$i]) != "" ){
						array_push( $dns, removeEndingDot($data[$i]));
					}
			}
			$dnsarr = serialize($dns);
			
			$query = "INSERT INTO status (sDomain, sDnssec, sRecursive, sErrors, sWarnings, sMail, sDns, sInsDate) VALUES ('$domain', '$dnssec', '$rec', '$errors', '$warnings', '$mail', '$dnsarr', '$date')";
			$conn->query($query) or die(mysqli_error($conn));

		}
	}

	$dirs = ["sverige"];
	// imports authorities
	foreach ($dirs as $loadedDir) {
		$file = file($scandir . $loadedDir . "/myndigheter/result/dnssec/result.txt");

		foreach ($file as $line) {
			$data = str_getcsv($line, ",");

			$dns = array();
			$domain = $data[0];
			($data[1] == "yes") ? $dnssec = true : $dnssec = false;
			($data[2] == "yes") ? $rec = true : $rec = false;
			$errors = $data[3];
			$warnings = $data[4];
			$mail = formatEmail(removeEndingDot($data[5]));
		
			for ($i = 6;$i < count($data); $i++) {
					if( trim($data[$i]) != "" ){
						array_push( $dns, removeEndingDot($data[$i]));
					}
			}
			$dnsarr = serialize($dns);
			
			$query = "INSERT INTO authStatus (asDomain, asDnssec, asRecursive, asErrors, asWarnings, asMail, asDns, asInsDate) VALUES ('$domain', '$dnssec', '$rec', '$errors', '$warnings', '$mail', '$dnsarr', '$date')";
			$conn->query($query) or die(mysqli_error($conn));

		}
	}

	$conn->close();
?>