<?php
	$conn = new mysqli("localhost", "root", "1q2w3e4r", "test") or die("cannot connect");
	// $conn = new mysqli("localhost", "root", "", "interlan") or die("cannot connect");
	$conn->query("SET NAMES utf8");
	ini_set('max_execution_time', 0);

	$file = file('domain');
	$id = 1;

	foreach ($file as $line) {
		$domain = trim($line);
		$query =
		"INSERT INTO authorities (aCountryId, aDomain, aInsDate)".
		" VALUES ('$id', '$domain', now())";
		$conn->query($query) or die(mysqli_error($conn));
	}

	$conn->close();
?>
