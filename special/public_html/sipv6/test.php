<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<html>

<head>
<title>Random image script useage example</title>
<style type="text/css">
body, td, p, input {
        color : #000000;
        font-family : Verdana, Geneva, Arial, Helvetica, sans-serif;
        font-size : 12px;
}
</style>
</head>

<body>

<p><b>Random image script usage example</b><br />
For further information on how to use the Random Image PHP script see <a href="readme.htm">Readme file</a></p>

<ol>

<li>
<p>Type 1, default images folder:<br />
<img src="randim.php?type=1"></p>
</li>

<li>
<p>Type 2, default images folder:<br />
<img src="<?php $_GET['type']=0; include 'randim.php'; ?>"></p>
</li>

<li>
<p>Type 1, folder <i>images2</i>:<br />
<img src="randim.php?type=1&folder=images2"></p>
</li>

<li>
<p>Type 2, folder <i>images2</i>:<br />
<img src="<?php $_GET['type']=0; $_GET['folder']='images2'; include 'randim.php'; ?>"></p>
</li>

</ol>

<p>&nbsp;</p>

<p><a href="http://www.phpjunkyard.com/random-image.php" target="_blank">Random image</a> script by <a href="http://www.phpjunkyard.com" target="_blank">PHPJunkyard</a>.</p>

</body>

</html>
