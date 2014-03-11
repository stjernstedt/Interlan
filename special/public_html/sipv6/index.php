<?php
  $IP = $_SERVER["REMOTE_ADDR"];

  if(strstr($IP,":")) 
    $ver = 6;
  else
    $ver = 4;

  echo "<html><center>\n";

  if($ver==4){
    echo "Hello IPv4 world, get down and install IPv6!<br>";
    echo "<img src=gipv6.JPG><br>";
  } else {
    echo "IPv6!<br>\n";
  }



  echo "<center><br><hr><i>Your IP is: $IP</i></html>\n<br>";
  echo "Press reload to see more <b><i>Give me IPv6</b></i> stickers<br>";

?>
<img src="randim.php" alt="Random photo" />



