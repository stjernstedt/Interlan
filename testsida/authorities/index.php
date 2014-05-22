<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<html>
	<head>
		<link rel="stylesheet" type="text/css" href="css/style.css">
	    <link type="text/css" href="css/pepper-grinder/jquery-ui-1.8.17.custom.css" rel="stylesheet" />
		<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
		<script type="text/javascript" src="js/jquery-ui-1.8.17.custom.min.js"></script>
		<script type="text/javascript" src="index.js.php"></script>
		<title>Authorities with DNSSEC</title>
	</head>
	<body>
		<div class="mainContainer">
			<h1>Authorities with DNSSEC</h1>
			<div class="subContainer">
				<p><b>myndighetermeddnssec.se</b> is an independent website that show the authorities domains health and if it's signed with <b><a href=http://en.wikipedia.org/wiki/DNSSEC>DNSSEC</a> </b>or not.<br>
<?php //stats(); ?>
				<br><i>Contact: tobbe (a] <a href=http://www.interlan.se>interlan</a> punkt se</i><br>
<script type="text/javascript" language="javascript">
function showBigger(o, bShow){
   if(bShow){
        document.getElementById("dBigger").style.backgroundImage="url('"+o.src+"')";
        document.getElementById("dBigger").style.display = 'block';
   }
   else{
        document.getElementById("dBigger").style.display = 'none';
   }
}
</script>
<table border="0" cellpadding="2" cellspacing="0">
        <tr>
                <td><img src="dnssec.png" width="200" onmouseover="showBigger(this, true)" onmouseout="showBigger(this, false)"/></td>
        </tr>
</table>
<div id="dBigger">&nbsp;</div>



			</div>

			<h2>Domains</h2>
			<div>

				<table id="legend" cellspacing="3" cellpadding="2" style="margin-bottom:7px;border:1px solid black;font: 11px verdana">
					<tr><td style="background-color:#A0FFA0;width:145px;height:20px"><img src="tick.png"/>&nbsp;domain</td><td>Signed with DNSSEC and without remarks</td></tr>
					<tr><td style="background-color:#FFFFFF;height:20px">domain</td><td>Without remarks in DNSCheck but not signed</td></tr>
					<tr><td style="background-color:#FFA500;height:20px"><img src="tick.png"/>&nbsp;domain</td><td>Signed with DNSSEC but with warnings</td></tr>
					<tr><td style="background-color:#FFA500;height:20px">domain</td><td>Warnings in DNSCheck</td></tr>
					<tr><td style="background-color:#FF0000;height:20px">domain</td><td>Error in DNSCheck</td></tr>

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

