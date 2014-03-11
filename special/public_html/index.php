<img src="http://www.vyncke.org/countv6/image4.php" width="1" height="1" border="none">
<?php
$server = strtolower ( $_SERVER['HTTP_HOST'] ) ;
if ( $server == "password.interlan.se" ) {
	echo "<meta http-equiv=\"REFRESH\" content=\"0;url=/pw/\"></HEAD>";
	exit;
}
if ( $server == "myndighetermedipv6.se" ) {
	echo "<meta http-equiv=\"REFRESH\" content=\"0;url=/mipv6/\"></HEAD>";
	exit;
}

if ( $server == "everydayisanipv6day.se" ) {
	echo "<meta http-equiv=\"REFRESH\" content=\"0;url=/everyday/\"></HEAD>";
	exit;
}
if ( $server == "www.everydayisanipv6day.se" ) {
	echo "<meta http-equiv=\"REFRESH\" content=\"0;url=/everyday/\"></HEAD>";
	exit;
}
if ( $server == "www.xn--brsbolagmedipv6-8sb.se" ) {
	echo "<meta http-equiv=\"REFRESH\" content=\"0;url=/bipv6/\"></HEAD>";
	exit;
}
if ( $server == "www.myndighetermedipv6.se" ) {
	echo "<meta http-equiv=\"REFRESH\" content=\"0;url=/mipv6/\"></HEAD>";
	exit;
}
if ( $server == "www.ipv6dns.se" ) {
        echo "<meta http-equiv=\"REFRESH\" content=\"0;url=/ipv6dns/\"></HEAD>";
        exit;
}
if ( $server == "soon.ipv6.tk" ) {
        echo "<meta http-equiv=\"REFRESH\" content=\"0;url=/sipv6/\"></HEAD>";
        exit;
}
if ( $server == "dnskoll.interlan.se" ) {
        echo "<meta http-equiv=\"REFRESH\" content=\"0;url=/dns/\"></HEAD>";
        exit;
}
if ( $server == "digitalaagendan.se" ) {
        echo "<meta http-equiv=\"REFRESH\" content=\"0;url=http://www.dnssecandipv6.se/?page_id=178\"></HEAD>";
        exit;
}
if ( $server == "www.digitalaagendan.se" ) {
        echo "<meta http-equiv=\"REFRESH\" content=\"0;url=http://www.dnssecandipv6.se/?page_id=178\"></HEAD>";
        exit;
}

  echo "<meta http-equiv=\"Pragma\" content=\"no-cache\">";
  $IP = $_SERVER["REMOTE_ADDR"];
  $AGENT = $_SERVER[HTTP_USER_AGENT];
  echo "<b><hr>Your IP is: $IP</i></html><br>\n";
  echo "User Agent: $AGENT<br><hr>\n";


echo "</hr></b></i></p><br>".`host  -a $IP | awk '{ print $0"<br>"}'|grep -A 20 "ANSWER SECTION"|grep -v ";;" | grep -v Received`;

?>

