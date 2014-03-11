<?php

/*

	anrop:
		php file.php <resultat.txt >dnsstatus.html

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

				#$errScriptOutput = '1.091: hgo.se ERROR Superfluous name server listed at parent:\n1.091: hgo.se ERROR Too few name servers (1).\n1.091: hgo.se ERROR Too few IPv4 name servers (1).'; //exec("../error " . $host);
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

		$tagStart = "<div class=\"".($isSecure? ($warnLevel>0? "warningDom" : "okdom") : ( $errLevel>0? "errorDom" : ( $warnLevel > 0? "warningDom" : "dom" ) ))."\">";
		$tagEnd = "</div>";
		$okImg = "<img src=\"tick.png\" style=\"width:16px;height:16px;border:0px\"/>&nbsp;";
		$linkStart = "<a href=\"javascript:void(null)\" class=\"domLinks\" onclick=\"var w = window.open('','_nInfo','width=800,height=240,scrollbar=yes,toolbar=no'); w.document.write('<pre>" . str_replace("\n", "\\n", $errOutput) . "</pre>');\"";
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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="sv" lang="sv">
	<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="shortcut icon" href="http://www.edelegationen.se/sites/all/themes/edel/favicon.ico" type="image/x-icon" />
		<meta http-equiv="content-type" content="text/html; charset=utf-8" />
		<title>PSI och öppen data | edelegationen.se</title>
    	<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/modules/node/node.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/modules/system/defaults.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/modules/system/system.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/modules/system/system-menus.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/modules/user/user.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/sites/all/modules/baz_edel_customize_site/style.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/sites/all/modules/cck/theme/content-module.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/sites/all/modules/date/date.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/sites/all/modules/date/date_popup/themes/datepicker.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/sites/all/modules/date/date_popup/themes/timeentry.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/sites/all/modules/filefield/filefield.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/sites/all/modules/cck/modules/fieldgroup/fieldgroup.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/sites/all/themes/edel/style/default.css?m" />
<link type="text/css" rel="stylesheet" media="all" href="http://www.edelegationen.se/sites/all/themes/edel/style/general.css?m" />
<link type="text/css" rel="stylesheet" media="print" href="http://www.edelegationen.se/sites/all/themes/edel/print.css?m" />
    	    	<!--[if lt IE 7]>
    	  	    <![endif]-->

		<!-- dont forget to put local copy on the server for fast toggle if google is down (script/swfobject/2.1/swfobject.js) -->
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/swfobject/2.1/swfobject.js"></script>
	</head>
	<!-- firstpage-id only for firstpage, each page has separate id due to headline-images and background-image -->
	<body class="">
		<div id="main-container">
			<div id="header">
				<div class="utils-container">
					<div class="utils-menu">
		<ul class="bazmenu"><li class="leaf first"><a href="/sida/om-webbplatsen" title="">Om webbplatsen</a></li>
<li class="leaf"><a href="/webbkarta" title="">Webbkarta</a></li>
<li class="leaf last"><a href="http://en.edelegationen.se" title="">English</a></li>
</ul>	</div>
	<form action="/sok">
		<fieldset class="utils-search">
			<input type="text" name="s" id="s" value=" "class="utils-search-field" />
			<button type="submit" class="utils-search-submit"><span>Sök</span></button>
		</fieldset>
	</form>
</div>
<a href="/" id="logo">E-delegationen</a>
<div class="menu-name-primary-links parent-mlid-0 menu-level-1">
	<a href="#main-content" class="skip">Hoppa till sidinneh&aring;llet</a>
	<ul class="bazmenu"><li class="leaf first menu-mlid-747"><a href="/" title="">Startsida</a></li>
<li class="leaf menu-mlid-748 has-children"><a href="/sida/sammanfattning-av-uppdraget" title="">Om E-delegationen</a></li>
<li class="leaf menu-mlid-766 has-children"><a href="/sida/koordinering-av-arbetet-medbre-forvaltning" title="">E-förvaltningsprojekt</a></li>
<li class="leaf menu-mlid-767"><a href="/sida/koordinering-av-it-standardiseringsarbete" title="">IT-standardisering</a></li>
<li class="leaf menu-mlid-768"><a href="/sida/stod-till-regeringen-i-det-internationella-arbetet" title="">Internationellt</a></li>
<li class="leaf menu-mlid-1499 has-children"><a href="/betankanden" title="">Publikationer</a></li>
<li class="leaf menu-mlid-1619 has-children"><a href="/nyheter" title="">Nyheter</a></li>
<li class="leaf last menu-mlid-2016 active active-trail"><a href="/sida/psi-och-oppen-data" title="" class="active-trail active">Öppen data</a></li>
</ul></div>
			</div>
			<div id="main-content">
								<div class="column small-column">
										&nbsp;
				</div>
				<div class="column large-column">
					<!-- INTERLAN START -->
					<style type="text/css" media="all">
						.dom{
							/*background-color: #FF00FF; */
						}
						.okdom{
							background-color: #A0FFA0;
						}
						.errorDom{
							background-color: #B23434;
						}
						.warningDom{
							background-color: #FFA500;
						}
						.domLinks{
							color: #1B1A42;
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

					</style>
					<script type="text/javascript">
						function showHover(e, txt){
							if( e == null ) e = window.event;
							if(e.pageX == null ) e.pageX = e.clientX;
							if(e.pageY == null ){
								var iOffsetY = 0;
								if (document.documentElement && !document.documentElement.scrollTop){
								}
								else if (document.documentElement && document.documentElement.scrollTop){
									iOffsetY = document.documentElement.scrollTop;
								}
								else if (document.body && document.body.scrollTop){
									iOffsetY = document.body.scrollTop;
								}
								e.pageY = e.clientY + iOffsetY;
							}

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

					<h1>Signerade domäner</h1>
				Denna sida visar de svenska myndigheternas hälsa på DNS och om domänen är signerad med <b><a href=http://en.wikipedia.org/wiki/DNSSEC>DNSSEC</a> </b>eller inte.<br>
				Läs mer om DNSSEC <a href=http://www.iis.se/domaner/dnssec>här</a> och hälsokontroll av domäner <a href=http://dnscheck.iis.se/>här</a>.<br>
				Varningar innebär att störningar kan förekomma och error medför nästan alltid en försvagad domän.<br>

					<div>
						<table cellspacing="3" cellpadding="2" style="margin-bottom:7px;border:1px solid black;font: 11px verdana">
							<tr><td style="background-color:#A0FFA0;width:145px;height:20px"><img src="tick.png"/>&nbsp;domain</td><td>Signerad med DNSSEC och utan anmärkningar</td></tr>
							<tr><td style="background-color:#FFFFFF;height:20px">domain</td><td>Utan varningar i DNSCheck men inte signerad</td></tr>
							<tr><td style="background-color:#FFA500;height:20px"><img src="tick.png"/>&nbsp;domain</td><td>Signerad med DNSSEC med med varningar</td></tr>
							<tr><td style="background-color:#FFA500;height:20px">domain</td><td>Varningar i DNSCheck</td></tr>
							<tr><td style="background-color:#B23434;height:20px">domain</td><td>Error i DNSCheck</td></tr>
						</table>
					</div>
					<div class="subContainer">
						<i>Updaterad <?php echo `date`; ?></i><br/>
						<?php

							echo $okDomCount . " of " . ($okDomCount + $notOkDomCount) . " domäner säkrade<br/>\n\n";

							echo $domainList;

						?>
						<div style="clear:both">&nbsp;</div>
					</div>
					<div style="clear:both">&nbsp;</div>
					<div id="hoverDiv" style="position:absolute;visibility:hidden;left:0px;top:0px;font:11px verdana;border:1px solid #AFAF20;padding:4px; width:220px;background-color:#FFFFE0;">&nbsp;</div>
					<!-- INTERLAN SLUT -->

				</div>
				<div class="column small-column">
										&nbsp;
				</div>
				<span class="clear-float"></span>
			</div>
			<div id="footer">
	<a target="_blank" id="logo-sou" href="http://www.sou.gov.se/">Statens offentliga utredningar</a>
	<p>
		E-delegationen | Karlav&auml;gen 100 | 103 33 Stockholm<br />
		Tel: 08-405 10 00<br />
		E-post: <a href="mailto:info@edelegationen.se">info@edelegationen.se</a>
	</p>
</div>
<script type="text/javascript">
var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));
</script>
<script type="text/javascript">
try {
var pageTracker = _gat._getTracker("UA-10979049-2");
pageTracker._trackPageview();
} catch(err) {}</script>		</div>
		<!-- dont forget to put local copy on the server for fast toggle if google is down (script/jquery/1.3.2/jquery.min.js) -->
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
		<!--[if lt ie 7]><script type="text/javascript" src="/sites/all/themes/edel/script/ddpngfix.js"></script><![endif]-->
		<script type="text/javascript" src="http://www.edelegationen.se/sites/all/themes/edel/script/subscript.js"></script>

	</body>
</html>
