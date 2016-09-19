<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
    <div id="map3" style="width:100%;height:450px;"></div>
 </div>

<script id="code">
    var HOME_PATH = window.HOME_PATH || '.',
            urlPrefix = HOME_PATH +'./resources/data/region/region',
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

    var map3 = new naver.maps.Map(document.getElementById('map3'), {
        zoom: 2,
        mapTypeId: 'hybrid',
        center: new naver.maps.LatLng(36.4203004, 128.317960)
    });

    var marker3 = new naver.maps.Marker({
        position: new naver.maps.LatLng(37.5624945,126.97529570000006),
        map: map3,
        animation: 2
    });

    var tooltip_ = $('<div style="position:absolute;z-index:1000;padding:5px 10px;background-color:#fff;border:solid 2px #000;font-size:14px;pointer-events:none;display:none;"></div>');

    tooltip_.appendTo(map3.getPanes().floatPane);

    function startDataLayer() {
        map3.data.setStyle(function(feature) {
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
            map3.data.addGeoJson(geojson);
        });

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

            console.log(regionName + ' / ' + code );


            var xhr = new XMLHttpRequest();
            xhr.open("GET", "http://api.visitkorea.or.kr/openapi/service/rest/KorService/areaBasedList?" +
                    "ServiceKey=mT7AA8FcGoNUx91TYsnY2xSzr33aNx3h6NqX%2FHYlVIj0rrY%2F3dtaJ25fyOD8GjZoafWkGBeokkEueSETu81kMA%3D%3D&" +
                    "contentTypeId=12&areaCode=" + code + "&sigunguCode=&cat1=&cat2=&cat3=&listYN=Y&MobileOS=ETC&ContentTypeId=12&MobileApp=TourAPI3.0_Guide&arrange=A&" +
                    "numOfRows=10&pageNo=1&_type=json", false);

            xhr.send();
            console.log(xhr.status);
            console.log(xhr.statusText);

            var res = JSON.parse(xhr.responseText);
            console.log(res);

            //$('div#result').text(response.body.items.item.title);

            $('#result').empty();
            for(i=0; i<res.response.body.items.item.length; i++) {
                console.log(res.response.body.items.item[i].title);
                $('#result').append("<p>" +  res.response.body.items.item[i].title + "</p>");
            }
//            var feature = e.feature;
//
//            if (feature.getProperty('focus') !== true) {
//                feature.setProperty('focus', true);
//            } else {
//                feature.setProperty('focus', false);
//            }


            marker3.setPosition(e.coord);
            marker3.setAnimation(2);


        });

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
    }
</script>

</body>
</html>

