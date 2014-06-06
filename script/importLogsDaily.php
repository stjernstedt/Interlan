<?php
	$conn = new mysqli("localhost", "root", "1q2w3e4r", "test") or die("cannot connect");
	// $conn = new mysqli("localhost", "root", "", "interlan") or die("cannot connect");
	$conn->query("SET NAMES utf8");
	ini_set('max_execution_time', 0);

	$regex1 = "/[.a-z0-9-]+\s[A-Z0-9-]+/";
	$date = date("Y-m-d");

	// $scandir = "d:/development/interlan/testsida/result/";
	$scandir = "/usr/local/var/";
	$dirs = ["sverige", "norge", "finland", "danmark"];

	// imports municipalities
	foreach ($dirs as $loadedDir) {
		$files = scandir($scandir . $loadedDir . "/kommun/result/dnscheck/");
		$files = array_diff($files, array('.', '..'));

		foreach ($files as $loadedFile) {
			$file = file($scandir . $loadedDir . "/kommun/result/dnscheck/" . $loadedFile);

			foreach ($file as $line) {
				$line = substr(strstr($line, " "), 1);
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
	
	$dirs = ["sverige"];
	// imports authorities
	foreach ($dirs as $loadedDir) {
		$files = scandir($scandir . $loadedDir . "/myndigheter/result/dnscheck/");
		$files = array_diff($files, array('.', '..'));

		foreach ($files as $loadedFile) {
			$file = file($scandir . $loadedDir . "/myndigheter/result/dnscheck/" . $loadedFile);

			foreach ($file as $line) {
				$line = substr(strstr($line, " "), 1);
				if(preg_match($regex1, $line, $matches)) {
					$str1 = explode(" ", $matches[0]);
					$str2 = preg_split($regex1, $line, 2);
					$domain = trim($str1[0]);
					$type = trim($str1[1]);
					$data = mysqli_real_escape_string($conn, trim($str2[1]));

					$query = "INSERT INTO authLogs (alAuthorityId, alType, alData, alInsDate) " .
					"SELECT aId, '$type', '$data', '$date' FROM authorities WHERE aDomain = '$domain'";
					$conn->query($query) or die(mysqli_error($conn));
				}
			}
		}
	}

	$conn->close();
?>
