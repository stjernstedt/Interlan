<?php
	require_once "lang.php";
?>
var countryDir = "data/sverige/";
var map;
var municipalitiesTagMap = {};
var municipalitiesInfo = {};
var polygons = {};
var countries = {};
var infoWindow;
var coordfilename = "liten.json.sverige";
var opacityOfPolygon = 0.8;

var lastSelectedDate = "";

var municipalities = new Array();

function test() {
	municipalities = new Array();
	countries = {};
	var boxes = document.getElementsByName('country[]');
	$.each(boxes, function(index, box) {
		if (this.checked == true) {
			$.each(this.value, function() {
				countries[this] = new Object({
					country: box.id,
					code: box.value
				});
			});
		}
	});
 	clearMap(countries);

	$.each(countries, function() {
		countryDir = "data/"+this.country+"/";
		coordfilename = "liten.json."+this.country;
		loadMap(this.code);
	});
 }

function loadMap(code) {
   $.ajax({
        type: "GET",
        url: coordfilename + "?_=" + new Date().getTime(),
        dataType: "json",
        async: false,
        success: function (d) {
			if(d.features) {
				$(d.features).each(function () {
					municipalities.push(this);
				});
			} else {
				$(d.municipalities.municipality).each(function () {
					municipalities.push(this);
				});			
			}
            var today = new Date(new Date().getTime() - (24 * 60 * 60 * 1000));
            var dd = today.getDate();
            var mm = today.getMonth() + 1;

            var yyyy = today.getFullYear();
            if (dd < 10) { dd = '0' + dd } if (mm < 10) { mm = '0' + mm } today = yyyy + mm + dd;
			lastSelectedDate = today;
            loadInfo(countryDir + today + ".json?_=" + new Date().getTime(), code);
        }
    });
}

function cbChanged(){
	if(!bAllIsChecked){
		$("#loader").show();
		$("#tabs input[value!='" + $(this).val() + "']").removeAttr("checked");
		loadList();
//		test();
    }
    bAllIsChecked = false;
}
var bAllIsChecked = false;

$(function () {
    $("#tabs").tabs({ show: function () { loadList(); $("#tabs input").prop("checked", false); } });
    $("#datepicker").datepicker({
        maxDate: '-1d',
        defaultDate: -1,
        autoSize: true,
        firstDay: 1,
        dateFormat: 'yymmdd',
        onSelect: function (dateText, inst) {
            $("#loader").show();
            lastSelectedDate = dateText;
            loadInfo(countryDir + dateText + ".json?date=" + dateText + "&_=" + new Date().getTime());
        },
        monthNames: [<?php echo getTranslatedItem("MONTH_NAMES_LONG") ?>],
        monthNamesShort : [<?php echo getTranslatedItem("MONTH_NAMES_SHORT") ?>],
        dayNamesMin: [<?php echo getTranslatedItem("DAY_NAMES_SHORT") ?>]
    });

	$("input[value='allIp']").change(function () {
        bAllIsChecked = true;
        $("input[value='ip']").attr("checked", $(this).attr("checked"));
//		loadList();
		test();
    });

	$("input[type='checkbox']").change(cbChanged);

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


	loadMap(0);
});

