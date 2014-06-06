<?php
	// $conn = mysql_connect("localhost", "root", "1q2w3e4r") or die("cannot connect");
	// mysql_select_db("test");
	$conn = new mysqli("localhost", "root", "", "interlan") or die("cannot connect");
	$conn->query("SET NAMES utf8");
	ini_set('max_execution_time', 0);
	
	function formatEmail($email){
		if($email == "") return "";
		$email = str_replace("\\.", "¤", $email);

		if( strpos($email, '\\@') > 0){
			$email = str_replace("\\@", " [at] ", $email);
		}
		else{
			$firstDot = strpos($email, '.');
			$email = substr($email, 0, $firstDot) . " [at] " . substr($email, $firstDot + 1);
		}

		return str_replace("¤", ".", $email);
	}

	function removeEndingDot($str){
		if( strlen($str) > 0 && $str[ strlen($str)-1 ] == '.'){
			return substr($str, 0, -1);
		}
		return $str;
	}
	
	// $scandir = "/usr/local/var/kommun/resultat";
	$scandir = "d:/Development/Interlan/testsida/history/sverige/dnssec";
	$files = scandir($scandir);
	$files = array_diff($files, array('.', '..'));

	foreach ($files as $loadedFile) {
		$year = substr($loadedFile, 0, 4);
		$month = substr($loadedFile, 4, 2);
		$day = substr($loadedFile, 6, 2);
		$strDate = $day . "-" . $month . "-" . $year;
		$date = date("Y-m-d", strtotime($strDate));

		$file = file($scandir . "/" . $loadedFile);
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
	
	$conn->close();
?>