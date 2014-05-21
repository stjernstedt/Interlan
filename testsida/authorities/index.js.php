<?php
	require_once "lang.php";
?>

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

var gaJsHost = (("https:" == document.location.protocol) ? "https://ssl." : "http://www.");
document.write(unescape("%3Cscript src='" + gaJsHost + "google-analytics.com/ga.js' type='text/javascript'%3E%3C/script%3E"));

try {
	var pageTracker = _gat._getTracker("UA-10643709-2");
	pageTracker._trackPageview();
} catch(err) {}

$(function() {
	var html = $('#domains').innerHTML;
    $("#datepicker").datepicker({
        maxDate: '-0d',
        defaultDate: -0,
        autoSize: true,
        firstDay: 1,
        dateFormat: 'yy-mm-dd',
        onSelect: function (dateText, inst) {
			$.post("index.php", function() {
				date: dateText
			});
			$('#domains').html(html);
		},
        monthNames: [<?php echo getTranslatedItem("MONTH_NAMES_LONG") ?>],
        monthNamesShort : [<?php echo getTranslatedItem("MONTH_NAMES_SHORT") ?>],
        dayNamesMin: [<?php echo getTranslatedItem("DAY_NAMES_SHORT") ?>]
    });
});