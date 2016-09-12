<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Kevin
  Date: 2016-07-23
  Time: 오후 11:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <script
            src="<c:url value='https://code.jquery.com/jquery-1.12.4.js'/>"
            integrity="sha256-Qw82+bXyGq6MydymqBxNPYTaUXXq7c8v3CwiYwLLNXU="
            crossorigin="anonymous"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/example-base.js'/>"></script>
    <script type="text/javascript" src="<c:url value='/resources/js/highlight.min.js' />"></script>
    <script type="text/javascript" src="<c:url value='https://openapi.map.naver.com/openapi/v3/maps.js?clientId=drdLdlwXdcgkoSa00hlT&amp;submodules=panorama'/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/example-base.css'/>">
    <script>
        var HOME_PATH = ''; //YOUT_CONTEXTPATH FOR PROJECT
    </script>
</head>
<body>

<!-- @category DataLayer -->

<div id="wrap" class="section">
    <div id="map" style="width:100%;height:900px;"></div>
    <code id="snippet" class="snippet"></code>
</div>
<script id="code">
    var HOME_PATH = window.HOME_PATH || '.',
            urlPrefix = HOME_PATH +'/resources/data/region/region',
            urlSuffix = '.json',
            regionGeoJson = [],
            loadCount = 0;

    for (var i = 1; i < 18; i++) {
        var keyword = i +'';

        if (keyword.length === 1) {
            keyword = '0'+ keyword;
        }

        $.ajax({
            url: urlPrefix + keyword + urlSuffix,
            success: function(idx) {
                return function(geojson) {
                    regionGeoJson[idx] = geojson;

                    loadCount++;

                    if (loadCount === 17) {
                        startDataLayer();
                    }
                }
            }(i - 1)
        });
    }

    var map = new naver.maps.Map(document.getElementById('map'), {
        zoom: 2,
        mapTypeId: 'hybrid',
        center: new naver.maps.LatLng(36.4203004, 128.317960)
    });

    var tooltip = $('<div style="position:absolute;z-index:1000;padding:5px 10px;background-color:#fff;border:solid 2px #000;font-size:14px;pointer-events:none;display:none;"></div>');

    tooltip.appendTo(map.getPanes().floatPane);

    function startDataLayer() {
        map.data.setStyle(function(feature) {
            var styleOptions = {
                fillColor: '#ff0000',
                fillOpacity: 0.0001,
                strokeColor: '#ff0000',
                strokeWeight: 2,
                strokeOpacity: 0.4
            };

            if (feature.getProperty('focus')) {
                styleOptions.fillOpacity = 0.6;
                styleOptions.fillColor = '#0f0';
                styleOptions.strokeColor = '#0f0';
                styleOptions.strokeWeight = 4;
                styleOptions.strokeOpacity = 1;
            }

            return styleOptions;
        });

        regionGeoJson.forEach(function(geojson) {
            map.data.addGeoJson(geojson);
        });

        map.data.addListener('click', function(e) {
            var feature = e.feature;

            if (feature.getProperty('focus') !== true) {
                feature.setProperty('focus', true);
            } else {
                feature.setProperty('focus', false);
            }
        });

        map.data.addListener('mouseover', function(e) {
            var feature = e.feature,
                    regionName = feature.getProperty('area1');

            tooltip.css({
                display: '',
                left: e.offset.x,
                top: e.offset.y
            }).text(regionName);

            map.data.overrideStyle(feature, {
                fillOpacity: 0.6,
                strokeWeight: 4,
                strokeOpacity: 1
            });
        });

        map.data.addListener('mouseout', function(e) {
            tooltip.hide().empty();
            map.data.revertStyle();
        });
    }
</script>

</body>
</html>

