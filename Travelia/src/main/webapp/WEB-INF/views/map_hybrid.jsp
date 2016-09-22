<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <script type="text/javascript" src="<c:url value='/resources/js/example-base.js'/>"></script>
    <script type="text/javascript" src="<c:url value='https://openapi.map.naver.com/openapi/v3/maps.js?clientId=drdLdlwXdcgkoSa00hlT&amp;submodules=panorama'/>"></script>
    <link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/example-base.css'/>">
    <script>
        var HOME_PATH = ''; // CONTEXT PATH FOR PROJECT
    </script>
</head>
<body>

<div id="map3" style="min-height: 100%;"></div>

<script id="code">
    var HOME_PATH = window.HOME_PATH || '.',
            urlPrefix = HOME_PATH +'./resources/data/region/region',
            urlSuffix = '.json',
            regionGeoJson = [],
            loadCount = 0,
            markers = [],
            infoWindows = [];


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

//    var daejeon = naver.maps.LatLng(36.3504119, 127.38454750000005);
    var map3 = new naver.maps.Map(document.getElementById('map3'), {
        zoom: 3,
        mapTypeId: 'hybrid',
//        center: daejeon,
        scaleControl: true,
        logoControl: true,
        zoomControl: false
    });

//    var marker3 = new naver.maps.Marker({
//        position: daejeon,
//        map: map3,
//        animation: 1
//    });

    var tooltip_ = $('<div style="position:absolute;z-index:1000;padding:5px 10px;background-color:#fff;border:solid 2px #000;font-size:14px;pointer-events:none;display:none;"></div>');



    tooltip_.appendTo(map3.getPanes().floatPane);

    function startDataLayer() {
        map3.data.setStyle(function (feature) {
            var styleOptions = {
                fillColor: '#606060',
                fillOpacity: 0.0001,
                strokeColor: '#ffff00',
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

        regionGeoJson.forEach(function (geojson) {
            map3.data.addGeoJson(geojson);
        });
    }


//        Start of click event
        map3.data.addListener('click', function(e) {
            var feature = e.feature,
                regionName = feature.getProperty('area1');
            var code;

            switch(regionName) {
                case "서울특별시":
                    code = 1;
                    break;
                case "인천광역시":
                    code = 2;
                    break;
                case '대전광역시':
                    code = 3
                    break;
                case '대구광역시':
                    code = 4;
                    break;
                case '광주광역시':
                    code = 5;
                    break;
                case '부산광역시':
                    code = 6;
                    break;
                case '울산광역시':
                    code = 7;
                    break;
                case '세종특별자치시':
                    code = 8;
                    break;
                case '경기도':
                    code = 31;
                    break;
                case '강원도':
                    code = 32;
                    break;
                case '충청북도':
                    code = 33;
                    break;
                case '충청남도':
                    code = 34;
                    break;
                case '경상북도':
                    code = 35;
                    break;
                case '경상남도':
                    code = 36;
                    break;
                case '전라북도':
                    code = 37;
                    break;
                case '전라남도':
                    code = 38;
                    break;
                case '제주특별자치도':
                    code = 39;
                    break;
                default:
                    code = 1;
            }

//            console.log(regionName + ' / ' + code );

            var xhr = new XMLHttpRequest();
            xhr.open("GET", "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?" +
                    "ServiceKey=mT7AA8FcGoNUx91TYsnY2xSzr33aNx3h6NqX%2FHYlVIj0rrY%2F3dtaJ25fyOD8GjZoafWkGBeokkEueSETu81kMA%3D%3D&" +
                    "contentTypeId=12&areaCode=" + code + "&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&ContentTypeId=12&MobileApp=TourAPI3.0_Guide&arrange=B&" +
                    "numOfRows=20&pageNo=1&_type=json", false);

            xhr.send();
//            console.log(xhr.status);
//            console.log(xhr.statusText);

            var res = JSON.parse(xhr.responseText);
            //console.log(res);

            //$('div#result').text(response.body.items.item.title);

//                var recode;
//                var recoder =res.response.body.items.item[0].areacode;
//
//                switch(recoder) {
//                case 1:
//                    recode = "서울특별시";
//                    break;
//                case 2:
//                    recode = "인천광역시";
//                    break;
//                case 3:
//                   recode = '대전광역시';
//                    break;
//                case 4:
//                    recode = '대구광역시';
//                    break;
//                case 5:
//                    recode = '광주광역시';
//                    break;
//                case 6:
//                    recode = '부산광역시';
//                    break;
//                case 7:
//                    recode = '울산광역시';
//                    break;
//                case 8:
//                    recode = '세종특별자치시';
//                    break;
//                case 31:
//                    recode = '경기도';
//                    break;
//                case 32:
//                    recode = '강원도';
//                    break;
//                case 33:
//                    recode = '충청북도';
//                    break;
//                case 34:
//                    recode = '충청남도';
//                    break;
//                case 35:
//                    recode = '경상북도';
//                    break;
//                case 36:
//                    recode = '경상남도';
//                    break;
//                case 37:
//                    recode = '전라북도';
//                    break;
//                case 38:
//                    recode = '전라남도';
//                    break;
//                case 39:
//                    recode = '제주특별자치도';
//                    break;
//                default:
//                    recode = 1;
//            }
//
//                $('#result').empty();
//                $('.city').empty();
//                $('.city').append('<h4>'+recode+'</h4>');


               for(var i=0; i<res.response.body.items.item.length; i++) {

                   var coords = naver.maps.LatLng(res.response.body.items.item[i].mapy, res.response.body.items.item[i].mapx);
                   var marker = new naver.maps.Marker({
                       position: coords,
                       map: map3,
                       title: res.response.body.items.item[i].title,
                       animation: 2
                   });

                   var infoWindow = new naver.maps.InfoWindow({
                       content:  [
                           '<div class="iw_inner">',
                           '   <h3>' + res.response.body.items.item[i].title + '</h3>',
                           '   <p>' + res.response.body.items.item[i].addr1 + '<br />',
                           '       <img src=' + res.response.body.items.item[i].firstimage2 +' width="55" height="55" alt="서울시청" class="thumb" /><br />',
                           '   </p>',
                           '</div>'
                       ].join(''),
                       maxWidth: 200,
                       backgroundColor: "#eee",
                       borderColor: "#ffff00",
                       borderWidth: 3.5,
                       anchorSize: new naver.maps.Size(30, 30),
                       anchorSkew: true,
                       anchorColor: "#eee",
                       pixelOffset: new naver.maps.Point(26, -23)
                   });
//                   console.log(infoWindow.content);
                   markers.push(marker);
                   infoWindows.push(infoWindow);
               }
//            marker3.setPosition(e.coord);
//            marker3.setAnimation(2);
        });
// End of click event

    function showMarker(map, marker) {

        if (marker.setMap())
            return;
        marker.setMap(map);
    }

    function hideMarker(map, marker) {

        if (!marker.setMap())
            return;
        marker.setMap(null);
    }

    function updateMarkers(map, markers) {

        var mapBounds = map.getBounds();
        var marker, position;

        for (var i = 0; i < markers.length; i++) {

            marker = markers[i]
            position = marker.getPosition();

            if (mapBounds.hasLatLng(position)) {
                showMarker(map, marker);
            } else {
                hideMarker(map, marker);
            }
        }
    }

        naver.maps.Event.addListener(map3, 'idle', function() {
            updateMarkers(map3, markers);
        })

//        naver.maps.Event.addListener(marker3, "click", function(e) {
//            if (infoWindow.getMap()) {
//                infoWindow.close();
//            } else {
//                infoWindow.open(map3, marker3);
//            }
//        });


        map3.data.addListener('mouseover', function(e) {
            var feature = e.feature,
                    regionName = feature.getProperty('area1');

            tooltip_.css({
                display: '',
                left: e.offset.x,
                top: e.offset.y
            }).text(regionName);

            map3.data.overrideStyle(feature, {
                fillOpacity: 0.6,
                strokeWeight: 4,
                strokeOpacity: 1
            });
        });

        map3.data.addListener('mouseout', function(e) {
            tooltip_.hide().empty();
            map3.data.revertStyle();
        });

        function getClickHandler(seq) {
            console.log("I AM HERE in click handler!");
            return function(e) {
                var marker = markers[seq],
                        infoWindow = infoWindows[seq];

                if (infoWindow.getMap()) {
                    infoWindow.close();
                } else {
                    infoWindow.open(map3, marker);
                }
            }
        }

        for (var i=0; i<markers.length; i++) {
            console.log("hey brother");
            naver.maps.Event.addListener(markers[i], 'click', getClickHandler(i));
        }


</script>

</body>
</html>