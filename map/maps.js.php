<?php
	require_once "lang.php";
?>

var map;
var municipalitiesTagMap = {};
var municipalitiesInfoByCountry = new Array();
var municipalitiesInfo = {};
var countryPolygons = {};
var country = null;
var infoWindow;
var coordfilename = "liten.json.sverige";
var opacityOfPolygon = 0.8;

var today = new Date(new Date().getTime());
var dd = today.getDate();
var mm = today.getMonth() + 1;
var yyyy = today.getFullYear();
if (dd < 10) { dd = '0' + dd } if (mm < 10) { mm = '0' + mm } today = yyyy + "-" + mm + "-" + dd;
var lastSelectedDate = today;

var	municipalitiesByCountry = {};
var municipalities = new Array();

function loadData(date) {
	$("#loader").show();
	if (typeof date == 'undefined') date = lastSelectedDate;
	coordfilename = "liten.json."+country.country;
	if(municipalitiesByCountry[country.code] == null)
		loadMap(country.code);
	loadInfo(date, country.code);
	loadList(country.code);
}

function reloadAll(date) {
	if (typeof date == 'undefined') date = lastSelectedDate;
	var countries = {};
	var boxes = document.getElementsByName('country[]');
	$.each(boxes, function(index, box) {
		if (this.checked == true) {
				clearMap(box.value);
				countries[box.value] = new Object({
					country: box.id,
					code: box.value
				});
		}
	});
	$.each(countries, function() {
		country = new Object({
			country: this.country,
			code: this.code
		});
		loadData(date);
	});
}

$(function () {
	if(preSelect == "") preSelect = "sverige";
	$("#tabs input").prop("checked", false);
	$("."+preSelect).prop("checked", true);
	
	country = new Object({
		country: $("#"+preSelect).attr('id'),
		code: $("#"+preSelect).attr('value')
	});
	// $("#tabs input[value=country.code]").prop("checked", true);
	// $("#tabs input[value='1']").prop("checked", true);
	$("#tabs").tabs({
		show: function () {
		},
		select: function(event, ui) {
			reloadAll();
		}
	});
    $("#datepicker").datepicker({
        maxDate: '-0d',
        defaultDate: -0,
        autoSize: true,
        firstDay: 1,
        dateFormat: 'yy-mm-dd',
        onSelect: function (dateText, inst) {
            $("#loader").show();
            lastSelectedDate = dateText;
			reloadAll(dateText);
		},
        monthNames: [<?php echo getTranslatedItem("MONTH_NAMES_LONG") ?>],
        monthNamesShort : [<?php echo getTranslatedItem("MONTH_NAMES_SHORT") ?>],
        dayNamesMin: [<?php echo getTranslatedItem("DAY_NAMES_SHORT") ?>],
    });

	$("input[id='allIp']").change(function () {
		if ($("input[id='allIp']").hasAttr("checked"))
			$("input[value='ip']").removeAttr("checked");
		else
			$("input[value='ip']").attr("checked", $(this).attr("checked"));
		
		loadData();
    });


    var mapOptions = {
        center: new google.maps.LatLng(63.027722, 15.58136),
        zoom: 5,
        mapTypeId: google.maps.MapTypeId.ROADMAP,
        rotateControl: false,
        overviewMapControl: false,
        streetViewControl: false,
        panControl: false,
        mapTypeControl: false
    };

	map = new google.maps.Map(document.getElementById("map_canvas"),
            mapOptions);


	loadData();
});

function loadMap(code) {
	municipalities = new Array();

   $.ajax({
        async: false,
        type: "GET",
        url: coordfilename + "?_=" + new Date().getTime(),
        dataType: "json",
        success: function (d) {
			if(d.features) {
				$(d.features).each(function () {
					municipalities.push(this);
				});
			} 
			if(d.municipalities) {
				$(d.municipalities.municipality).each(function () {
					municipalities.push(this);
				});			
			}
        },
		complete: function() {
			municipalitiesByCountry[code] = municipalities;
		}
    });
}

