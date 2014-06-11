<?php
	$conn = new mysqli("localhost", "root", "", "interlan") or die("cannot connect");
	$conn->query("SET NAMES utf8");
	ini_set('max_execution_time', 0);


	$regex1 = "/[.a-z-]+\s[A-Z-]+/";
	//$scandir = "history/";
	$scandir = "d:/development/interlan/testsida/history/sverige/dnscheck/";
	// $scandir = "/usr/local/var/kommun/dns/";

	$dirs = scandir($scandir);
	$dirs = array_diff($dirs, array('.', '..'));

	foreach ($dirs as $loadedDir) {
		$files = scandir($scandir . $loadedDir . "/");
		$files = array_diff($files, array('.', '..'));

		$year = substr($loadedDir, 0, 4);
		$month = substr($loadedDir, 4, 2);
		$day = substr($loadedDir, 6, 2);
		$strDate = $day . "-" . $month . "-" . $year;
		$date = date("Y-m-d", strtotime($strDate));

		foreach ($files as $loadedFile) {
			$file = file($scandir . $loadedDir . "/" . $loadedFile);

			foreach ($file as $line) {
				if(preg_match($regex1, $line, $matches)) {
					$str1 = explode(" ", $matches[0]);
					$str2 = preg_split($regex1, $line, 2);
					$domain = trim($str1[0]);
					$type = trim($str1[1]);
					$data = mysqli_real_escape_string($conn, trim($str2[1]));

					$query = "INSERT INTO logs (lMunicipalityId, lType, lData, lInsDate) " .
					"SELECT mId, '$type', '$data', '$date' FROM municipalities WHERE mDomain = '$domain'";
					$conn->query($query) or die(mysqli_error($conn));
				}
			}
		}
	}
	$conn->close();
?>
