<?php
	$conn = mysql_connect("localhost", "root");
	mysql_select_db("interlan");
	
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
	
	// $files = scandir("D:/Development/Interlan/resultat");
	$file = file("D:/Development/Interlan/resultat/20140305.txt");
	
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
		
		$query = "INSERT INTO status (sDomain, sDnssec, sRecursive, sErrors, sWarnings, sMail, sDns) VALUES ('$domain', '$dnssec', '$rec', '$errors', '$warnings', '$mail', '$dnsarr')";
		mysql_query($query) or die(mysql_error());

	}
	// foreach ($files as $loadedFile) {
		// $file = file($files . "/" . $loadedFile);
		// foreach ($file as $line) {
			// $data = str_getcsv($line, ",");

			// $domain = $data[0];
			// if ($data[1] != null) $dnssec = $data[1];
			// if ($data[2] != null) $rec = $data[2];
			// if ($data[3] != null) $errors = $data[3];
			// if ($data[4] != null) $warnings = $data[4];
			// if ($data[5] != null) $mail = $data[5];
			// if ($data[1] != null) $dnssec = $data[1];

		// }
	// }
	
	mysql_close($conn);
?>