function loadInfo(date, code) {
	municipalitiesInfo = {};

    $.ajax({
		async: false,
        type: "GET",
        url: "createJson.php?date=" + date + "&code=" + code,
        dataType: "json",
        cache: false,
        contentType: "application/json",
        success: function (data) {
            $(data.municipalities.municipality).each(function () {
                municipalitiesInfo[this.knnr] = this;
            });
        }, error: function (xhr, status, error) {
            $("#loader").hide();
        },
		complete: function() {
			municipalitiesInfoByCountry[code] = municipalitiesInfo;
		}

    });
}

var cntTotalDomains = 0;
var cntOnlyOneDns = 0;
var cntSignedDomains = 0;
var cntWithWarning = 0;
var cntWithError = 0;
var cntRecursive = 0;

function loadList(code) {
    setTimeout(function () {

		cntTotalDomains = 0;
		cntOnlyOneDns = 0;
		cntSignedDomains = 0;
		cntWithWarning = 0;
		cntWithError = 0;
		cntRecursive = 0;
		
		countryPolygons[code] = {};
		$.each(municipalitiesByCountry[code], function () {
			$(this).each(function () {
				addPolygon(this, code);
			});
		});

        var dnsCheckInfoString = "<?php echo getTranslatedItem("DNSCHECK_RESULT")?>";
        dnsCheckInfoString = dnsCheckInfoString.replace(/\{0\}/, cntTotalDomains.toString());
        dnsCheckInfoString = dnsCheckInfoString.replace(/\{1\}/, lastSelectedDate);
        dnsCheckInfoString = dnsCheckInfoString.replace(/\{2\}/, cntRecursive.toString());
        dnsCheckInfoString = dnsCheckInfoString.replace(/\{3\}/, cntWithError.toString());
        dnsCheckInfoString = dnsCheckInfoString.replace(/\{4\}/, cntWithWarning.toString());
        dnsCheckInfoString = dnsCheckInfoString.replace(/\{5\}/, cntOnlyOneDns.toString());

        setTimeout(function () { $("#loader").hide(); }, 1);
    }, 1);
}

