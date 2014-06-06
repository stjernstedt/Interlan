<?php
	// $conn = new mysqli("localhost", "root", "1q2w3e4r", "test") or die("cannot connect");
	$conn = new mysqli("localhost", "root", "", "interlan") or die("cannot connect");
	$conn->query("SET NAMES utf8");
	ini_set('max_execution_time', 0);

	$file = file('komdom-danmark.csv');
	$id = 4;

	foreach ($file as $line) {
		$values = preg_split("/;/", $line);
		$name = trim($values[1]);
		$code = trim($values[0]);
		$domain = trim($values[2]);
		$query =
		"INSERT INTO municipalities (mName, mCountryId, mCode, mInsDate, mUpdDate, mDomain)".
		" VALUES ('$name', '$id', '$code', now(), now(), '$domain')";
		$conn->query($query) or die(mysqli_error($conn));
	}

	$conn->close();
?>
