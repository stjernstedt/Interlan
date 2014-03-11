<?php

/*

	anrop:
		php file.php <nysida.txt >out.html

*/


function removeEndingDot($str){
	if( strlen($str) > 0 && $str[ strlen($str)-1 ] == '.'){
		return substr($str, 0, -1);
	}
	return $str;
}


	function getContent(){
		$data = "";
		while( !feof(STDIN) ){
			$line = trim(fgets(STDIN));

			$arrParts = explode(",", $line);


			if( sizeof($arrParts) > 3 ){
				$host = "";
				$yesOrEmpty = "";
				$recursive = "";
				$errorLevel = "";
				$warningLevel = "";
				$email = "";
				$nsList = "";

				$errScriptOutput = "";

				for ($i = 0 ; $i < sizeof($arrParts) ; $i++) {

					$arrParts[$i] = trim($arrParts[$i]);

					if( $i == 0 ){
						$host = $arrParts[$i];
					}
					else if( $i == 1 ){
						$yesOrEmpty = $arrParts[$i];
					}
					else if( $i == 2 ){
						$recursive = $arrParts[$i];
					}
					else if( $i == 3 ){
						$errorLevel = $arrParts[$i];
					}
					else if( $i == 4 ){
						$warningLevel = $arrParts[$i];
					}
					else if( $i == 5 ){
						$email =  formatEmail(removeEndingDot($arrParts[$i]));
					}
					else if( $i > 5 ){
						$nsList = $nsList . removeEndingDot($arrParts[$i]);
						if( $i < sizeof($arrParts) - 1 ){
							$nsList = $nsList . "<br/>";
						}
					}
				}

				$errScriptOutput = shell_exec( "./error " . $host);

				$data = $data . outputSingleDomain($host, $yesOrEmpty != "", $email, $nsList, $errorLevel, $warningLevel, $recursive, $errScriptOutput);

			}

		}

		return $data;
	}

	function formatEmail($email){

		if($email == "") return "";
		$email = str_replace("\\.", "¤", $email);

		if( strpos($email, '\\@') > 0){
			$email = str_replace("\\@", " [at] ", $email);
		}
		else{
			$firstDot = strpos($email, '.');
			$email = substr($email, 0, $firstDot) . " [at] " . substr($email, $firstDot + 1);
		}

		return str_replace("¤", ".", $email);
	}

	function outputSingleDomain($host, $isSecure, $email, $nsList, $errLevel, $warnLevel, $isRecursive, $errOutput){

		global $okDomCount;
		global $notOkDomCount;

		#$tagStart = "<div class=\"".($isSecure? ($warnLevel>0? "warningDom" : "okdom") : ( $errLevel>0? "errorDom" : ( $warnLevel > 0? "warningDom" : "dom" ) ))."\">";
		$tagStart = "<div class=\"".($isSecure?  ($errLevel>0? "errorDom" : ($warnLevel>0? "warningDom" : "okdom")) : ( $errLevel>0? "errorDom" : ( $warnLevel > 0? "warningDom" : "dom" ) ))."\">";
		$tagEnd = "</div>";
		$okImg = "<img src=\"tick.png\" style=\"width:16px;height:16px;border:0px\"/>&nbsp;";
		$linkStart = "<a href=\"javascript:void(null)\" onclick=\"var w = window.open('','_nInfo','width=800,height=300,scrollbar=yes,toolbar=no'); w.document.write('<pre>" . str_replace("\n", "\\n", $errOutput) . "</pre>');\"";
		$linkMid = " onmouseover=\"showHover(event, '" . $email . "<br/>" . ($isRecursive? "Rekursiv<br/>" : "") . ($errLevel>0? "Error (".$errLevel.")<br/>" : "") . ($warnLevel>0? "Warning (".$warnLevel.")<br/>" : "") . $nsList . "')\" onmouseout=\"hideHover()\" title=\"";
		$linkMidEnd = "\">";
		$linkEnd = "</a>";

		if( $isSecure ){
			$okDomCount++;
		}
		else{
			$notOkDomCount++;
		}

		return $tagStart . $linkStart . $host . $linkMid . $linkMidEnd . ($isSecure? $okImg : "") . $host . $linkEnd . $tagEnd . "\n";

	}

	//dessa två sätts av outputSingleDomain
	$okDomCount = 0;
	$notOkDomCount = 0;

	//skapar listan av alla divar.
	$domainList = getContent();