function addPolygon(municipality, code) {
	if (typeof municipality.knnr !== 'undefined')
		var knnr = municipality.knnr.toString();
	if (typeof municipality.properties !== 'undefined') {
		if(typeof municipality.properties.code !== 'undefined') {
			var knnr = municipality.properties.code.toString();
		}
		if (typeof municipality.properties.KOMKODE !== 'undefined') {
			var knnr = municipality.properties.KOMKODE.toString();
		}
		if (typeof municipality.properties.KOMM !== 'undefined') {
			var knnr = municipality.properties.KOMM.toString();
		}
	}

	var info = municipalitiesInfoByCountry[code][knnr];
	
	var polyCoords = new Array();

    if (info != null) {

		cntTotalDomains++;
		try{
			if( info.dnsList.length == 1) cntOnlyOneDns++;
			if( info.dnsSecSigned ) cntSignedDomains++;
			if( info.warnings.length > 0) cntWithWarning++;
			if( info.errors.length > 0) cntWithError++;
			if( info.isRecursive ) cntRecursive++;
		}
		catch(e){}

		if(typeof municipality.geometry !== 'undefined') {
			if(typeof municipality.geometry.geometries !== 'undefined') {
				$(eval(municipality.geometry.geometries)).each(function () {
					$(eval(this)).each(function () {
						$(eval(this.coordinates)).each(function () {
							$(eval(this)).each(function () {
								lat = this[1];
								lng = this[0];
								polyCoords.push(new google.maps.LatLng(lat, lng));
							});
						});
					});
				});
			}
			if (typeof municipality.geometry.coordinates !== 'undefined') {
				$(eval(municipality.geometry.coordinates)).each(function () {
					if(municipality.geometry.type == 'MultiPolygon') {
						$(eval(this)).each(function () {
							$(eval(this)).each(function () {
								lat = this[1];
								lng = this[0];
								polyCoords.push(new google.maps.LatLng(lat, lng));
							});
						});
					} else {
						$(eval(this)).each(function () {
							lat = this[1];
							lng = this[0];
							polyCoords.push(new google.maps.LatLng(lat, lng));
						});
					}
				});
			}
		}
		if (typeof municipality.coords !== 'undefined') {
			$(eval(municipality.coords)).each(function () {
				var lat_long = this.toString().split(',');
				lat = lat_long[0];
				lng = lat_long[1];
				polyCoords.push(new google.maps.LatLng(lat, lng));
			});
		}
		
        var hasErrors = (info.errors != null && $(info.errors).size() > 0);
        var hasWarnings = (info.warnings != null && $(info.warnings).size() > 0);
        var isSigned = $("#signed").is(':checked');
        var show = true;
        var color = "fff";

		if ($("#tabs").tabs().tabs('option', 'selected') == 0) {
			show = !$("#signed").is(':checked') && !$("#noerror").is(':checked') && !$("#warnings").is(':checked') && !$("#errors").is(':checked');
			var noneSelected = $("#tabs input[value='dns']:checked").size()- $("#tabs input#signed[type='checkbox']:checked").size() == 0;

			if (($("#noerror").is(':checked') || noneSelected) && !hasErrors && !hasWarnings) {
				show = true;
				if (info.dnsSecSigned == 1)
					color = "0f0";
				else
					color = "eaea6a"; // unsigned but without error

				if (isSigned && info.dnsSecSigned != 1) show = false;
			}
			if (($("#warnings").is(':checked') || noneSelected) && hasWarnings) {
				show = true;
				color = "f90"
				if (isSigned && info.dnsSecSigned != 1) show = false;
			}

			if (($("#errors").is(':checked') || noneSelected) && hasErrors) {
				show = true;
				color = "f00"

				if (isSigned && info.dnsSecSigned != 1) show = false;
			}
		}

		if ($("#tabs").tabs().tabs('option', 'selected') == 1) {
			show = true;
			if ($("#www").is(':checked') && info.ipWww != 1) { show = false; }
			if ($("#dns").is(':checked') && info.ipDns != 1) { show = false; }
			if ($("#mail").is(':checked') && info.ipMail != 1) { show = false; }
			color = "0f0";
			if ($("#tabs input[class='filters']:checked").size() == 0 && (info.ipWww != 1 || info.ipDns != 1 || info.ipMail != 1)) color = "f90";
			if ($("#tabs input[class='filters']:checked").size() == 0 && ( info.ipWww != 1 && info.ipDns != 1 && info.ipMail != 1)) color = "f00";
		}
	
		function createPolygon() {
			countryPolygons[code][info.knnr] = new Array(new google.maps.Polygon({
				paths: polyCoords,
				strokeColor: "#000",
				strokeOpacity: 0.8,
				strokeWeight: color == "fff" ? 0.5 : 0.5,
				fillColor: "#" + color,
				fillOpacity: color == "fff" ? 0 : opacityOfPolygon,
				countryCode: code
			}));
			countryPolygons[code][info.knnr].slice(-1).pop().setMap(map);
		}
		
		function pushPolygon() {
			countryPolygons[code][info.knnr].push(new google.maps.Polygon({
				paths: polyCoords,
				strokeColor: "#000",
				strokeOpacity: 0.8,
				strokeWeight: color == "fff" ? 0.5 : 0.5,
				fillColor: "#" + color,
				fillOpacity: color == "fff" ? 0 : opacityOfPolygon,
				countryCode: code
			}));
			countryPolygons[code][info.knnr].slice(-1).pop().setMap(map);
		}
		if (countryPolygons[code][info.knnr] == null) {
			createPolygon();
		} else {
			pushPolygon();
		}

		if (!show) {
			if (typeof countryPolygons[code][info.knnr] !== 'undefined') {
				$.each(countryPolygons[code][info.knnr], function() {
					this.setOptions({ fillOpacity: 0.0, strokeWeight: 0.5 });
				});
			}
		}
		
        google.maps.event.addListener(countryPolygons[code][info.knnr].slice(-1).pop(), "click", function (event) {
            var vertices = this.getPath();
            var contentString = "<h3>" + (info == null ? knnr : info.name) + "</h3>";

            var dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_1")?>";
            if (info.dnsSecSigned == 1) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_2")?>";
            if (info.dnsSecSigned == 1 && hasWarnings) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_3")?>";
            if (info.dnsSecSigned != 1 && (hasWarnings || hasErrors)) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_4")?>";
            if (info.dnsSecSigned == 1) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_2")?>";
            if (info.dnsSecSigned == 1 && hasWarnings) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_3")?>";
            if (info.dnsSecSigned != 1&& (hasWarnings || hasErrors)) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_4")?>";
            if (hasErrors) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_5")?>";

            contentString += "<b>DNSSEC</b>: " + dnsString + "<br />";
            contentString += "<b><?php echo getTranslatedItem("SITE_CONTACT")?></b>: " + info.contact + "<br />";
            if (info.isRecursive == 1) contentString += "<?php echo getTranslatedItem("DNS_RECURSIVE")?><br />";
            contentString += generateListFromArray("<?php echo getTranslatedItem("DNSSEC_WARNINGS")?>", info.warnings);
            contentString += generateListFromArray("<?php echo getTranslatedItem("DNSSEC_ERRORS")?>", info.errors);
            contentString += generateListFromArray("<?php echo getTranslatedItem("DNSSEC_DNSLIST")?>", info.dnsList);
            if (info.url != null) {
                contentString += "<br /><?php echo getTranslatedItem("VISIT")?>: <small><a href=\"http://" + info.url + "\" target=\"_blank\">" + info.url + "</a></small><br />";
            }
            infowindow.setContent(contentString);
            infowindow.setPosition(event.latLng);

            infowindow.open(map);
        });
    }



    infowindow = new google.maps.InfoWindow();
}

