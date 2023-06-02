<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- Hearder Start -->
<!DOCTYPE html>
<html>

<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="title" content="(주)도담도담컴퍼니">
<meta name="Keywords"
	content="도담도담 , 도담도담컴퍼니, 도담반려견, 강형욱, 반려견훈련, 훈련사, 애견훈련, 도담샵, 도담숍, 영상교육, 반려견교육">
<meta name="Description" content="혼내지 않아도, 혼나지 않아도 되는 반려견 교육. 도담도담컴퍼니">
 <script type="text/javascript" src="../../../resources/JSfiles/jquery-3.0.0.min.js"></script>
<script type='text/javascript' src="../../../resources/JSfiles/webslidemenu.js"></script>
<script type='text/javascript' src="../../../resources/JSfiles/menu.js"></script>
<script type='text/javascript' src='../../../resources/JSfiles/placeholders.js'></script>
<script type='text/javascript' src='../../../resources/JSfiles/photo-viewer.js'></script>
<script type='text/javascript' src='../../../resources/JSfiles/owl.carousel.js'></script>
<script type='text/javascript' src="../../../resources/JSfiles/function.js"></script>
<script type="text/javascript" src="../../../resources/JSfiles/wcslog.js"></script>
<script type="text/javascript" src="../../../resources/JSfiles/1.8jquery.min.js"></script>

 <link rel="stylesheet" type="text/css" href="../../../resources/JSfiles/common.css" />
    <link rel="stylesheet" type="text/css" href="../../../resources/JSfiles/slider.css" />
    <link rel="stylesheet" type="text/css" href="../../../resources/JSfiles/main.css" />
    <link rel="stylesheet" type="text/css" href="../../../resources/JSfiles/slick.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/JSfiles/slick-theme.css">
    <link rel="stylesheet" type="text/css" href="../../../resources/JSfiles/owl.carousel.css"> 
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Page-Enter"
	content="revealtrans(duration=1,transition=12)">
<META HTTP-EQUIV="Imagetoolbar" content="no">
<!-- 전화번호 자동링크 없앨때 -->
<meta name="format-detection" content="telephone=no" />
<link rel="shortcut icon" href="/html/common/img/favicon.ico"
	type="image/x-icon">
<link rel="icon" href="/html/common/img/favicon-32x32.png"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="/html/common/img/apple-icon-precomposed.png" />
<link rel="apple-touch-icon-precomposed"
	href="/html/common/img/apple-icon-precomposed.png" />
<script type="text/javascript"
	src="../../../resources/JSfiles/jquery-3.0.0.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/common.css?v=1" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/slider.css" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/main.css" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/slick.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/slick-theme.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/owl.carousel.css">
<link rel="canonical" href="../../../resources/JSfiles/index.php" />
<link rel="stylesheet" href="../../../resources/JSfiles/layout.css">
<title>Dodam Dodam</title>


<script>
		//FAQ jquery
		//Accordian Action
		var action = 'click';
		var speed = "500";

		//Document.Ready
		$(document).ready(function () {
			//Question handler
			$('.faqAccodion li.q').on(action, function () {
				//gets next element
				//opens .a of selected question
				$(this).next().slideToggle(speed)
					//selects all other answers and slides up any open answer
					.siblings('.faqAccodion li.a').slideUp();

				//Grab img from clicked question
				var img = $(this).children('img');
				//Remove Rotate class from all images except the active
				$('img').not(img).removeClass('rotate');
				//toggle rotate class
				img.toggleClass('rotate');

			});//End on click

		});//End Ready

		
	</script>
<script src="../../../resources/JSfiles/postcode.v2.js"></script>
<script src="../../../resources/JSfiles/DaumPostcode.js"></script>

<script type="text/javascript">
		if (!wcs_add) var wcs_add = {};
		wcs_add["wa"] = "6238a009c0eed0";
		wcs_do();
	</script>

<script>
		!function (f, b, e, v, n, t, s) {
			if (f.fbq) return; n = f.fbq = function () {
				n.callMethod ?
				n.callMethod.apply(n, arguments) : n.queue.push(arguments)
			};
			if (!f._fbq) f._fbq = n; n.push = n; n.loaded = !0; n.version = '2.0';
			n.queue = []; t = b.createElement(e); t.async = !0;
			t.src = v; s = b.getElementsByTagName(e)[0];
			s.parentNode.insertBefore(t, s)
		}(window, document, 'script',
			'../../../resources/JSfiles/fbevents.js');
		fbq('init', '196060698866289');
		fbq('track', 'PageView');
	</script>
	
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=196060698866289&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->

</head>

