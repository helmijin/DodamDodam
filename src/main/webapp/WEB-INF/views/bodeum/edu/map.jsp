<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link href="../../../resources/css/main.css" rel="stylesheet" type="text/css">
	<link href="../../../resources/css/common.css" rel="stylesheet" type="text/css">
	<link href="../../../resources/css/slick.css" rel="stylesheet" type="text/css">
	<link href="../../../resources/css/slick-theme.css" rel="stylesheet" type="text/css">
	<link href="../../../resources/css/slider.css" rel="stylesheet" type="text/css">



<title>오시는길</title>
</head>
<body>
<header>
				<%@include file="../includes/header2.jsp"%>
		</header>
<div class="wsmenucontainer clearfix ">

        <div id="wrapper">
            <div class="containerWrap">
                <div class="page-title-top bodeum-page-title">
                    <h2 class="page-title">오시는길</h2>
                </div>
                <div class="page-title-menu bodeum-page-menu">
                    <ul>
                        <li><a><div onclick="company()"> 회사소개</div></a></li>
                        <!--<li><a href="../bodeum/media.php">#보듬</a></li>-->
                      	<li class="on"><a><div onclick="maps()"> 오시는길</div></a></li>
                        <!--<li class="blind"><a href="../bodeum/trainer.php">훈련사 소개</a></li>-->
                    </ul>
                </div>
                
                <!--ul class="tabs lo_tabs tac">
                    <li class="active"><a href="../bodeum/location3.php">오남 캠퍼스</a></li>
                    <li><a href="../bodeum/location2.php">마곡 캠퍼스</a></li>
                </ul-->
                
                <div class="content minH-auto">
                    <div class="inner-contents bodeum-location">
                    
                    
                 
                    
                    
                       <div id="map" style="width: 100%; position: relative; overflow: hidden; background: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/bg_tile.png&quot;);">
                        <div style="position: absolute; left: 0px; top: 0px; width: 100%; height: 100%; touch-action: none; cursor: url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;) 7 5, url(&quot;https://t1.daumcdn.net/mapjsapi/images/2x/cursor/openhand.cur.ico&quot;), default;">
                        <div style="position: absolute; left: -253px; top: 111px;">
                        <div style="position: absolute; z-index: 0; display: none;"></div>
                        <div style="position: absolute; z-index: 1; left: 0px; top: 0px;">
                        <img src="https://map3.daumcdn.net/map_2d_hd/2212ejo/L4/1026/483.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 147px; top: 107px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map0.daumcdn.net/map_2d_hd/2212ejo/L4/1026/484.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 403px; top: 107px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map1.daumcdn.net/map_2d_hd/2212ejo/L4/1026/485.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 659px; top: 107px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map2.daumcdn.net/map_2d_hd/2212ejo/L4/1026/486.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 915px; top: 107px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map3.daumcdn.net/map_2d_hd/2212ejo/L4/1027/483.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 147px; top: -149px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map0.daumcdn.net/map_2d_hd/2212ejo/L4/1027/484.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 403px; top: -149px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map1.daumcdn.net/map_2d_hd/2212ejo/L4/1027/485.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 659px; top: -149px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map2.daumcdn.net/map_2d_hd/2212ejo/L4/1027/486.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 915px; top: -149px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map3.daumcdn.net/map_2d_hd/2212ejo/L4/1026/487.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1171px; top: 107px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map3.daumcdn.net/map_2d_hd/2212ejo/L4/1027/487.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1171px; top: -149px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map3.daumcdn.net/map_2d_hd/2212ejo/L4/1028/483.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 147px; top: -405px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map0.daumcdn.net/map_2d_hd/2212ejo/L4/1028/484.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 403px; top: -405px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map1.daumcdn.net/map_2d_hd/2212ejo/L4/1028/485.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 659px; top: -405px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map2.daumcdn.net/map_2d_hd/2212ejo/L4/1028/486.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 915px; top: -405px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        <img src="https://map3.daumcdn.net/map_2d_hd/2212ejo/L4/1028/487.png" alt="" role="presentation" draggable="false" style="position: absolute; user-select: none; -webkit-user-drag: none; min-width: 0px; min-height: 0px; max-width: none; max-height: none; left: 1171px; top: -405px; opacity: 1; transition-property: opacity; transition-duration: 0.2s; transition-timing-function: ease; width: 256px; height: 256px;">
                        </div>
                        <div style="position: absolute; z-index: 1;">
                        </div>
                        <div style="width: 878px; height: 400px; position: absolute; z-index: 1;">
                        </div>
                        <div style="position: absolute; z-index: 1;">
                        <svg version="1.1" style="stroke: none; stroke-dashoffset: 0.5; stroke-linejoin: round; fill: none; transform: translateZ(0px); position: absolute; left: -1503px; top: -911px; width: 4390px; height: 2000px;" viewBox="0 0 4390 2000"><defs></defs>
                        </svg>
                        </div>
                        <div style="position: absolute; z-index: 1; width: 100%; height: 0px; transform: translateZ(0px);"><div style="position: absolute; margin: -39px 0px 0px -14px; z-index: 0; left: 692px; top: 89px; display: block;">
                        <img draggable="false" src="https://t1.daumcdn.net/mapjsapi/images/2x/marker.png" alt="" role="presentation" title="" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; clip: rect(0px, 29px, 42px, 0px); top: 0px; left: 0px; width: 29px; height: 42px;">
                        <img src="https://t1.daumcdn.net/mapjsapi/images/2x/transparent.gif" alt="" role="presentation" draggable="false" usemap="#daum.maps.Marker.Area:1" style="min-width: 0px; min-height: 0px; max-width: 99999px; max-height: none; border: 0px; display: block; position: absolute; user-select: none; -webkit-user-drag: none; width: 29px; height: 42px;">
                        <map id="daum.maps.Marker.Area:1" name="daum.maps.Marker.Area:1">
                        <area href="javascript:void(0)" alt="" role="presentation" shape="poly" coords="14,39,9,27,4,21,1,16,1,10,4,4,11,0,18,0,25,4,28,10,28,16,25,21,20,27" title="" style="-webkit-tap-highlight-color: transparent;"></map></div>
                        <div style="cursor: default; position: absolute; background: rgb(255, 255, 255); border: 1px solid rgb(118, 129, 168); z-index: 0; display: block; width: 350px; height: 31px; left: 517px; top: 10px;">
                        <div style="position: absolute; width: 11px; height: 9px; background: url(&quot;https://t1.daumcdn.net/localimg/localimages/07/mapjsapi/2x/triangle.png&quot;) 0% 0% / 11px 9px no-repeat; left: 169px; top: 31px;"></div>
                        <div class="" style="position: absolute; left: 0px; top: 0px;"><div style="width:350px; line-height:19px; vertical-align:middle; text-align:center;padding:6px;">경기도 남양주시 오남읍 진건오남로667번길 64-33</div></div></div></div></div></div>
                        <div style="position: absolute; cursor: default; z-index: 1; margin: 0px 6px; height: 19px; line-height: 14px; left: 0px; bottom: 0px; color: rgb(0, 0, 0);"><div style="color: rgb(0, 0, 0); text-align: center; font-size: 10px; float: left;"><div style="float: left; margin: 2px 3px 0px 4px; height: 6px; transition: width 0.1s ease 0s; border-top: none rgb(0, 0, 0); border-right: 2px solid rgb(0, 0, 0); border-bottom: 2px solid rgb(0, 0, 0); border-left: 2px solid rgb(0, 0, 0); border-image: initial; width: 46px;"></div>
                        <div style="float: left; margin: 0px 4px 0px 0px; font-family: AppleSDGothicNeo-Regular, 돋움, dotum, sans-serif; font-weight: bold; color: rgb(0, 0, 0);">100m</div></div><div style="margin: 0px 4px; float: left;"><a target="_blank" href="http://map.kakao.com/" title="Kakao 지도로 보시려면 클릭하세요." style="float: left; width: 32px; height: 10px;">
                        <img src="https://t1.daumcdn.net/mapjsapi/images/2x/m_bi_b.png" alt="Kakao 지도로 이동" style="float: left; width: 32px; height: 10px; border: none;"></a><div style="font: 11px / 11px Arial, Tahoma, Dotum, sans-serif; float: left;"></div></div></div><div style="cursor: auto; position: absolute; z-index: 2; left: 0px; top: 0px;"></div></div>

                        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=00b1a1bad8958f2e7bbbfd23895b8bfa">
                        </script>
                        <script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/main/4.4.8/kakao.js">
                        </script>
                        <script charset="UTF-8" src="https://t1.daumcdn.net/mapjsapi/js/libs/services/1.0.2/services.js">
                        </script>
                        <script>
                        var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
                            mapOption = {
                              center: new daum.maps.LatLng(36.450701, 127.0000), // 지도의 중심좌표
                              level: 4 // 지도의 확대 레벨
                            };  

                            // 지도를 생성합니다    
                            var map = new daum.maps.Map(mapContainer, mapOption); 

                            // 주소-좌표 변환 객체를 생성합니다
                            var geocoder = new daum.maps.services.Geocoder();

                            // 주소로 좌표를 검색합니다
                            geocoder.addressSearch('경기도 수원시 팔달구 덕영대로 899', function(result, status) {

                                // 정상적으로 검색이 완료됐으면 
                                 if (status === daum.maps.services.Status.OK) {

                                    var coords = new daum.maps.LatLng(result[0].y, result[0].x);
                                    
                                    // 결과값으로 받은 위치를 마커로 표시합니다
                                    var marker = new daum.maps.Marker({
                                        map: map,
                                        position: coords
                                    });

                                    // 마커가 지도 위에 표시되도록 설정합니다
                                    marker.setMap(map);

                                    // 인포윈도우로 장소에 대한 설명을 표시합니다
                              var infowindow = new daum.maps.InfoWindow({
                                content: '<div style="width:350px; line-height:19px; vertical-align:middle; text-align:center;padding:6px;">경기도 수원시 팔달구 덕영대로 899</div>'
                              });
                              infowindow.open(map, marker);

                              // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
                              map.setCenter(coords);

                                } 
                            }); 
                            
                            </script> 
                            
                        <div class="section">
                            
                            <div class="map-location">
                                <h2>정환이네</h2>
                                <div class="address">경기도 수원시 팔달구 덕영대로 899</div>
                                <div class="tel">대표전화 : <strong>010-0000-0000</strong></div>
                                <div class="hour">업무 시간 12:30 - 13:00 / 점심시간 13:00 - 15:00</div>
                                <div class="holiday">토,일,월 공휴일은 휴무입니다.</div>
                            </div>
                        </div>
                      <!--   <div class="imgArea lacationImg"><img src="../../../resources/img/jhdie.jpg"></div> -->
                    </div>
                </div> <!-- 남양주 캠퍼스  -->
            </div>
        </div>
 </div>


<footer>
			<%@include file="../includes/footer.jsp"%>
		</footer>
</body>

<script type="text/javascript">

function company(){
	self.location="/bodeum/edu/company";
}

function maps(){
	self.location="/bodeum/edu/map";
}


</script>

</html>