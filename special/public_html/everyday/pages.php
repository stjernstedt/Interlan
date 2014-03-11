<?

$lines = file("pages.txt") ; 
foreach ($lines as $line_num => $line) {
	$line=trim($line);
    	echo "<a href=$line target=_blank>$line</a><br>\n";
}
?>
