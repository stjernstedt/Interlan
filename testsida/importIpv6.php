<?php
	$conn = mysql_connect("localhost", "root");
	mysql_select_db("interlan");

	$files = scandir("d:/development/interlan/testsida/20140101");
	$files = array_diff($files, array('.', '..'));

	// $year = substr($loadedDir, 0, 4);
	// $month = substr($loadedDir, 4, 2);
	// $day = substr($loadedDir, 6, 2);
	// $strDate = $day . "-" . $month . "-" . $year;
	// $date = date("Y-m-d", strtotime($strDate));
	$date = "2014-01-01";

	$dns6 = 0;
	$errdns6 = 0;
	$truedns6 = 0;
	$mx6 = 0;
	$errmx6 = 0;
	$truemx6 = 0;
	$www6 = 0;
	$errwww6 = 0;
	$truewww6 = 0;
	
	foreach ($files as $loadedFile) {
	
		
		$file = file("d:/development/interlan/testsida/20140101/" . $loadedFile);
		${$loadedFile} = 1;
		foreach ($file as $line) {
			$domain = trim($line);
			$query = "SELECT iId FROM ipv6 WHERE iDomain LIKE '$domain'";
			$result = mysql_query($query);
			$val = ${$loadedFile};
			if(mysql_fetch_array($result) == null) {
				$query = "INSERT INTO ipv6 (iDomain, i$loadedFile, iInsDate) VALUES ('$domain', '$val', '$date')";
				mysql_query($query) or die(mysql_error());
			} else {
				$query = "UPDATE ipv6 SET i$loadedFile=$val WHERE iDomain LIKE '$domain'";
				mysql_query($query) or die(mysql_error());
			}
		}
	}
	
	mysql_close($conn);
?>