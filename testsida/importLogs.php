<?php
	$conn = mysql_connect("localhost", "root", "1q2w3e4r") or die("cannot connect");
	mysql_select_db("test") or die("cannot select database");
	mysql_query("SET NAMES utf8");

	$regex1 = "/[.a-z]+\s[A-Z]+/";
	//$scandir = "history/";

	$scandir = "/usr/local/var/kommun/dns/";

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
					$data = mysql_real_escape_string(trim($str2[1]));

					$query = "SELECT mId FROM municipalities WHERE `mDomain` LIKE '$domain'";
					$results = mysql_query($query) or die(mysql_error());
					$row = mysql_fetch_array($results);
					$municipId = $row[0];
				}


				$query = "INSERT INTO logs (lMunicipalityId, lType, lData, lInsDate) VALUES ('$municipId', '$type', '$data', '$date')";
				mysql_query($query) or die(mysql_error());
			}
		}
	}
	mysql_close($conn);
?>
