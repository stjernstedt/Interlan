<?php
$server = strtolower ( $_SERVER['HTTP_HOST'] ) ;
if ( $server == "www.kommunermedipv6.se" ) {
	echo "<meta http-equiv=\"REFRESH\" content=\"0;url=maps.php#tabs-2\"></HEAD>";
	exit;
}
if ( $server == "kommunermedipv6.se" ) {
	echo "<meta http-equiv=\"REFRESH\" content=\"0;url=maps.php#tabs-2\"></HEAD>";
	exit;
}

echo "<meta http-equiv=\"REFRESH\" content=\"0;url=maps.php\"></HEAD>";

?>
