<?php
	$conn = mysql_connect("localhost", "root", "1q2w3e4r") or die("cannot connect");
	mysql_select_db("test") or die("cannot select database");
	mysql_query("SET NAMES utf8");

	$scandir = "/usr/local/var/kommun/ipv6/";
	// $scandir = "C:/Users/Matte/Desktop/temp/interlan/special/public_html/kipv6/script/history/";

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

		$dns6 = array();
		$errdns6 = array();
		$truedns6 = array();
		$mx6 = array();
		$errmx6 = array();
		$truemx6 = array();
		$www6 = array();
		$errwww6 = array();
		$truewww6 = array();
		
		$columns = array("dns6","errdns6","truedns6","mx6","errmx6","truemx6","www6","errwww6","truewww6");
		$lol = array("test", "test2");
		
		foreach ($files as $loadedFile) {
			$file = file($scandir . $loadedDir . "/" . $loadedFile);
			
			$domain = array();
			foreach ($file as $line) {
				$domain = trim($line);
				${$loadedFile}[$domain] = 1;
			}
		}

		$domains = array();
		foreach ($columns as $column) {
			foreach (${$column} as $dom => $val) {
				$varName = str_replace(".", "_", $dom);
				if (!isset(${$varName})) {
					${$varName} = array($column => $val);
				} else {
					${$varName}[$column] = $val;
				}
			$domains[$varName] = ${$varName};
			}
		}
		
		foreach ($domains as $dom => $val) {
			$domName = str_replace("_", ".", $dom);
			foreach ($columns as $column) {
				if(isset($val[$column])) ${"val" . $column} = 1; else ${"val" . $column} = 0;
			}
			$query = "INSERT INTO ipv6 (iDomain, iDns6, iErrdns6, iTruedns6, iMx6, iErrmx6, iTruemx6, iWww6, iErrwww6, iTruewww6, iInsDate) VALUES ('$domName', '$valdns6', '$valerrdns6', '$valtruedns6', '$valmx6', '$valerrmx6', '$valtruemx6', '$valwww6', '$valerrwww6', '$valtruewww6', '$date')";
			mysql_query($query) or die(mysql_error());
			${$dom} = null;
		}
	}
	
	mysql_close($conn);
?>