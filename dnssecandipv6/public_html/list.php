<meta http-equiv="expires" content="0">
<meta http-equiv="Pragma" content="no-cache">
<html>
        <head>

                <title>DNSSECandIPv6.se</title>

                <style>
                        body{
                                font-family: Arial, tahoma, verdana, arial;
                        }
                        .mainContainer{
                                background: url('bg.gif');
                                font-size: 12px;
                        }
                        .dom{
                                width: 110px;
                                margin-right: 3px;
                                overflow: hidden;
                                float: left;
                        }
                        h1, h2, h3, h4, h5, h6{
                                border-bottom: 1px solid #e0e0e0;
                        }
                        .contact{
                                text-style: uppercase;
                        }
                        .subContainer{
                                margin-botton: 12px;
                        }
                        .divider{
                                border-bottom: 1px solid #e0e0e0;
                                margin-top: 10px;
                                margin-bottom: 10px;
                        }
                        a.siteLinks{
                                border: 2px solid #2020e0;
                                display: block;
                                clear:none;
                                width: 280px;
                        }
                        a.siteLinks:hover{
                                border: 2px solid #e02020;
                        }
                </style>
        </head>

        <body>
<div class="mainContainer" style="padding:20px;border:1px solid #e0e0e0;position:absolute;left:50%;width:800px; margin-left:-400px;margin-top:50px">

                                <h1>DNSSECandIPv6.se </h1>

                                <div class="subContainer">


<?
$lines = file('../domain');
foreach ($lines as $line_num => $line) {
	
	$line = str_replace("\n", "", $line);
	echo "<a href=http://www.$line target=_blank >www.$line</a><br>";
}

 ?>
