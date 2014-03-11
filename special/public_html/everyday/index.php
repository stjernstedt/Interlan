<meta http-equiv="expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="refresh" content="10;url=index.php"> 
<html> 
<frameset rows=15%,85%> 
<?php 
$IP = $_SERVER["REMOTE_ADDR"];
$lines = file("pages.txt") ;
$myrandompage =  $lines[array_rand($lines)] ;

$myFile = "frontpage.html";
$fh = fopen($myFile, 'w') or die("can't open file"); 

$stringData="
<html>
<head> 
	<title>Every day is an IPv6 day!</title>
	<style type=\"text/css\">
		h3{
			text-shadow: 2px 2px rgba(185,215,153,0.5);
		}
		body, table, div, td, input, textarea, form{
			font-family: 'Georgia','Arial';
			font-size: 11px;

		}
		body{
			background-color: white;
			background-repeat: no-repeat;
			background-position: 45px 45px;
		}
		img.imgWorldIpv6 {
			position:fixed; 
			top: 20px;
			right: 45px;
			width: 70px;
			hight: 70px;
		}
		img.interlan {
			position:fixed; 
			top: 30px;
			left: 45px;
			width: 154px;
			height: 48px;
		}
    </style>
</head>
<body>
<a href=\"http://www.interlan.se/\">
<img class=\"interlan\" src=\"interlan.gif\" alt=\"Interlan-logo\"/>
</a>
<a href='http://www.worldipv6launch.org/'>
<img class=\"imgWorldIpv6\" src=\"World_IPv6_launch_badge_128.png\" alt=\"World_IPv6_launch_badge_128\"/>
</a>
<center>
<h3><br /><br /><br />Hello $IP, every day is an IPv6 day!<br /></h3>
<p>
Every 10 seconds a random page about IPv6 is shown - now: <a href=\"".$myrandompage."\" target=\"_blank\" >".$myrandompage."</a><br/>
Please send an email to tobbe (a} interlan.se if you want to add your site to <a href=\"pages.php\" target=\"_blank\">my random pages</a>
</p>
</center>
</body>
</html>";
fwrite($fh, $stringData); 
fclose($fh);
echo "<frame src=frontpage.html>";
echo "<frame src=".$myrandompage.">";
?>
