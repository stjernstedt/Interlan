<title>Domain</title>
<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=UTF-8">
<img src="interlan.png" alt=""  border="0" usemap="#head"><br>
<form method="post">
<p>Domain
<input type="text" name="arg" size="40" value=""/>
</p>
<input type="submit" name="submit" value="Go"/>
</form>
<?php
if(isset($_POST['arg'])){
  $myarg=$_POST['arg'];
  if($myarg){ 
    echo "Domain: $myarg<BR>\n";
    $output=shell_exec("./dns $myarg");
    echo "$output<BR>\n";
  }
}


?>
