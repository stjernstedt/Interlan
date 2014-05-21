<?php
	require_once "lang.php";
?>

function showBigger(o, bShow){
   if(bShow){
        document.getElementById("dBigger").style.backgroundImage="url('"+o.src+"')";
        document.getElementById("dBigger").style.display = 'block';
   }
   else{
        document.getElementById("dBigger").style.display = 'none';
   }
}

$(function() {
	$('#domains').load('loadData.php');
    $("#datepicker").datepicker({
        maxDate: '-0d',
        defaultDate: -0,
        autoSize: true,
        firstDay: 1,
        dateFormat: 'yy-mm-dd',
        onSelect: function (dateText, inst) {
			$('#domains').load('loadData.php?date='+dateText);
		},
        monthNames: [<?php echo getTranslatedItem("MONTH_NAMES_LONG") ?>],
        monthNamesShort : [<?php echo getTranslatedItem("MONTH_NAMES_SHORT") ?>],
        dayNamesMin: [<?php echo getTranslatedItem("DAY_NAMES_SHORT") ?>]
    });
});