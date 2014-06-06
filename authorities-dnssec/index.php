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
		<script type="text/javascript" src="index.js.php"></script>
		<title><?php echo getTranslatedItem("TITLE")?></title>
	</head>
	<body>
		<div class="mainContainer">
			<h1><?php echo getTranslatedItem("TITLE")?></h1>
			<div class="subContainer">
				<p><?php echo getTranslatedItem("SITE_DESCRIPTION")?> <br>
<?php //stats(); ?>
				<br><i>Contact: tobbe (a] <a href=http://www.interlan.se>interlan</a> punkt se</i><br>
			</div>

			<h2><?php echo getTranslatedItem("DOMAINS")?></h2>
			<div>

				<table id="legend" cellspacing="3" cellpadding="2" style="margin-bottom:7px;border:1px solid black;font: 11px verdana">
					<tr><td style="background-color:#A0FFA0;width:145px;height:20px"><img src="tick.png"/>&nbsp;<?php echo getTranslatedItem("DOMAIN")?></td><td><?php echo getTranslatedItem("SIGNED_WITHOUT_REMARKS")?></td></tr>
					<tr><td style="background-color:#FFFFFF;height:20px"><?php echo getTranslatedItem("DOMAIN")?></td><td><?php echo getTranslatedItem("WITHOUT_REMARKS_UNSIGNED")?></td></tr>
					<tr><td style="background-color:#FFA500;height:20px"><img src="tick.png"/>&nbsp;<?php echo getTranslatedItem("DOMAIN")?></td><td><?php echo getTranslatedItem("SIGNED_WITH_WARNINGS")?></td></tr>
					<tr><td style="background-color:#FFA500;height:20px"><?php echo getTranslatedItem("DOMAIN")?></td><td><?php echo getTranslatedItem("WARNINGS")?></td></tr>
					<tr><td style="background-color:#FF0000;height:20px"><?php echo getTranslatedItem("DOMAIN")?></td><td><?php echo getTranslatedItem("ERRORS")?></td></tr>

				</table>
			<div style="margin: auto;" id="datepicker"></div>

			</div>
			<div class="subContainer">
				<div id="domains">
				</div>
				<div style="clear:both">&nbsp;</div>
			</div>
			<div style="clear:both">&nbsp;</div>
		</div>

		<div id="hoverDiv">&nbsp;</div>

	</body>
</html>

