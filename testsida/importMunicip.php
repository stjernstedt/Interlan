<?php
	// $conn = mysql_connect("localhost", "root", "1q2w3e4r") or die("cannot connect");
	// mysql_select_db("test") or die("cannot select database");
	$conn = mysql_connect("localhost", "root") or die("cannot connect");
	mysql_select_db("interlan") or die("cannot select database");
	mysql_query("SET NAMES utf8");

	$file = file('komdom-norge.csv');
	$id = 2;

	foreach ($file as $line) {
		$values = preg_split("/;/", $line);
		$name = trim($values[1]);
		$code = trim($values[0]);
		$domain = trim($values[2]);
		$query =
		"INSERT INTO municipalities (mName, mCountryId, mCode, mInsDate, mUpdDate, mDomain)".
		" VALUES ('$name', '$id', '$code', now(), now(), '$domain')";
		$res = mysql_query($query) or die(mysql_error($conn));
	}

	mysql_close();
?>
