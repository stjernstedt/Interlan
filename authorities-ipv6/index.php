<?php
	require_once "lang.php";
?><!DOCTYPE HTML>
<meta http-equiv="content-type" content="text/html; charset=UTF8" />
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link type="text/css" href="css/pepper-grinder/jquery-ui-1.8.17.custom.css" rel="stylesheet" />
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.17.custom.min.js"></script>
		<script type="text/javascript" language="javascript" src="index.js.php"></script>
		<title><?php echo getTranslatedItem("TITLE")?></title>
	</head>

	<body>
		<div class="mainContainer">
			<h1><?php echo getTranslatedItem("TITLE")?></h1>

			<div class="subContainer" >
				<div id="infobox">
					<p><?php echo getTranslatedItem("SITE_DESCRIPTION")?>
					<br><i>Kontakt: tobbe (a] <a href=http://www.interlan.se>interlan</a> punkt se</i><br>
				</div>
				<div id="datepicker"></div>
				<div style="clear:both">&nbsp;</div>
			</div>
			
			<br><?php echo getTranslatedItem("DOMAINS_WITH_PROBLEMS")?>
			<div id="domains">
			
			</div>
			<div style="break:both">&nbsp;</div>
		</div>
		</p>
	</body>
</html>
