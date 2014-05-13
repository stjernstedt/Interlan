<?php
	// $conn = mysql_connect("localhost", "root", "1q2w3e4r") or die("cannot connect");
	// $conn = new mysqli("localhost", "root", "1q2w3e4r", "test") or die("cannot connect");
	$conn = new mysqli("localhost", "root", "", "interlan") or die("cannot connect");
	$conn->query("SET NAMES utf8");
	ini_set('max_execution_time', 0);

	$regex1 = "/[.a-z-]+\s[A-Z-]+/";
	$date = date("Y-m-d", strtotime("-1 day", strtotime(date("Y-m-d"))));

	$scandir = "d:/development/interlan/testsida/result/";
	// $scandir = "/usr/local/var/";
	$dirs = ["sverige", "norge", "finland", "danmark"];

	foreach ($dirs as $loadedDir) {
		$files = scandir($scandir . $loadedDir . "/kommun/result/dnscheck/");
		$files = array_diff($files, array('.', '..'));

		foreach ($files as $loadedFile) {
			$file = file($scandir . $loadedDir . "/kommun/result/dnscheck/" . $loadedFile);

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