<body>
	<div class="wsmenucontainer clearfix bodeum-shop">
		<div class="overlapblackbg"></div>

		<div class="wsmobileheader clearfix" id="m_header">
			<div class="mobileheder-wrap">
				<a id="wsnavtoggle" class="animated-arrow"><span></span></a>
				<div class="logo">
					<img src="../../../resources/Bodeum_files/logo.jpg"
						alt="도담_mobile_edu">
				</div>
				<a id="wsnavtoggle02" class="animated02-arrow"><img
					src="../../../resources/Bodeum_files/left-menuIcon.png"></a>
			</div>
		</div>
		<div id="header" class="header pcVer">
			<div class="header_inner">
				<div class="headerFull">
					<nav>
						<ul id="cd-navigation">
							<!--170725 디트리 링크 수정-->
							<li><a href="/bodeum/edu/main" class="on">도담교육</a></li>
							<li><a href="/bodeum/shop/body" >도담숍</a></li>
						</ul>
					</nav>
					<!-- .cd-primary-nav -->
					<h1 class="logo">
						<img src="../../../resources/Bodeum_files/logo.jpg" alt="도담_pc" width="350px;">
					</h1>
					<!-- all menu -->
					<!-- right menu -->
					<div class="right_menu">
						<ul>
							<li>
								<c:if test="${user ne null}">
									<a>${user.name }님 ㅎㅇ</a>
									<li><div onclick="logout()"><a href="#">로그아웃</a></div></li>
								</c:if>
								<c:if test="${user eq null}">
									<li><div onclick="login()"><a href="#">로그인</a></div></li>
								</c:if>
							</li>
						<li><a href="/bodeum/mypage/main">마이페이지</a></li>
						<li><a href="/bodeum/shop/customer">고객센터</a></li>
						<li><a href="/bodeum/mypage/orderList">주문조회</a></li>
						<!--170811 추가-->
						<li><a href="/bodeum/mypage/cart" class="cart">장바구니</a></li>
						</ul>
					</div>
					<script type="text/javascript"
						src="../../../resources/JSfiles/wcslog.js"></script>
					<script type="text/javascript">
						if (!wcs_add) var wcs_add = {};
						wcs_add["wa"] = "5996c8d9e51f18";
						wcs_do();
					</script>
				</div>
				<!-- //all menu -->


				<!-- Menu Edu -->
				<div class="hd-menu">
					<div class="wrap_gnb">
						<!-- gnb -->
						<ul class="gnb shop_gnb">
							<li><a href="/bodeum/edu/main">HOME</a></li>
							<!-- [D] 마우스 오버시 .on 추가 -->
							<!--<li><a href="/shop/menu.php?part_idx=all">ALL</a></li>-->
							<li><a href="/bodeum/edu/company">보듬이란</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/edu/company">회사소개</a></li>
									<li><a href="/bodeum/edu/map">오시는길</a></li>
								</ol>
							</li>
							<li><a href="/bodeum/edu/video">교육방법</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/edu/video">영상교육</a></li>
									<li><a href="/bodeum/edu/group">그룹레슨</a></li>
									<li><a href="/bodeum/edu/single">개인레슨</a></li>
								</ol>
							</li>
							<li><a href="/bodeum/edu/edulist">교육신청</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/edu/edulist">교육회원 가입</a></li>
									<li><a href="/bodeum/edu/edugroup">그룹회원 가입</a></li>
									<li><a href="/bodeum/edu/edusingle">개인회원 가입</a></li>
								</ol>
							</li>
							<li><a href="/bodeum/edu/eduboardlist">커뮤니티</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/edu/eduboardlist">커뮤니티</a></li>
								</ol>
							</li>
						</ul>
					</div>
				</div>
				<script type="text/javascript"
					src="../../../resources/JSfiles/wcslog.js"></script>
				<script type="text/javascript">
					if (!wcs_add) var wcs_add = {};
					wcs_add["wa"] = "5996c8d9e51f18";
					wcs_do();
				</script>
				<!-- Menu Shop -->
			</div>
		</div>

		<script>
		$(".header .gnb.shop_gnb > li .sub-menu").hide();
	    $(".header .gnb.shop_gnb > li").on('mouseenter',function(){
	        $(".header .gnb.shop_gnb > li .sub-menu").stop().hide().animate({'opacity':0},50);
	        $(this).find('.sub-menu').stop().animate({'opacity':1},300).show();
	    });
		$(".header .gnb.shop_gnb > li").on('mouseleave',function(){
	       $(".header .gnb.shop_gnb > li .sub-menu").stop().hide();
	    });

		</script>

		<header id="header" class="tabletVer">
			<div class="hd_wrap">
				<div class="hd">
					<div class="headerfull">
					
						<div class="wsmenu02 clearfix">
							<div class="cd-primary-nav">
								<div class="thumb">
									<div class="ratio4 thumbnail-wrapper">
										<div class="thumbnail">
											<div class="centered">
												<img
													src="../../../resources/Bodeum_files/no-image-thumb.jpg"
													class="landscape">
											</div>
										</div>
									</div>
								</div>
								<c:if test="${user ne null}">
									<p class="name">${user.name } 님 안녕하세요</p>
									<div onclick="logout()"><a href="#">로그아웃</a></div>
								</c:if>
								<c:if test="${user eq null}">
								<div class="login-info">
									<div onclick="login()"><a href="#">로그인</a></div>
								</div>
								</c:if>
							</div>

							<div class="mypage-menu">
								<ul>
									<li><a href="/html/common_ui/order/cart.php"> <img
											src="../../../resources/Bodeum_files/menu-icon1.png">
											<p>장바구니</p>
									</a></li>
									<li><a href="/html/common_ui/mypage/orderList.php"> <img
											src="../../../resources/Bodeum_files/menu-icon2.png">
											<p>주문관리</p>
									</a></li>
									<li><a href="/html/common_ui/mypage/coupon.php"> <img
											src="../../../resources/Bodeum_files/menu-icon3.png">
											<p>쿠폰</p>
									</a></li>
									<li><a href="/html/common_ui/mypage/point.php"> <img
											src="../../../resources/Bodeum_files/menu-icon4.png">
											<p>적립금</p>
									</a></li>
								</ul>
							</div>
							
						</div>
						<!--2st Menu HTML Code-->
					</div>
				</div>
			</div>
		
		</header>
		</div>
</body>
<script type="text/javascript">

function logout(){
	self.location="/bodeum/edu/logout";
}

function login(){
	self.location="/bodeum/edu/login";
}

</script>



		<!-- Header End -->
</html>