?>
<meta http-equiv="content-type" content="text/html; charset=iso-8859-1" />
<html>
	<head>
		<style>
			body{
				font-family: Arial, tahoma, verdana, arial;
			}
			.mainContainer{
				background: url('bg.gif');
				font-size: 12px;
			}

			.dom{
				/*background-color: #FF00FF; */
			}
			.okdom{
				background-color: #A0FFA0;
			}
			.errorDom{
				background-color: #FF0000;
			}
			.warningDom{
				background-color: #FFA500;
			}
			.dom, .okdom, .warningDom, .errorDom{
				/*border: 1px solid black;*/
				padding: 2px;
				width: 145px;
				margin: 1px;
				overflow: hidden;
				float: left;
				height: 20px;
			}

			h1, h2, h3, h4, h5, h6{
				border-bottom: 1px solid #b0b0b0;
			}
			.contact{
				text-style: uppercase;
			}
			.subContainer{
				margin-botton: 42px;
			}

			a{
				color: #0000FF;
				text-decoration: none;
			}
			a:hover{
				color: #0000FF;
				text-decoration: underline;
			}

		</style>
		<title>Texas Counties</title>
		<script type="text/javascript">
			function showHover(e, txt){
				if( e == null ) e = window.event;
				if(e.pageX == null ) e.pageX = e.clientX;
				if(e.pageY == null ) e.pageY = e.clientY + document.body.scrollTop;
				//alert(e.pageX);

				var o = document.getElementById("hoverDiv");
				o.innerHTML = txt;
				o.style.left = (e.pageX+20) + "px";
				o.style.top = (e.pageY+12) + "px";
				o.style.visibility = "visible";
			}
			function hideHover(){
				var o = document.getElementById("hoverDiv");
				o.style.visibility = "hidden";
			}
		</script>
		<script type="text/javascript">
		var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
		document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
		</script>
		<script type="text/javascript">
		try {
		var pageTracker = _gat._getTracker("UA-10643709-2");
		pageTracker._trackPageview();
		} catch(err) {}</script>
	</head>
	<body>
		<div class="mainContainer" style="padding:20px;border:1px solid #e0e0e0;position:absolute;left:50%;width:800px;margin-left:-400px;margin-top:50px">
			<h1>Texas Counties with DNSSEC</h1>
			<div class="subContainer">

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


			<h2>Domains</h2>
			<div>

				<table cellspacing="3" cellpadding="2" style="margin-bottom:7px;border:1px solid black;font: 11px verdana">
					<tr><td style="background-color:#A0FFA0;width:145px;height:20px"><img src="tick.png"/>&nbsp;domain</td><td>Signed with DNSSEC and without remarks</td></tr>
					<tr><td style="background-color:#FFFFFF;height:20px">domain</td><td>Without remarks in DNSCheck but not signed</td></tr>
					<tr><td style="background-color:#FFA500;height:20px"><img src="tick.png"/>&nbsp;domain</td><td>Signed with DNSSEC but with warnings</td></tr>
					<tr><td style="background-color:#FFA500;height:20px">domain</td><td>Warnings in DNSCheck</td></tr>
					<tr><td style="background-color:#FF0000;height:20px">domain</td><td>Error in DNSCheck</td></tr>
				</table>

			</div>
			<div class="subContainer">
				<i>Updated <?php echo `date`; ?></i><br/>
				<?php

					echo $okDomCount . " of " . ($okDomCount + $notOkDomCount) . " domains secured<br/>\n\n";

					echo $domainList;

				?>
				<div style="clear:both">&nbsp;</div>
			</div>
			<div style="clear:both">&nbsp;</div>
		</div>

		<div id="hoverDiv" style="position:absolute;visibility:hidden;left:0px;top:0px;font:11px verdana;border:1px solid #AFAF20;padding:4px; width:220px;background-color:#FFFFE0;">&nbsp;</div>

	</body>
</html>

