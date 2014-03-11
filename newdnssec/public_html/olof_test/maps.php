<?php

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
    <script type="text/javascript" src="maps.js.php"></script>
  </head>
  <body>
    <div id="loader" style="display: none;position: absolute;top: 0px;left: 0px;width: 50%;height:100%;background-color: #fff;z-index: 2;opacity:0.1;filter:alpha(opacity=10);">
        <img src="ajax-loader (1).gif" alt="Loading" style="position: absolute;left: 50%;top:50%;" />
    </div>
    <div id="map_canvas" style="width:70%; height:100%"></div>
    <div style="float: left;width: 250px;">
        <div id="tabs">
            <ul>
	            <li><a href="#tabs-1">DNSsec</a></li>
	            <li><a href="#tabs-2">IPv6</a></li>
            </ul>
            <div id="tabs-1">
	            <p><?php echo getTranslatedItem("DOMAINS_THAT_ARE") ?> <br />
                <table>
                    <tr><td><input type="checkbox" value="dns" id="signed" /></td><td><?php echo getTranslatedItem("DOMAINS_SIGNED") ?></td></tr>
                    <tr><td>&nbsp;</td></tr>
                    <tr><td style="background-color: #0f0;"><input type="checkbox" value="dns" id="noerror" /></td><td><?php echo getTranslatedItem("DOMAINS_WITHOUT_ERROR") ?></td></tr>
                    <tr><td style="background-color: #f90;"><input type="checkbox" value="dns" id="warnings" /></td><td><?php echo getTranslatedItem("DOMAINS_WITH_WARNING") ?></td></tr>
                    <tr><td style="background-color: #f00;"><input type="checkbox" value="dns" id="errors" /></td><td><?php echo getTranslatedItem("DOMAINS_WITH_ERROR") ?></td></tr>
                </table>
                </p>
            </div>
            <div id="tabs-2">
	            <p>
                    <input type="checkbox" value="ip" id="www" /> <?php echo getTranslatedItem("IPV6_WEB") ?><br />
                    <input type="checkbox" value="ip" id="dns"/> <?php echo getTranslatedItem("IPV6_DNS") ?><br />
                    <input type="checkbox" value="ip" id="mail" /> <?php echo getTranslatedItem("IPV6_MX") ?><br /><br />
                    <input type="checkbox" value="allIp" id="mail" /> <?php echo getTranslatedItem("IPV6_ALL") ?><br />
                </p>
            </div>


        </div><br />
        <div style="margin: auto;" id="datepicker"></div>
            <div style="margin-top:10px;">
				<?php echo getTranslatedItem("MAPDATA_RIGHTS") ?>
            </div>
		</div>
  </body>
</html>