function getValueOfFirstAttribute(object) {
    var firstProp;
    for (var key in object) {
        if (object.hasOwnProperty(key)) {
            return object[key];
        }
    }

    return null;
}

function generateListFromArray(title, arr) {
    if (arr != null && $(arr).size() > 0) {
        var result = "<br /><b>" + title + "</b> <br />";

        $(arr).each(function () {
            result += "<small>" + (getValueOfFirstAttribute(this) == null ? "" : getValueOfFirstAttribute(this)) + "</small><br />";
        });
        return result;
    }
    return "";
}

function clearMap(code) {
	$.each(countryPolygons[code], function() {
		$.each(this, function() {
			this.setMap(null);
		});
	});
}

function checkBox(box) {
	var boxes = document.getElementsByName('country[]');
	var boxes2 = document.getElementsByName('country2[]');

	if(!box.checked) {
		boxes[box.value-1].checked = false;
		boxes2[box.value-1].checked = false;
	} else {
		boxes[box.value-1].checked = true;
		boxes2[box.value-1].checked = true;
	}
	
	if(box.checked) {
		country = new Object({
			country: boxes[box.value-1].id,
			code: box.value
		});
	} else {
		clearMap(box.value);
		return;
	}
	loadData();
}

function selectAllIpv6() {
	if(document.getElementById('allIp').checked == true) {
		document.getElementById('www').checked = true;
		document.getElementById('dns').checked = true;
		document.getElementById('mail').checked = true;
	} else {
		document.getElementById('www').checked = false;
		document.getElementById('dns').checked = false;
		document.getElementById('mail').checked = false;
	}
	reloadAll();
}
