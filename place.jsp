<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<title>나이키 매장 위치</title>
<style> 
        #map {
            height: 500px;
            width: 100%;
        }
</style>
</head>
<body>
    <jsp:include page="top_menu.jsp" />
	<div class="jumbotron">
		<div class="container">
            <h1 class="display-3">나이키 매장 위치</h1>
		</div>
	</div>
    <div id="map"></div>
    <script>
        var mapElement = document.getElementById('map');

        // 나이키 매장의 위치 정보
        var nikeStores = [
            { name: '서울 나이키 스토어', location: { lat: 37.5665, lng: 126.978 }, address: '서울특별시' },
            { name: '부산 나이키 스토어', location: { lat: 35.1796, lng: 129.0756 }, address: '부산광역시' },
            { name: '대구 나이키 스토어', location: { lat: 35.8714, lng: 128.6014 }, address: '대구광역시' },
            { name: '인천 나이키 스토어', location: { lat: 37.4563, lng: 126.7052 }, address: '인천광역시' },
            { name: '광주 나이키 스토어', location: { lat: 35.1595, lng: 126.8526 }, address: '광주광역시' },
            { name: '대전 나이키 스토어', location: { lat: 36.3504, lng: 127.3845 }, address: '대전광역시' },
            { name: '울산 나이키 스토어', location: { lat: 35.5384, lng: 129.3114 }, address: '울산광역시' },
            { name: '수원 나이키 스토어', location: { lat: 37.2636, lng: 127.0286 }, address: '경기도 수원시' },
            { name: '용인 나이키 스토어', location: { lat: 37.2411, lng: 127.1776 }, address: '경기도 용인시' },
            { name: '제주 나이키 스토어', location: { lat: 33.4890, lng: 126.4983 }, address: '제주특별자치도' },
            { name: '강릉 나이키 스토어', location: { lat: 37.7519, lng: 128.8755 }, address: '강원도 강릉시' },
            { name: '천안 나이키 스토어', location: { lat: 36.8151, lng: 127.1139 }, address: '충청남도 천안시' },
            { name: '청주 나이키 스토어', location: { lat: 36.6357, lng: 127.4869 }, address: '충청북도 청주시' },
            { name: '전주 나이키 스토어', location: { lat: 35.8242, lng: 127.1479 }, address: '전라북도 전주시' },
            { name: '목포 나이키 스토어', location: { lat: 34.8129, lng: 126.3922 }, address: '전라남도 목포시' },
            { name: '춘천 나이키 스토어', location: { lat: 37.8746, lng: 127.7345 }, address: '강원도 춘천시' },
            { name: '안동 나이키 스토어', location: { lat: 36.5685, lng: 128.7237 }, address: '경상북도 안동시' },
            { name: '진주 나이키 스토어', location: { lat: 35.1796, lng: 128.1076 }, address: '경상남도 진주시' },
            { name: '군산 나이키 스토어', location: { lat: 35.9762, lng: 126.8272 }, address: '전라북도 군산시' },
            { name: '익산 나이키 스토어', location: { lat: 35.9429, lng: 126.9541 }, address: '전라북도 익산시' },
            { name: '여수 나이키 스토어', location: { lat: 34.7448, lng: 127.7388 }, address: '전라남도 여수시' },
            { name: '양산 나이키 스토어', location: { lat: 35.3382, lng: 129.0337 }, address: '경상남도 양산시' },
            { name: '속초 나이키 스토어', location: { lat: 38.2036, lng: 128.5646 }, address: '강원도 속초시' },
            { name: '안산 나이키 스토어', location: { lat: 37.3230, lng: 126.8309 }, address: '경기도 안산시' },
            { name: '고양 나이키 스토어', location: { lat: 37.6584, lng: 126.8312 }, address: '경기도 고양시' },
            { name: '화성 나이키 스토어', location: { lat: 37.1960, lng: 126.8230 }, address: '경기도 화성시' },
            { name: '구미 나이키 스토어', location: { lat: 36.1279, lng: 128.3413 }, address: '경상북도 구미시' },
            { name: '포항 나이키 스토어', location: { lat: 36.0198, lng: 129.3377 }, address: '경상북도 포항시' },
            { name: '김해 나이키 스토어', location: { lat: 35.2346, lng: 128.8816 }, address: '경상남도 김해시' },
            { name: '의정부 나이키 스토어', location: { lat: 37.7389, lng: 127.0339 }, address: '경기도 의정부시' },
            { name: '제천 나이키 스토어', location: { lat: 37.1280, lng: 128.2147 }, address: '충청북도 제천시' },
            { name: '남양주 나이키 스토어', location: { lat: 37.6363, lng: 127.2165 }, address: '경기도 남양주시' },
            { name: '광명 나이키 스토어', location: { lat: 37.4783, lng: 126.8646 }, address: '경기도 광명시' },
            { name: '이천 나이키 스토어', location: { lat: 37.2734, lng: 127.4442 }, address: '경기도 이천시' }
            // 다른 매장 정보 추가 가능
        ];

        function initMap() {
            var map = new google.maps.Map(mapElement, {
                center: { lat: 37.5665, lng: 126.978 },
                zoom: 7 // 초기 확대 수준
            });


            nikeStores.forEach(function(store) {
                var marker = new google.maps.Marker({
                    position: store.location,
                    map: map,
                    title: store.name
                });


                var infowindow = new google.maps.InfoWindow({
                    content: '<strong>' + store.name + '</strong><br>' + store.address
                });

                marker.addListener('click', function() {
                    infowindow.open(map, marker);
                });
            });
        }
    </script>
    <!-- Google Maps API 호출 -->
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCtmdPOMLbg35kocAgjvz166YXE9sJsj14&callback=initMap" async defer></script>

</body>
</html>