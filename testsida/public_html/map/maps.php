<?php
	if(isset($_GET['country'])) $tmp = $_GET['country'];
	else $tmp = "";
	require_once "lang.php";

?><!DOCTYPE HTML>
<html>
  <head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <style type="text/css">
      html { height: 100% }
        body { height: 100%; margin: 0px; padding: 0px; font-size: 12px; }
        #map_canvas { height: 100%; float: left; }
    </style>
    <link type="text/css" href="css/pepper-grinder/jquery-ui-1.8.17.custom.css" rel="stylesheet" />
	<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
	<script type="text/javascript" src="js/jquery-ui-1.8.17.custom.min.js"></script>
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
	<script type="text/javascript">var preSelect = '<?php echo $tmp; ?>';</script>
	<script type="text/javascript" src="maps.js.php"></script>
  </head>
  <body>
    <div id="loader" style="display: none;position: absolute;top: 0px;left: 0px;width: 50%;height:100%;background-color: #fff;z-index: 2;opacity:0.1;filter:alpha(opacity=10);">
        <img src="ajax-loader (1).gif" alt="Loading" style="position: absolute;left: 50%;top:50%;" />
    </div>
    <div id="map_canvas" style="width:70%; height:100%"></div>
    <!--<div id="mapoverlay" style="position:absolute;left:34px;top:8px;width:600px; height:32px; border:1px solid #a0a0a0; padding:2px; background-color:#ffffff">&nbsp;</div>-->
    <div style="float: left;width: 250px;">
        <div id="tabs">
            <ul>
	            <li><a href="#tabs-1">DNSSEC</a></li>
	            <li><a href="#tabs-2">IPv6</a></li>
            </ul>
            <div id="tabs-1">
	            <p><?php echo getTranslatedItem("DOMAINS_THAT_ARE") ?> <br /><!-- outline: 2px solid #0f0; -->

 				<div id="Checkboxholder">
					<input type="checkbox" class="sverige" onclick="checkBox(this)" value=1 id="sverige" name="country[]" />Sverige<br>
					<input type="checkbox" class="norge" onclick="checkBox(this)" value=2 id="norge" name="country[]" />Norge<br>
					<input type="checkbox" class="finland" onclick="checkBox(this)" value=3 id="finland" name="country[]" />Finland<br>
					<input type="checkbox" class="danmark" onclick="checkBox(this)" value=4 id="danmark" name="country[]" />Danmark<br>
					<br>
				</div>

                <table>
                    <tr><td><input type="checkbox" onclick="reloadAll()" value="dns" id="signed" /></td><td><?php echo getTranslatedItem("DOMAINS_SIGNED") ?></td></tr>
                    <tr><td>&nbsp;</td></tr>
                    <tr><td style="background-color: #0f0;"><input type="checkbox" onclick="reloadAll()" value="dns" id="noerror" /></td><td><?php echo getTranslatedItem("DOMAINS_WITHOUT_ERROR") ?></td></tr>
                    <tr><td style="background-color: #f90;"><input type="checkbox" onclick="reloadAll()" value="dns" id="warnings" /></td><td><?php echo getTranslatedItem("DOMAINS_WITH_WARNING") ?></td></tr>
                    <tr><td style="background-color: #f00;"><input type="checkbox" onclick="reloadAll()" value="dns" id="errors" /></td><td><?php echo getTranslatedItem("DOMAINS_WITH_ERROR") ?></td></tr>
                </table>
                </p>
                <p>
					<?php echo getTranslatedItem("DNSCHECK_LINK") ?>
                </p>
            </div>
            <div id="tabs-2">
	            <p>
					<div id="Checkboxholder2">
						<input type="checkbox" class="sverige" onclick="checkBox(this)" value=1 name="country2[]" />Sverige<br>
						<input type="checkbox" class="norge" onclick="checkBox(this)" value=2 name="country2[]" />Norge<br>
						<input type="checkbox" class="finland" onclick="checkBox(this)" value=3 name="country2[]" />Finland<br>
						<input type="checkbox" class="danmark" onclick="checkBox(this)" value=4 name="country2[]" />Danmark<br>
						<br>
					</div>

                    <input type="checkbox" class="filters" value="ip" id="www" onclick="reloadAll()" /> <?php echo getTranslatedItem("IPV6_WEB") ?><br />
                    <input type="checkbox" class="filters" value="ip" id="dns" onclick="reloadAll()"/> <?php echo getTranslatedItem("IPV6_DNS") ?><br />
                    <input type="checkbox" class="filters" value="ip" id="mail" onclick="reloadAll()" /> <?php echo getTranslatedItem("IPV6_MX") ?><br /><br />
                    <input type="checkbox" class="filters" value="allIp" id="allIp" onclick="selectAllIpv6()" /> <?php echo getTranslatedItem("IPV6_ALL") ?><br />
                </p>
                <p>
					<?php echo getTranslatedItem("IPV6_OLDSITE")?>
                </p>
            </div>


        </div><br />
        <div style="margin: auto;" id="datepicker"></div>
            <div style="margin-top:10px;">
				<?php echo getTranslatedItem("MAPDATA_RIGHTS") ?>
				<br/><br/>
				<a href="source.zip"><?php echo getTranslatedItem("SOURCE_LINK") ?></a>
            </div>
    </div>
  </body>
</html>