function loadInfo(url, code) {
    $.ajax({
        type: "GET",
        url: url,
        dataType: "json",
        cache: false,
        contentType: "application/json",
        success: function (data) {
            $(data.municipalities.municipality).each(function () {
                municipalitiesInfo[this.knnr] = this;
            });

            loadList(code);
        }, error: function (xhr, status, error) {
            $("#loader").hide();
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

		$(municipalities).each(function () {
			addPolygon(this, code);
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
	if (typeof municipality.knnr === 'undefined')
		var knnr = municipality.properties.code.toString();
	else
		var knnr = municipality.knnr.toString();
    var info = municipalitiesInfo[knnr];

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

        var polyCoords = new Array();

		if(typeof municipality.geometry !== 'undefined') {
			if(municipality.geometry.geometries) {
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
			} else if (municipality.geometry.coordinates) {
				$(eval(municipality.geometry.coordinates)).each(function () {
					$(eval(this)).each(function () {
						lat = this[1];
						lng = this[0];
						polyCoords.push(new google.maps.LatLng(lat, lng));
					});
				});
			}
		} else {
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
			var noneSelected = $("#tabs input[type='checkbox']:checked").size()- $("#tabs input#signed[type='checkbox']:checked").size() == 0;
/*			var noneSelected = true;
			var checks = new Array("#noerror", "#warnings", "#errors");
 			$.each(checks, function() {
				if(this.checked) {
					console.log("checked");
					noneSelected = false;
				}
			});
 */            if (($("#noerror").is(':checked') || noneSelected) && !hasErrors && !hasWarnings) {
                show = true;
                if (info.dnsSecSigned)
                    color = "0f0";
                else
                    color = "eaea6a"; // unsigned but without error

                if (isSigned && !info.dnsSecSigned) show = false;
            }
            if (($("#warnings").is(':checked') || noneSelected) && hasWarnings) {
                show = true;
                color = "f90"
                if (isSigned && !info.dnsSecSigned) show = false;
            }

            if (($("#errors").is(':checked') || noneSelected) && hasErrors) {
                show = true;
                color = "f00"

                if (isSigned && !info.dnsSecSigned) show = false;
            }
        }

        if ($("#tabs").tabs().tabs('option', 'selected') == 1) {
            show = true;
            if ($("#www").is(':checked') && !info.ipWww) { show = false; }
            if ($("#dns").is(':checked') && !info.ipDns) { show = false; }
            if ($("#mail").is(':checked') && !info.ipMail) { show = false; }
            color = "0f0";
            if ($("#tabs input[type='checkbox']:checked").size() == 0 && (!info.ipWww || !info.ipDns || !info.ipMail)) color = "f90";
            if ($("#tabs input[type='checkbox']:checked").size() == 0 && (!info.ipWww && !info.ipDns && !info.ipMail)) color = "f00";
        }
        if (!show) {
            if (polygons[info.knnr] != null)
                polygons[info.knnr].setOptions({ fillOpacity: 0.0, strokeWeight: 0.5 });
        }
        else {
            if (polygons[info.knnr] == null) {
                polygons[info.knnr] = new google.maps.Polygon({
                    paths: polyCoords,
                    strokeColor: "#000",
                    strokeOpacity: 0.8,
                    strokeWeight: color == "fff" ? 0.5 : 0.5,
                    fillColor: "#" + color,
                    fillOpacity: color == "fff" ? 0 : opacityOfPolygon,
					countryCode: code
                });
                polygons[info.knnr].setMap(map);

            }
            else {
				if (polygons[info.knnr].countryCode == code)
					polygons[info.knnr].setMap(map);
//                polygons[info.knnr].setOptions({ strokeWeight: color == "fff" ? 0.5 : 0.5, fillOpacity: color == "fff" ? 0 : opacityOfPolygon, fillColor: "#" + color });
            }
        }

        google.maps.event.addListener(polygons[info.knnr], "click", function (event) {
            var vertices = this.getPath();
            var contentString = "<h3>" + (info == null ? knnr : info.name) + "</h3>";

            var dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_1")?>";
            if (info.dnsSecSigned) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_2")?>";
            if (info.dnsSecSigned && hasWarnings) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_3")?>";
            if (!info.dnsSecSigned && (hasWarnings || hasErrors)) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_4")?>";
            if (hasErrors) dnsString = "<?php echo getTranslatedItem("DNSSEC_MESSAGE_5")?>";

            contentString += "<b>DNSSEC</b>: " + dnsString + "<br />";
            contentString += "<b><?php echo getTranslatedItem("SITE_CONTACT")?></b>: " + info.contact + "<br />";
            if (info.isRecursive) contentString += "<?php echo getTranslatedItem("DNS_RECURSIVE")?><br />";
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
	$.each(polygons, function(index, poly) {
		if(code == "null")
			this.setMap(null);
		$.each(code, function() {
			if(this.countryCode != code) {
				poly.setMap(null);
			}
		});
	});
}

$.when(clearMap()).done(function() {
});