<?php

/*
  Plugin Name: ipv6detector
  Plugin URI: http://patux.cl/ipv6detector
  Description: Just a simple plugin to detect if a visitor is using ipv6 or not.
  Version: 1.2
  Author: Patux
  Author URI: http://patux.cl
  License: GPL2
 */

add_action('init', 'ipv6detector_register_widget');

function ipv6detector_register_widget() {
    register_sidebar_widget('ipv6detector', 'ipv6detector');
    register_widget_control('ipv6detector', 'ipv6detector_control');
    add_option("hits_6", 0);
    add_option("hits_4", 0);
    add_option("whois_url","http://log.patux.cl/whois.php?obj=");
    add_option("ipv6detector_v4_msg","Still using IPv4?");
    add_option("ipv6detector_v6_msg","Cool! you have got IPv6.");
}

function ipv6detector($args) {

    $ip = getenv("REMOTE_ADDR");
    extract($args);

    echo $before_widget;
    echo $before_title . "IPv6 detector" . $after_title;

    if (substr_count($ip, ":") > 0 && substr_count($ip, ".") == 0) {
        echo get_option('ipv6detector_v6_msg');
        $v = "6";
    } else {
        echo get_option('ipv6detector_v4_msg');
        $v = "4";
    }

    $stats = _get_stats($v);
    $URL = get_option('whois_url');

    echo "<a href=\"$URL$ip\"> $ip </a>";
    echo "<ul>";
    echo "<li><a href=\"http://en.wikipedia.org/wiki/IPv4_address_exhaustion\">IPv4 exhaustion</a></li>";
    echo "<li><a href=\"http://www.iana.org/assignments/ipv4-address-space/ipv4-address-space.xml\">IPv4 address allocation</a></li>";
    echo "</ul>";
    echo $stats;
    echo $after_widget;
}

function ipv6detector_control() {

    // whois service url
    if (isset($_POST['url']) && !empty($_POST['url'])) {
        update_option('whois_url', $_POST['url']);
    }
    $url = get_option('whois_url');
    echo "URL to link ip address: <input type='text' name='url' value='".$url."'/><br />\n";

    // ipv4 message
    if (isset($_POST['v4_msg']) && !empty($_POST['v4_msg'])) {
        update_option('ipv6detector_v4_msg', $_POST['v4_msg']);
    }
    $v4_msg = get_option('ipv6detector_v4_msg');
    echo "Message to display when user have IPv4 <input type='text' name='v4_msg' value='".$v4_msg."'/><br />\n";

    // ipv6 message
    if (isset($_POST['v6_msg']) && !empty($_POST['v6_msg'])) {
        update_option('ipv6detector_v6_msg', $_POST['v6_msg']);
    }
    $v6_msg = get_option('ipv6detector_v6_msg');
    echo "Message to display when user have IPv6 <input type='text' name='v6_msg' value='".$v6_msg."'/><br />\n";


    // Reset hitcount
    if ($_POST['rhit'] == "1" ) {
        update_option('hits_6', 0);
        update_option('hits_4', 0);
        delete_option('whois_url', 0);
        delete_option('ipv6detector_v6_msg', 0);
        delete_option('ipv6detector_v4_msg', 0);
    }
    echo "Reset hit count and config <input type='checkbox' name='rhit' value='1'/><br />\n";
}



/**
 *  _get_stats
 * Internal use. Generate the html containing the stats.
 *
 * @param string $v Ip version
 * @return string
 */
function _get_stats($v="4") {

    $hits_6 = get_option("hits_6");
    $hits_4 = get_option("hits_4");

    if ($v == "6")
        $hits_6++;
    else
        $hits_4++;

    update_option("hits_6", $hits_6);
    update_option("hits_4", $hits_4);

    $tot = $hits_4 + $hits_6;

    $v4h = ($hits_4 * 100) / $tot;
    $v6h = ($hits_6 * 100) / $tot;

    $strTmp = "<span id=\"bshow\"><a href=\"#\" onclick=\"showinfo('ipstat')\">Show stats</a></span>
        <div id=\"ipstat\"  style=\"display:none\">
                
            <ul><li><span id=\"bhide\"><a href=\"#\" onclick=\"hideinfo('ipstat')\">Hide stats</a></span><table border=\"0\" cellspacing=\"1\" cellpadding=\"0\" width=\"100%\">
            <tr><td colspan=\"3\">This server has received ".$tot." hits from both ipv4 and ipv6.</td></tr>
            <tr><td width=\"35\">IPv4</td><td width=\"25\">" . number_format($v4h, 1) . "%</td><td width=\"100\"><div style=\"margin-top:auto;margin-bottom:0px;background-color:red;height:15px;width:" . $v4h . "px\"></div></td></tr>
            <tr><td>IPv6</td><td>" . number_format($v6h, 1) . "%</td><td width=\"100\"><div style=\"margin-top:auto;margin-bottom:0px;background-color:lightblue;height:15px;width:" . $v6h . "px\"></div></td></tr>
            </table></li></ul>
            </div>
            <script type=\"text/javascript\">
                lshow=document.getElementById('bshow');
                lhide=document.getElementById('bhide');
                function showinfo(obj) {
                    o = document.getElementById(obj);
                    o.style.display=\"\";
                    lhide.style.display=\"\";
                    lshow.style.display=\"none\";
                }

                function hideinfo(obj) {
                    o = document.getElementById(obj);
                    o.style.display=\"none\";
                    lhide.style.display=\"none\";
                    lshow.style.display=\"\";
                }
            </script>";
    return $strTmp;
}
?>
