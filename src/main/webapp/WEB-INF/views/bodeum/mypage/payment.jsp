<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">
<meta name="title" content="(주)보듬컴퍼니">
<meta name="Keywords"
	content="보듬 , 보듬컴퍼니, 보듬반려견, 강형욱, 반려견훈련, 훈련사, 애견훈련, 보듬샵, 보듬숍, 영상교육, 반려견교육">
<meta name="Description" content="혼내지 않아도, 혼나지 않아도 되는 반려견 교육. 보듬컴퍼니">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Pragma" content="no-cache">
<meta http-equiv="Page-Enter"
	content="revealtrans(duration=1,transition=12)">
<meta http-equiv="Imagetoolbar" content="no">
<!-- 전화번호 자동링크 없앨때 -->
<meta name="format-detection" content="telephone=no">
<link rel="shortcut icon"
	href="/resources/bodeum.co.kr/html/common/img/favicon.ico"
	type="image/x-icon">
<link rel="icon"
	href="/resources/bodeum.co.kr/html/common/img/favicon-32x32.png"
	type="image/x-icon">
<link rel="apple-touch-icon"
	href="/resources/bodeum.co.kr/html/common/img/apple-icon-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/resources/bodeum.co.kr/html/common/img/apple-icon-precomposed.png">
<meta property="og:type" content="website">
<meta property="og:title" content="Bodeum">
<meta property="og:url"
	content="https://bodeum.co.kr/html/common_ui/order/payment.php?trade_code=JRYEQ1675903350">
<meta property="og:description" content="">
<meta property="og:image"
	content="https://www.bodeum.co.kr/html/common/img/linkLogo.jpg">
<meta name="twitter:card" content="summary">
<meta name="twitter:site"
	content="https://bodeum.co.kr/html/common_ui/order/payment.php?trade_code=JRYEQ1675903350">
<meta name="twitter:title" content="Bodeum">
<meta name="twitter:description"
	content="혼내지 않아도, 혼나지 않아도 되는 반려견 교육. 보듬컴퍼니">
<meta name="twitter:image"
	content="https://www.bodeum.co.kr/html/common/img/linkLogo.jpg">
<link rel="canonical"
	href="https://bodeum.co.kr/html/common_ui/order/payment.php?trade_code=JRYEQ1675903350">


<meta name="naver-site-verification"
	content="4497b0597d1e8134f7b43a80175426ea00c948bc">
<meta property="fb:app_id" content="164353687461867">
<meta name="google-site-verification"
	content="32CPIABEZDhDK1LwvrEJ2qiLjll9pfamJ3FeEJv7C10">
<meta name="facebook-domain-verification"
	content="w3cm2m9ij6nolwak7ygombgb66v1ve">
<script type="text/javascript" async=""
	src="https://www.google-analytics.com/analytics.js"></script>
<script
	src="https://connect.facebook.net/signals/config/196060698866289?v=2.9.95&amp;r=stable"
	async=""></script>
<script
	src="https://connect.facebook.net/signals/config/2464508087174160?v=2.9.95&amp;r=stable"
	async=""></script>
<script async="" src="https://connect.facebook.net/en_US/fbevents.js"></script>
<script type="text/javascript" src="/html/common/js/jquery-3.0.0.min.js"></script>

<script type="text/javascript"
	src="/resources/bodeum.co.kr/html/common/js/webslidemenu.js"></script>
<script type="text/javascript"
	src="/resources/bodeum.co.kr/html/common/js/menu.js"></script>
<script type="text/javascript"
	src="/resources/bodeum.co.kr/html/common/js/placeholders.js"></script>
<script type="text/javascript"
	src="/resources/bodeum.co.kr/html/common/js/photo-viewer.js"></script>
<script type="text/javascript"
	src="/resources/bodeum.co.kr/html/common/js/function.js?date=20230209_02"></script>
<script type="text/javascript" src="https://wcs.naver.net/wcslog.js"></script>
<script type="text/javascript">
	if (!wcs_add)
		var wcs_add = {};
	wcs_add["wa"] = "6238a009c0eed0";
	wcs_do();
</script>

<link rel="stylesheet" type="text/css"
	href="/resources/bodeum.co.kr/html/common/css/common.css?v=1">
<link rel="stylesheet" type="text/css"
	href="/resources/bodeum.co.kr/html/common/css/slider.css">
<link rel="stylesheet" type="text/css"
	href="/resources/bodeum.co.kr/html/common/css/main.css">
<link rel="stylesheet" type="text/css"
	href="/resources/bodeum.co.kr/html/common/css/slick.css">
<link rel="stylesheet" type="text/css"
	href="/resources/bodeum.co.kr/html/common/css/slick-theme.css">

<title>Bodeum</title>
<script>
	//ios10 축소확대기능 끄기
	document.documentElement.addEventListener('touchstart', function(event) {
		if (event.touches.length > 1) {
			event.preventDefault();
		}
	}, false);
</script>

<script>
	//FAQ jquery
	//Accordian Action
	var action = 'click';
	var speed = "500";

	//Document.Ready
	$(document).ready(function() {
		//Question handler
		$('.faqAccodion li.q').on(action, function() {
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

<!-- Daum 우편번호 -->
<!--	<script src="https://spi.maps.daum.net/imap/map_js_init/postcode.v2.js"></script>-->
<script
	src="/resources/t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script src="/resources/bodeum.co.kr/html/common/js/DaumPostcode.js"></script>


<!-- 픽셀추가:s-->
<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
			'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '2464508087174160');
	fbq('track', 'PageView');
</script>

<!-- 카카오 모먼트 픽셀 추가:s-->
<!-- Kakao Pixel Code -->

<script type="text/javascript" charset="UTF-8"
	src="/resources/t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
	kakaoPixel('4634556370104107431').pageView();
</script>

<!-- Kakao Pixel Code end -->

<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=2464508087174160&ev=PageView&noscript=1" />
</noscript>

<!-- End Facebook Pixel Code -->
<!-- 픽셀추가:e-->

<!-- 요청 : 20.10.19 : bkmin -->
<!-- Global site tag (gtag.js) - Google Analytics -->
<script async=""
	src="https://www.googletagmanager.com/gtag/js?id=UA-173956953-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('set', 'dimension1', '112.148.244.244');
	gtag('set', 'dimension2', '2023-02-09 09:42:30');
	gtag('config', 'UA-173956953-1');

	gtag('event', 'IP_dimension', {
		'IP' : '112.148.244.244'
	}, 'Date_dimension', {
		'Date' : '2023-02-09 09:42:30'
	});
</script>
<!-- End Google Analytics-->

<!-- 요청 : 구글 애드워즈 스크립트 추가 // 20.08.11 : bkmin -->
<!-- Global site tag (gtag.js) - Google Ads: 830632214 -->
<script async=""
	src="https://www.googletagmanager.com/gtag/js?id=AW-830632214"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('config', 'AW-830632214');
</script>

<!-- Facebook Pixel Code -->
<script>
	!function(f, b, e, v, n, t, s) {
		if (f.fbq)
			return;
		n = f.fbq = function() {
			n.callMethod ? n.callMethod.apply(n, arguments) : n.queue
					.push(arguments)
		};
		if (!f._fbq)
			f._fbq = n;
		n.push = n;
		n.loaded = !0;
		n.version = '2.0';
		n.queue = [];
		t = b.createElement(e);
		t.async = !0;
		t.src = v;
		s = b.getElementsByTagName(e)[0];
		s.parentNode.insertBefore(t, s)
	}(window, document, 'script',
			'https://connect.facebook.net/en_US/fbevents.js');
	fbq('init', '196060698866289');
	fbq('track', 'PageView');
</script>
<noscript>
	<img height="1" width="1" style="display: none"
		src="https://www.facebook.com/tr?id=196060698866289&ev=PageView&noscript=1" />
</noscript>
<!-- End Facebook Pixel Code -->

<meta http-equiv="origin-trial"
	content="A751Xsk4ZW3DVQ8WZng2Dk5s3YzAyqncTzgv+VaE6wavgTY0QHkDvUTET1o7HanhuJO8lgv1Vvc88Ij78W1FIAAAAAB7eyJvcmlnaW4iOiJodHRwczovL3d3dy5nb29nbGV0YWdtYW5hZ2VyLmNvbTo0NDMiLCJmZWF0dXJlIjoiUHJpdmFjeVNhbmRib3hBZHNBUElzIiwiZXhwaXJ5IjoxNjgwNjUyNzk5LCJpc1RoaXJkUGFydHkiOnRydWV9">
<script type="text/javascript" async=""
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/830632214/?random=1675903349904&amp;cv=11&amp;fst=1675903349904&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3280&amp;u_w=1536&amp;u_h=864&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Fpayment.php%3Ftrade_code%3DJRYEQ1675903350&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Forder_insert.php%3Fgubun%3Dgoods%26trade_method%3D4&amp;tiba=Bodeum&amp;auid=2059486910.1674639085&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Chromium%3B110.0.5481.77%7CNot%2520A(Brand%3B24.0.0.0%7CGoogle%2520Chrome%3B110.0.5481.77&amp;uamb=0&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script>
</head>
<body class="fix-body">
	<iframe allow="join-ad-interest-group" data-tagging-id="AW-830632214"
		data-load-time="1675903349911" height="0" width="0"
		style="display: none; visibility: hidden;"
		src="https://td.doubleclick.net/td/rul/830632214?random=1675903349904&amp;cv=11&amp;fst=1675903349904&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3280&amp;u_w=1536&amp;u_h=864&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Fpayment.php%3Ftrade_code%3DJRYEQ1675903350&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Forder_insert.php%3Fgubun%3Dgoods%26trade_method%3D4&amp;tiba=Bodeum&amp;auid=2059486910.1674639085&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Chromium%3B110.0.5481.77%7CNot%2520A(Brand%3B24.0.0.0%7CGoogle%2520Chrome%3B110.0.5481.77&amp;uamb=0&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;data=event%3Dgtag.config"></iframe>
	<div class="wsmenucontainer clearfix ">
		<div class="overlapblackbg"></div>

		<div class="wsmobileheader clearfix fixed" id="m_header">
			<div class="mobileheder-wrap">
				<a id="wsnavtoggle" class="animated-arrow"><span></span></a>
				<div class="logo">
					<img src="/resources/bodeum.co.kr/html/common/img/logo.png"
						alt="보듬_mobile_edu">
				</div>
				<a id="wsnavtoggle02" class="animated02-arrow"><img
					src="/resources/bodeum.co.kr/html/common/img/left-menuIcon.png"></a>
			</div>
		</div>
		<div id="header" class="header pcVer fixed">
			<div class="header_inner">
				<div class="headerFull">
					<nav>
						<ul id="cd-navigation">
							<!--170725 디트리 링크 수정-->
							<li><a
								href="/resources/bodeum.co.kr/html/edu_movie/index.php">보듬교육</a></li>
							<li><a href="/resources/bodeum.co.kr/html/shop/index.php">보듬숍</a></li>
						</ul>
					</nav>
					<!-- .cd-primary-nav -->
					<h1 class="logo">
						<img src="/resources/bodeum.co.kr/html/common/img/logo.png"
							alt="보듬_pc">
					</h1>
					<!-- all menu -->
					<!-- right menu -->
					<div class="right_menu">
						<ul>
							<li><a
								href="/resources/bodeum.co.kr/html/common_ui/member/login_ok.php?logout=1"
								class="login">로그아웃</a></li>
							<li><a
								href="/resources/bodeum.co.kr/html/common_ui/mypage/mypage_index.php">마이페이지</a></li>
							<li><a href="/html/common_ui/customer/customer.php">고객센터</a></li>
							<li><a
								href="/bodeum/orderList">주문조회</a></li>
							<!--170811 추가-->
							<li><a
								href="/bodeum/cart"
								class="cart">장바구니</a></li>
						</ul>
					</div>
					<script type="text/javascript"
						src="https://wcs.naver.net/wcslog.js"></script>
					<script type="text/javascript">
						if (!wcs_add)
							var wcs_add = {};
						wcs_add["wa"] = "5996c8d9e51f18";
						wcs_do();
					</script>
				</div>
				<!-- //all menu -->


				<!-- Menu Edu -->
				<!-- Menu Edu -->
				<!-- Menu Shop -->
				<!-- Menu Shop -->
			</div>
		</div>

		<script>
			$(".header .gnb.shop_gnb > li .sub-menu").hide();
			$(".header .gnb.shop_gnb > li").on(
					'mouseenter',
					function() {
						$(".header .gnb.shop_gnb > li .sub-menu").stop().hide()
								.animate({
									'opacity' : 0
								}, 50);
						$(this).find('.sub-menu').stop().animate({
							'opacity' : 1
						}, 300).show();
					});
			$(".header .gnb.shop_gnb > li").on('mouseleave', function() {
				$(".header .gnb.shop_gnb > li .sub-menu").stop().hide();
			});
		</script>
		<header id="header" class="tabletVer">
			<div class="hd_wrap">
				<div class="hd">
					<div class="headerfull">
						<!--Main Menu HTML Code-->
						<!-- Menu Edu -->
						<div class="wsmain">
							<div class="smllogo">
								<div class="logo">
									<img src="/resources/bodeum.co.kr/html/common/img/logo.png"
										alt="보듬_mobile_shop">
								</div>
							</div>
							<nav class="wsmenu clearfix">
								<div class="cd-primary-nav">
									<ul id="cd-navigation">
										<!--170725 디트리 링크 수정-->
										<li><a
											href="/resources/bodeum.co.kr/html/edu_movie/index.php"
											class="on">보듬교육</a></li>
										<li><a href="/resources/bodeum.co.kr/html/shop/index.php">보듬숍</a></li>
									</ul>
								</div>
								<!-- .cd-primary-nav -->
								<ul class="mobile-sub wsmenu-list clearfix">
									<li><span class="wsmenu-click"><i
											class="wsmenu-arrow fa fa-angle-down"></i></span><a href="#"
										class="navtext">보듬이란</a>
										<ul class="wsmenu-submenu">
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/bodeum/company.php">회사소개</a></li>
											<!--<li><a href="/resources/bodeum.co.kr/html/edu_movie/bodeum/media.php">#보듬</a></li>-->
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/bodeum/ci.php">CI</a></li>
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/bodeum/location3.php">오시는길</a></li>
										</ul></li>
									<li><span class="wsmenu-click"><i
											class="wsmenu-arrow fa fa-angle-down"></i></span><a href="#"
										class="navtext">교육방법</a>
										<ul class="wsmenu-submenu">
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/education/edu_video.php">영상교육</a></li>
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/education/edu_group.php">그룹레슨</a></li>
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/education/edu_individual.php">개인레슨</a></li>
										</ul></li>
									<li><span class="wsmenu-click"><i
											class="wsmenu-arrow fa fa-angle-down"></i></span><a href="#"
										class="navtext">교육신청</a>
										<ul class="wsmenu-submenu">
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/teach/edu_request_list.php">교육회원
													가입</a></li>
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/teach/groupLesson.php">그룹레슨
													신청</a></li>
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/teach/personalLesson.php">개인레슨
													신청</a></li>
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/teach/seminar.php">비회원
													수업 신청</a></li>
										</ul></li>
									<li><span class="wsmenu-click"><i
											class="wsmenu-arrow fa fa-angle-down"></i></span><a href="#"
										class="navtext">커뮤니티</a>
										<ul class="wsmenu-submenu">
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/community/community_list.php">강형욱
													칼럼</a></li>
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/community/community_interview.php">보호자
													인터뷰</a></li>
											<li><a
												href="/resources/bodeum.co.kr/html/edu_movie/community/community_review.php">교육후기</a></li>
										</ul></li>
									<li><a
										href="/resources/bodeum.co.kr/html/common_ui/mypage/myLesson.php"
										class="navtext my-lectureRoom">내강의실</a></li>
								</ul>
							</nav>
						</div>
						<!-- Menu Edu -->

						<!-- Menu Shop -->
						<!-- Menu Shop -->

						<!--Menu HTML Code-->
						<!--2st Menu HTML Code-->
						<div class="wsmenu02 clearfix">
							<div class="cd-primary-nav">
								<div class="thumb">
									<div class="ratio4 thumbnail-wrapper">
										<div class="thumbnail">
											<div class="centered">
												<img
													src="/resources/bodeum.co.kr/html/common/img/no-image-thumb.jpg"
													class="landscape">
											</div>
										</div>
									</div>
								</div>
								<div class="login-info">
									<p class="name">김정환 님</p>
									<a
										href="/resources/bodeum.co.kr/html/common_ui/member/login_ok.php?logout=1">로그아웃</a>
								</div>
							</div>

							<div class="mypage-menu">
								<ul>
									<li><a
										href="/resources/bodeum.co.kr/html/common_ui/order/cart.php">
											<img
											src="/resources/bodeum.co.kr/html/common/img/menu-icon1.png">
											<p>장바구니</p>
									</a></li>
									<li><a
										href="/resources/bodeum.co.kr/html/common_ui/mypage/orderList.php">
											<img
											src="/resources/bodeum.co.kr/html/common/img/menu-icon2.png">
											<p>주문관리</p>
									</a></li>
									<li><a
										href="/resources/bodeum.co.kr/html/common_ui/mypage/coupon.php">
											<img
											src="/resources/bodeum.co.kr/html/common/img/menu-icon3.png">
											<p>쿠폰</p>
									</a></li>
									<li><a
										href="/resources/bodeum.co.kr/html/common_ui/mypage/point.php">
											<img
											src="/resources/bodeum.co.kr/html/common/img/menu-icon4.png">
											<p>적립금</p>
									</a></li>
								</ul>
							</div>
							<ul class="mobile02-sub wsmenu02-list">
								<!--170725 디트리 수정-->
								<li><a
									href="/resources/bodeum.co.kr/html/common_ui/mypage/myLesson.php">내
										강의</a></li>
								<li><a
									href="/resources/bodeum.co.kr/html/common_ui/mypage/lessonStatus.php">레슨현황</a></li>
								<li><a
									href="/resources/bodeum.co.kr/html/common_ui/mypage/profile-modify.php">내
										정보 관리</a></li>
								<li><a
									href="/resources/bodeum.co.kr/html/common_ui/mypage/dogInfo-modify.php">반려견
										정보 관리</a></li>
								<li><a
									href="/resources/bodeum.co.kr/html/common_ui/mypage/myInqLst.php">1:1문의</a></li>
								<li><a
									href="/resources/bodeum.co.kr/html/common_ui/mypage/reviewList.php">후기관리</a></li>
								<li><a
									href="/resources/bodeum.co.kr/html/common_ui/customer/customer.php">고객센터</a></li>
							</ul>
						</div>
						<!--2st Menu HTML Code-->
					</div>
				</div>
			</div>
		</header>
		<script>
			var $minimenu = $('#mini_menu'), $miniLiBtn = $('#mini_menu > ul > li > a'), $title = '', $allMenu = $('.wsmenucontainer'), $onoff = '', $allLiBtn = $('.wsmenu .wsmenu-list > li');

			$miniLiBtn.on('click', function() {
				$title = $(this).data('title');
				$onoff = $('*[data-class= ' + $title + ']').find('ul')
						.hasClass('wsmenu-submenu');

				if ($onoff) {
					$(this).attr('href', '#none');
					$('*[data-class= ' + $title + ']').find('.wsmenu-click')
							.addClass('ws-activearrow');
					$('*[data-class= ' + $title + ']').siblings().find(
							'.wsmenu-click').removeClass('ws-activearrow');

					$(".wsmenu-submenu, .megamenu").not(
							$(this).siblings('.wsmenu-submenu, .megamenu'))
							.slideUp('fast');
					$('*[data-class= ' + $title + ']').find('.wsmenu-click')
							.siblings('.wsmenu-submenu').slideToggle('fast');
					$('*[data-class= ' + $title + ']').find('.wsmenu-click')
							.siblings('.megamenu').slideToggle('fast');

					$allMenu.addClass('wsoffcanvasopener');
				}

			});
		</script>

		<!-- Header End -->

		<!-- Hearder Start -->
		<!-- Header End -->

		<script type="text/javascript">
			/* 파라미터 초기값 Setting */
			function f_init() {
				var order_info = document.order_info;

				// $("#GoodsName").val( $("#goodsName").val() );
				// $("input[name=Amt]").val(order_info.trade_price.value);

				var email = order_info.order_email.value + "@"
						+ order_info.order_email2.value;
				var phone = order_info.order_phone1.value + "-"
						+ order_info.order_phone2.value + "-"
						+ order_info.order_phone3.value;
				//가맹점 return_url(윈도우 타입 선택 시, 분기)
				$("#BuyerName").val(order_info.buyr_name.value);
				$("#BuyerEmail").val(email);
				$("#BuyerTel").val(phone);

				var ediDate = $("#EdiDate").val();
				var price = order_info.good_mny.value;
				// var price = 1000;
				var merchantID = 'bodeum001m';
				var merchantKey = '5D9FNUfHSpreh6rsIT46AfKwpQ3oIynCUWJF9erU5EmzxFCi3VGhEtYo3/LAvaB5FyOWddbFKYfoF651De8mtQ==';
				var signData = SHA256(ediDate + merchantID + price
						+ merchantKey);

				$("input[name=Amt]").val(price);
				$("input[name=trade_price]").val(price);

				$("#mkey").val(merchantKey);
				$("#MID").val(merchantID);
				$("#SignData").val(signData);

			}

			//결제창 최초 요청시 실행됩니다.
			function nicepayStart() {
				if ($("input[name=good_mny]").val() == "0") {
					$("input[name=trade_method]:radio[value=6]").prop(
							"checked", true);
					document.order_info.action = "./payment_ok.php";
					document.order_info.submit();
					return false;
				}

				var trade_method = $("input[name=trade_method]:checked").val();
				// document.getElementById("VbankExpDate").value = getTomorrow();
				if (trade_method == "10") {//PC 결제창 진입
					document.order_info.acceptCharset = "euc-kr";
					document.order_info.submit();
				} else if (checkPlatform(window.navigator.userAgent) == "mobile") {//모바일 결제창 진입
					document.order_info.action = "https://web.nicepay.co.kr/v3/v3Payment.jsp";
					document.order_info.acceptCharset = "euc-kr";
					document.order_info.submit();
				} else {//PC 결제창 진입
					goPay(document.order_info);
				}
			}

			//결제 최종 요청시 실행됩니다. <<'nicepaySubmit()' 이름 수정 불가능>>
			function nicepaySubmit() {
				document.order_info.submit();
			}

			//결제창 종료 함수 <<'nicepayClose()' 이름 수정 불가능>>
			function nicepayClose() {
				alert("결제가 취소 되었습니다");
			}

			//가상계좌입금만료일 설정 (today +1)
			function getTomorrow() {
				var today = new Date();
				var yyyy = today.getFullYear().toString();
				var mm = (today.getMonth() + 1).toString();
				var dd = (today.getDate() + 1).toString();
				if (mm.length < 2) {
					mm = '0' + mm;
				}
				if (dd.length < 2) {
					dd = '0' + dd;
				}
				return (yyyy + mm + dd);
			}

			$(function() {
				// $("input[name=trade_method]").change(function(){
				//     $("#PayMethod").val($(this).attr("paytype"));
				//     if ( $(this).val() == "3" ){        // 가상계좌
				//         $(".bank_tr").addClass("blind");
				//     }
				//     else if ( $(this).val() == "7" ){   // 무통장입금
				//         $(".bank_tr").removeClass("blind");
				//         $(".bank_num_div").removeClass("blind");
				//     }
				//     else{
				//         $(".bank_tr").addClass("blind");
				//     }
				// });
			})

			//pc, mobile 구분(가이드를 위한 샘플 함수입니다.)
			function checkPlatform(ua) {
				if (ua === undefined) {
					ua = window.navigator.userAgent;
				}

				ua = ua.toLowerCase();
				var platform = {};
				var matched = {};
				var userPlatform = "pc";
				var platform_match = /(ipad)/.exec(ua) || /(ipod)/.exec(ua)
						|| /(windows phone)/.exec(ua) || /(iphone)/.exec(ua)
						|| /(kindle)/.exec(ua) || /(silk)/.exec(ua)
						|| /(android)/.exec(ua) || /(win)/.exec(ua)
						|| /(mac)/.exec(ua) || /(linux)/.exec(ua)
						|| /(cros)/.exec(ua) || /(playbook)/.exec(ua)
						|| /(bb)/.exec(ua) || /(blackberry)/.exec(ua) || [];

				matched.platform = platform_match[0] || "";

				if (matched.platform) {
					platform[matched.platform] = true;
				}

				if (platform.android || platform.bb || platform.blackberry
						|| platform.ipad || platform.iphone || platform.ipod
						|| platform.kindle || platform.playbook
						|| platform.silk || platform["windows phone"]) {
					userPlatform = "mobile";
				}

				if (platform.cros || platform.mac || platform.linux
						|| platform.win) {
					userPlatform = "pc";
				}

				return userPlatform;
			}

			function SHA256(s) {

				var chrsz = 8;
				var hexcase = 0;

				function safe_add(x, y) {
					var lsw = (x & 0xFFFF) + (y & 0xFFFF);
					var msw = (x >> 16) + (y >> 16) + (lsw >> 16);
					return (msw << 16) | (lsw & 0xFFFF);
				}

				function S(X, n) {
					return (X >>> n) | (X << (32 - n));
				}
				function R(X, n) {
					return (X >>> n);
				}
				function Ch(x, y, z) {
					return ((x & y) ^ ((~x) & z));
				}
				function Maj(x, y, z) {
					return ((x & y) ^ (x & z) ^ (y & z));
				}
				function Sigma0256(x) {
					return (S(x, 2) ^ S(x, 13) ^ S(x, 22));
				}
				function Sigma1256(x) {
					return (S(x, 6) ^ S(x, 11) ^ S(x, 25));
				}
				function Gamma0256(x) {
					return (S(x, 7) ^ S(x, 18) ^ R(x, 3));
				}
				function Gamma1256(x) {
					return (S(x, 17) ^ S(x, 19) ^ R(x, 10));
				}

				function core_sha256(m, l) {

					var K = new Array(0x428A2F98, 0x71374491, 0xB5C0FBCF,
							0xE9B5DBA5, 0x3956C25B, 0x59F111F1, 0x923F82A4,
							0xAB1C5ED5, 0xD807AA98, 0x12835B01, 0x243185BE,
							0x550C7DC3, 0x72BE5D74, 0x80DEB1FE, 0x9BDC06A7,
							0xC19BF174, 0xE49B69C1, 0xEFBE4786, 0xFC19DC6,
							0x240CA1CC, 0x2DE92C6F, 0x4A7484AA, 0x5CB0A9DC,
							0x76F988DA, 0x983E5152, 0xA831C66D, 0xB00327C8,
							0xBF597FC7, 0xC6E00BF3, 0xD5A79147, 0x6CA6351,
							0x14292967, 0x27B70A85, 0x2E1B2138, 0x4D2C6DFC,
							0x53380D13, 0x650A7354, 0x766A0ABB, 0x81C2C92E,
							0x92722C85, 0xA2BFE8A1, 0xA81A664B, 0xC24B8B70,
							0xC76C51A3, 0xD192E819, 0xD6990624, 0xF40E3585,
							0x106AA070, 0x19A4C116, 0x1E376C08, 0x2748774C,
							0x34B0BCB5, 0x391C0CB3, 0x4ED8AA4A, 0x5B9CCA4F,
							0x682E6FF3, 0x748F82EE, 0x78A5636F, 0x84C87814,
							0x8CC70208, 0x90BEFFFA, 0xA4506CEB, 0xBEF9A3F7,
							0xC67178F2);

					var HASH = new Array(0x6A09E667, 0xBB67AE85, 0x3C6EF372,
							0xA54FF53A, 0x510E527F, 0x9B05688C, 0x1F83D9AB,
							0x5BE0CD19);

					var W = new Array(64);
					var a, b, c, d, e, f, g, h, i, j;
					var T1, T2;

					m[l >> 5] |= 0x80 << (24 - l % 32);
					m[((l + 64 >> 9) << 4) + 15] = l;

					for (var i = 0; i < m.length; i += 16) {
						a = HASH[0];
						b = HASH[1];
						c = HASH[2];
						d = HASH[3];
						e = HASH[4];
						f = HASH[5];
						g = HASH[6];
						h = HASH[7];

						for (var j = 0; j < 64; j++) {
							if (j < 16)
								W[j] = m[j + i];
							else
								W[j] = safe_add(safe_add(safe_add(
										Gamma1256(W[j - 2]), W[j - 7]),
										Gamma0256(W[j - 15])), W[j - 16]);

							T1 = safe_add(safe_add(safe_add(safe_add(h,
									Sigma1256(e)), Ch(e, f, g)), K[j]), W[j]);
							T2 = safe_add(Sigma0256(a), Maj(a, b, c));

							h = g;
							g = f;
							f = e;
							e = safe_add(d, T1);
							d = c;
							c = b;
							b = a;
							a = safe_add(T1, T2);
						}

						HASH[0] = safe_add(a, HASH[0]);
						HASH[1] = safe_add(b, HASH[1]);
						HASH[2] = safe_add(c, HASH[2]);
						HASH[3] = safe_add(d, HASH[3]);
						HASH[4] = safe_add(e, HASH[4]);
						HASH[5] = safe_add(f, HASH[5]);
						HASH[6] = safe_add(g, HASH[6]);
						HASH[7] = safe_add(h, HASH[7]);
					}
					return HASH;
				}

				function str2binb(str) {
					var bin = Array();
					var mask = (1 << chrsz) - 1;
					for (var i = 0; i < str.length * chrsz; i += chrsz) {
						bin[i >> 5] |= (str.charCodeAt(i / chrsz) & mask) << (24 - i % 32);
					}
					return bin;
				}

				function Utf8Encode(string) {
					string = string.replace(/\r\n/g, "\n");
					var utftext = "";

					for (var n = 0; n < string.length; n++) {

						var c = string.charCodeAt(n);

						if (c < 128) {
							utftext += String.fromCharCode(c);
						} else if ((c > 127) && (c < 2048)) {
							utftext += String.fromCharCode((c >> 6) | 192);
							utftext += String.fromCharCode((c & 63) | 128);
						} else {
							utftext += String.fromCharCode((c >> 12) | 224);
							utftext += String
									.fromCharCode(((c >> 6) & 63) | 128);
							utftext += String.fromCharCode((c & 63) | 128);
						}

					}

					return utftext;
				}

				function binb2hex(binarray) {
					var hex_tab = hexcase ? "0123456789ABCDEF"
							: "0123456789abcdef";
					var str = "";
					for (var i = 0; i < binarray.length * 4; i++) {
						str += hex_tab
								.charAt((binarray[i >> 2] >> ((3 - i % 4) * 8 + 4)) & 0xF)
								+ hex_tab
										.charAt((binarray[i >> 2] >> ((3 - i % 4) * 8)) & 0xF);
					}
					return str;
				}

				s = Utf8Encode(s);
				return binb2hex(core_sha256(str2binb(s), s.length * chrsz));

			}
		</script>
		<script src="https://web.nicepay.co.kr/v3/webstd/js/nicepay-3.0.js"
			type="text/javascript"></script>


		<script type="text/javascript">
			function mobile_data() {
				// 모바일 데이터
				var form = document.order_info;
				var params_arr = [];

				// params_arr.push(form.trade_goods_total_price.value);

				params_arr.push(form.userid.value);
				params_arr.push(form.trade_goods_price.value);
				params_arr.push(form.trade_lecture_price.value);
				params_arr.push(form.trade_deliv_price.value);

				params_arr.push(form.trade_use_coupon.value);
				params_arr.push(form.trade_use_coupon_idx.value);
				params_arr.push(form.trade_dc_price.value);
				params_arr.push(form.trade_save_point.value);
				params_arr.push(form.trade_use_point.value);

				params_arr.push('');

				params_arr.push(form.order_phone1.value);
				params_arr.push(form.order_phone2.value);
				params_arr.push(form.order_phone3.value);
				params_arr.push(form.order_email.value);
				params_arr.push(form.order_email2.value);

				params_arr.push(form.deliv_name.value);
				params_arr.push(form.deliv_phone1.value);
				params_arr.push(form.deliv_phone2.value);
				params_arr.push(form.deliv_phone3.value);
				params_arr.push(form.deliv_email.value);
				params_arr.push(form.deliv_email2.value);

				params_arr.push(form.postcode.value);
				params_arr.push(form.addr1.value);
				params_arr.push(form.addr2.value);
				params_arr.push(form.deliv_content.value);
				params_arr.push(form.deliv_content2.value);

				params_arr.push(form.trade_deliv_add_price_total.value);
				params_arr.push(form.deliv_coupon_use.value);
				params_arr.push(form.deliv_price_condition.value);
				params_arr.push(form.deliv_price_free.value);
				params_arr.push(form.escrow_state.value);

				var param = encodeURIComponent(params_arr.join('@|@'));
				return param;
			}

			/* 인증창 호출, 인증 요청 */
			function f_cert() {
				f_init();

				var form = document.order_info;

				if (form.name.value == "") {
					alert("이름을 입력해주세요.");
					form.name.focus();
				} else if (form.order_phone2.value == "") {
					alert("핸드폰번호를 입력해주세요.");
					form.order_phone2.focus();
				} else if (form.order_phone3.value == "") {
					alert("핸드폰번호를 입력해주세요.");
					form.order_phone3.focus();
				} else if (form.order_email.value == "") {
					alert("이메일을 입력해주세요.");
					form.order_email.focus();
				} else if (form.order_email2.value == "") {
					alert("이메일을 입력해주세요.");
					form.order_email2.focus();
				} else if (form.deliv_name.value == "") {
					alert("수령인 이름을 입력해주세요.");
					form.deliv_name.focus();
				} else if (form.deliv_phone1.value == "") {
					alert("수령인 핸드폰번호를 입력해주세요.");
					form.deliv_phone1.focus();
				} else if (form.deliv_phone2.value == "") {
					alert("수령인 핸드폰번호를 입력해주세요.");
					form.deliv_phone2.focus();
				} else if (form.deliv_phone3.value == "") {
					alert("수령인 핸드폰번호를 입력해주세요.");
					form.deliv_phone3.focus();
				} else if (form.deliv_email.value == "") {
					alert("수령인 이메일을 입력해주세요.");
					form.deliv_email.focus();
				} else if (form.deliv_email2.value == "") {
					alert("수령인 이메일을 입력해주세요.");
					form.deliv_email2.focus();
				} else if (form.postcode.value == "") {
					alert("수령인 우편번호를 입력해주세요.");
					form.postcode.focus();
				} else if (form.addr1.value == "") {
					alert("수령인 주소를 입력해주세요.");
					form.addr1.focus();
				} else if (form.addr2.value == "") {
					alert("수령인 주소를 입력해주세요.");
					form.addr2.focus();
				} else {
					nicepayStart();
				}
			}
		</script>

		<script type="text/javascript">
			// 자동으로 콤마 넣기
			function number_format(num) {
				num = num.replace(/,/g, "")
				var num_str = num.toString()
				var result = ''

				for (var i = 0; i < num_str.length; i++) {
					var tmp = num_str.length - (i + 1)
					if (i % 3 == 0 && i != 0)
						result = ',' + result
					result = num_str.charAt(tmp) + result
				}

				return result
			}

			// 회원이면 포인트 체크
			function tradePriceCheck(totalGoodsPrice, tradeDelivPrice) {
				var form = document.order_info;
				var totalGoodsPriceTmp = totalGoodsPrice;
				var trade_use_point = form.trade_use_point.value;
				var trade_goods_total_price = form.trade_goods_total_price.value;

				if (form.trade_use_point.value > 3000) {
					alert('적립된 포인트 보다 많이 입력 하셨습니다.');
					form.trade_use_point.value = ""
					form.good_mny.value = totalGoodsPriceTmp;
					form.trade_use_point.focus();
					discount(); //할인금액 계산
					$("#trade_use_point_txt").html(0);
					return;
				} else if (form.trade_use_point.value > parseInt(trade_goods_total_price)) {
					alert('총 상품금액보다 많이 입력 하셨습니다.');
					form.trade_use_point.value = ""
					form.good_mny.value = totalGoodsPriceTmp;
					form.trade_use_point.focus();
					discount(); //할인금액 계산
					$("#trade_use_point_txt").html(0);
					return;
				} else {
					form.good_mny.value = totalGoodsPriceTmp
							- form.trade_use_point.value;
					var total_price = form.good_mny.value;

					if (form.trade_use_point.value >= parseInt(trade_goods_total_price)) { // 포인트 전액 구매시 적립포인트 0
						form.trade_save_point.value = 0;
					} else {
						form.trade_save_point.value = form.trade_save_point_temp.value;
					}

					discount(); //할인금액 계산

					if (trade_use_point > 0) {
						$("#trade_use_point_txt").html(
								number_format(trade_use_point));
						$("#total_price").html(number_format(total_price));
					} else {
						$("#trade_use_point_txt").html("0");
						$("#total_price").html(number_format(total_price));
					}

				}
			}

			function use_coupon() { //쿠폰사용

				var form = document.order_info;
				var trade_price = $("#trade_goods_total_price").val();
				var trade_use_coupon = 0;
				//var trade_deliv_price_temp = form.trade_deliv_price_temp.value;

				var coupon_cnt = $("#coupon_cnt").val();

				var totalCouponPrice = 0;
				var freeCouponIncluded = "N";
				var trade_use_coupon_idx = new Array();

				for (var ct = 0; ct < coupon_cnt; ct++) {
					if (document.getElementById("use_coupon[" + ct + "]").checked == true) {

						var cArr = document.getElementById("use_coupon[" + ct
								+ "]").value.split("||", 4);
						var disAmount = 0;
						trade_use_coupon_idx[ct] = cArr[0];
						trade_use_coupon_idx.join(',');

						//alert(cArr[1]);
						/*
						if (cArr[1] == "free") {
							disAmount = parseInt(form.trade_goods_total_price.value);
							freeCouponIncluded = "Y";
						} else 
						 */
						if (cArr[1] == "delivery") {
							//disAmount = parseInt(form.trade_deliv_price.value);
							//form.trade_deliv_price.value = form.trade_deliv_price_temp.value;
							//alert(disAmount);
						} else {
							if (cArr[2] == "rate")
								disAmount = parseInt(form.trade_goods_total_price.value)
										* parseInt(cArr[3]) / 100;
							else
								disAmount = parseInt(cArr[3]);

							//form.trade_deliv_price.value = form.trade_deliv_price_temp.value;
						}

						totalCouponPrice += disAmount;

					}
				}

				if (freeCouponIncluded == "N") {
					//alert(totalCouponPrice);
					if (totalCouponPrice > parseInt(form.trade_goods_total_price.value)) {
						form.trade_use_coupon.value = form.trade_goods_total_price.value;
					} else {
						form.trade_use_coupon.value = totalCouponPrice;
					}
				} else {
					form.trade_use_coupon.value = form.trade_goods_total_price.value; // 강좌 전액적용
				}

				$("#trade_use_coupon").html(
						addCommas(parseInt(form.trade_use_coupon.value)));
				$("#trade_use_coupon_idx").val(trade_use_coupon_idx);

				if (totalCouponPrice >= parseInt(form.trade_goods_total_price.value)) { // 쿠폰 전액 구매시 적립포인트 0
					form.trade_save_point.value = 0;
				} else {
					form.trade_save_point.value = form.trade_save_point_temp.value;
				}

				discount(); //할인금액 계산

			}

			// 적립금 전액사용
			function point_use_all(member_point) {
				var form = document.order_info;
				var trade_goods_price = form.trade_goods_total_price.value;
				var deliv_price = form.trade_deliv_price.value;
				var coupon_price = form.trade_use_coupon.value;
				var total_price = parseInt(trade_goods_price)
						- parseInt(coupon_price);

				if (member_point > total_price) {
					form.trade_use_point.value = total_price;
				} else {
					form.trade_use_point.value = member_point;
				}

				if (form.trade_use_point.value >= parseInt(trade_goods_price)) { // 적립금 전액 구매시 적립포인트 0
					form.trade_save_point.value = 0;
				} else {
					form.trade_save_point.value = form.trade_save_point_temp.value;
				}

				$("#trade_use_point_txt").html(
						number_format(form.trade_use_point.value)); // 적립금 사용금액
				//$("#trade_use_point").digits();

				discount(); //할인금액 계산
			}

			// 자동으로 콤마 넣기
			function addCommas(nStr) {
				nStr += '';
				x = nStr.split('.');
				x1 = x[0];
				x2 = x.length > 1 ? '.' + x[1] : '';
				var rgx = /(\d+)(\d{3})/;
				while (rgx.test(x1)) {
					x1 = x1.replace(rgx, '$1' + ',' + '$2');
				}
				return x1 + x2;
			}

			//결제수단 선택
			function tradeMethod(method, n) { //PC
				$("#trade_method").val(n);
				$("#PayMethod").val(method);
				$(".btn").removeClass("on");
				$(".btn" + n).addClass("on");
				if (n == "1") {
					$("#TransType").val('0');
					$("#escrow_state").val('');
				} else if (n == "2" || n == "3") {
					$("#TransType").val('1');
					$("#escrow_state").val('00');
				}
			}

			//숫자만, 영문만 입력
			$(document).ready(function() {
				$(".onlynum").keyup(function() {
					$(this).val($(this).val().replace(/[^0-9]/g, ""));
				});
				$(".onlyeng").keyup(function() {
					$(this).val($(this).val().replace(/[^\!-z]/g, ""));
				});
			});

			// 배송요청사항 입력
			function delivContent() {
				var deliv_content = $("#deliv_content").val();
				if (deliv_content == "direct") {
					$("#deliv_content2").removeClass("blind");
				} else {
					$("#deliv_content2").addClass("blind");
				}
			}

			function characterCheck() {
				var RegExp = /[ \{\}\[\]\/?.,;:|\*~`!^\-_+┼<>@\#$%&\'\"\\\\=]/gi;//정규식 구문
				var obj = document.getElementsByName("deliv_content2")[0]
				if (RegExp.test(obj.value)) {
					alert("특수문자는 입력하실 수 없습니다.");
					obj.value = obj.value.substring(0, obj.value.length - 1);//특수문자를 지우는 구문
				}
			}
		</script>


		<div id="cartwrapper">
			<div id="wrapper">
				<div class="content">
					<div class="inner-contents">
						<div class="section">
							<div class="sub-page-title">
								<strong>결제하기${apple}</strong>
							</div>
							<div class="container cart-wrap" id="fixed-parent">
								<div class="row">
									<div class="col-70">
										<form name="order_info" method="post"
											action="https://bodeum.co.kr/nicepay/shop.php" target="">
											<div class="mb-50">
												<div class="sub-title">묶음배송 가능 상품</div>
												<table class="list-table payment-table payment-deliv-table">
													<thead>
														<tr>
															<th class="prd-info">상품 정보</th>
															<th class="col-price">상품 금액</th>
														</tr>
													</thead>
													<tbody>
														<input type="hidden" name="goods_idx[]" value="">
														<tr class="shop-product">
															<!--쇼핑몰 상품 구매시 class-->
															<td class="prd-info">
																<div class="title-wrap">
																	<div class="imgArea">
																		<div class="ratio2 thumbnail-wrapper">
																			<div class="thumbnail">
																				<div class="centered">
																					<img
																						src="/resources/bodeum.co.kr/data/goodsImages/GOODS1_1665132834.jpg">
																				</div>
																			</div>
																		</div>
																	</div>
																	<div class="buy-info">
																		<p class="title-txt">
																			<a
																				href="/resources/bodeum.co.kr/html/shop/prd_detail.php?idx=1046">보듬
																				배변봉투 8롤(120매)</a>
																		</p>
																		<div class="option">
																			<p>product.opt1</p>
																			<br> <br>
																		</div>
																		<div class="quantity">1개</div>
																	</div>
																</div>
															</td>
															<td class="col-price"><span class="label">상품금액</span>
																<span class="price"><strong>9,900</strong>원</span></td>
														</tr>
													</tbody>
												</table>
												<!--<p class="color-gray">※ 50,000만원 이상 주문 시 배송비는 <span class="skyblue">무료</span>입니다.</p>-->
												<p class="color-gray">※ 구매 금액에 따라 배송비 차등 적용됩니다.(50,000원
													미만: 3,000원)</p>
												<p class="color-gray">※ 제주/ 도서산간 배송지의 경우 배송비가 추가됩니다.</p>
												<p class="color-gray">※ 제주도 0원, 제주도 외 도서산간 0원</p>
											</div>

											<input type="hidden" name="MID" id="MID" value="bodeum001m">
											<input type="hidden" name="UserIP" id="UserIP"
												value="112.148.244.244"> <input type="hidden"
												name="GoodsCl" id="GoodsCl" value="1"> <input
												type="hidden" name="CharSet" id="CharSet" value="UTF-8">
											<input type="hidden" name="EncodeParameters"
												id="EncodeParameters" value=""> <input type="hidden"
												name="EdiDate" id="EdiDate" value="20230209094230">
											<input type="hidden" name="GoodsCnt" id="GoodsCnt" value="1">
											<input type="hidden" name="PayMethod" id="PayMethod"
												value="CARD"> <input type="hidden" name="NpLang"
												id="NpLang" value="KO"> <input type="hidden"
												name="TransType" id="TransType" value="0"> <input
												type="hidden" name="Quantity" id="Quantity" value="1">
											<input type="hidden" name="Currency" id="Currency"
												value="KWR"> <input type="hidden" name="TID"
												id="TID" value=""> <input type="hidden"
												name="VbankExpDate" id="VbankExpDate" value="20230210">
											<input type="hidden" name="mkey" id="mkey"
												value="5D9FNUfHSpreh6rsIT46AfKwpQ3oIynCUWJF9erU5EmzxFCi3VGhEtYo3/LAvaB5FyOWddbFKYfoF651De8mtQ==">
											<input type="hidden" name="Moid" id="Moid"
												value="JRYEQ1675903350"> <input type="hidden"
												name="BuyerName" id="BuyerName" value="${member.name}">
											<input type="hidden" name="BuyerEmail" id="BuyerEmail"
												value="${member.email1}@${member.email2}"> <input
												type="hidden" name="BuyerTel" id="BuyerTel"
												value="${member.ph1}-${member.ph2}-${member.ph3}"> <input
												type="hidden" name="ReturnURL" id="ReturnURL"
												value="https://bodeum.co.kr/nicepay/shop.php"> <input
												type="hidden" name="GoodsName" id="GoodsName" value="">
											<input type="hidden" name="Amt" id="Amt" value="9900">
											<input type="hidden" name="SignData" id="SignData"
												value="688b27635fb3913e27217b1d2d3c2a22cbf18b28d57781a0ff7df4ad773a3033">
											<input type="hidden" name="TrKey" id="TrKey" value="">
											<input type="hidden" name="ReqReserved" id="ReqReserved"
												value="">
											<!-- 공통 변수 -->
											<input type="hidden" name="trade_code"
												value="JRYEQ1675903350">
											<!-- 주문번호 trade_code -->
											<input type="hidden" name="ordr_idxx" value="JRYEQ1675903350">
											<!-- 주문번호 trade_code -->
											<input type="hidden" name="hidden_order" value="1"> <input
												type="hidden" name="userid" id="userid"
												value="${member.userid}"> <input type="hidden"
												name="goodsName" id="goodsName" value="보듬 배변봉투 8롤(120매)">
											<!-- 상품명 -->

											<input type="hidden" name="trade_goods_price"
												id="trade_goods_price" value="9900">
											<!-- 총 주문상품 금액 -->
											<input type="hidden" name="trade_lecture_price"
												id="trade_lecture_price" value="">
											<!-- 총 주문강좌 금액 -->
											<input type="hidden" name="trade_goods_total_price"
												id="trade_goods_total_price" value="9900">
											<!-- 총 주문합계 금액(강의+상품) -->

											<input type="hidden" name="trade_deliv_price"
												id="hidden_trade_deliv_price" value="3000"
												style="border: 1px solid #ff0000;">
											<!-- 배송비 -->
											<input type="hidden" name="trade_deliv_price_temp"
												value="3000">
											<!-- 배송비 임시 -->
											<input type="hidden" name="trade_deliv_base_price"
												id="trade_deliv_base_price" value="3000">
											<!-- 제주,도서산간 제외 기본 배송비 -->
											<input type="hidden" name="trade_deliv_base_price_total"
												id="trade_deliv_base_price_total" value="3000">
											<!-- 제주,도서산간 제외 기본 배송비 합계-->
											<input type="hidden" name="trade_deliv_add_price"
												id="trade_deliv_add_price" value=""
												style="border: 1px solid #ff0000;">
											<!-- 제주,도서산간 추가 배송비 -->
											<input type="hidden" name="deliv_cnt_total"
												id="deliv_cnt_total" value="1">
											<!-- 제주,도서산간 추가 배송비 건수 -->

											<input type="hidden" name="trade_deliv_add_price_total"
												id="trade_deliv_add_price_total" value="0"
												style="border: 1px solid #ff0000;">
											<!-- 제주,도서산간 추가 배송비 합계 -->
											<input type="hidden" name="deliv_coupon_use"
												id="deliv_coupon_use" style="border: 1px solid #ff0000;">
											<!-- 무료배송쿠폰 사용 체크 -->
											<input type="hidden" name="deliv_price_condition"
												id="deliv_price_condition" value=""
												style="border: 1px solid #ff0000;">
											<!-- 조건부 배송비 무료 체크 -->
											<input type="hidden" name="deliv_price_free"
												id="deliv_price_free" value=""
												style="border: 1px solid #ff0000;">
											<!-- 무료배송 체크 -->

											<input type="hidden" name="trade_use_coupon" value="0">
											<input type="hidden" name="trade_use_coupon_idx"
												id="trade_use_coupon_idx"> <input type="hidden"
												name="trade_dc_price" id="dc_price" value="3000">
											<!-- 할인가격 -->
											<input type="hidden" name="trade_save_point" value="99">
											<!-- 저장포인트 -->
											<input type="hidden" name="trade_save_point_temp" value="99">
											<!-- 저장포인트 임시(계산용) -->
											<input type="hidden" name="hidden_postcode"
												value="${address.zipcode}"> <input type="hidden"
												name="hidden_addr1" value="${address.address}"> <input
												type="hidden" name="hidden_addr2"
												value="${address.address2}"> <input type="hidden"
												name="trade_price" id="trade_price" value="9900">
											<!-- 총 주문합계 금액(강의+상품) -->
											<input type="hidden" name="good_mny" id="good_mny"
												value="9900">
											<!-- 총 주문합계 금액(강의+상품) -->
											<input type="hidden" name="ua" id="ua"
												value="Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36">
											<!-- 총 주문합계 금액(강의+상품) -->

											<input type="hidden" name="escrow_state" id="escrow_state"
												value="">
											<!-- 에스크로 사용여부 -->
											<input type="hidden" name="trade_method" id="trade_method"
												value="1">
											<!-- 총 주문합계 금액(강의+상품) -->
											<input type="hidden" name="total_price_temp">
											<!-- 총 주문합계 금액(강의+상품) -->

											<input type="hidden" name="free_deliv_coupon"
												id="free_deliv_coupon">

											<h4 class="mt-45">
												구매자 정보 <strong><span class="essential">*</span>
													필수입력사항</strong>
											</h4>
											<table class="info-write">
												<tbody>
													<!--비회원 구매시 비밀번호 입력하는 영역-->
													<!--비회원 구매시 비밀번호 입력하는 영역-->
													<tr>
														<th><span class="essential">*</span>이름</th>
														<td><input type="text" class="short-input"
															name="buyr_name" value="${member.name}"></td>
													</tr>
													<tr>
														<th><span class="essential">*</span>핸드폰번호</th>
														<td class="phoneArea">
															<div class="srchFilter">
																<select id="select3" class="w160" name="order_phone1"
																	value="${member.ph1}">
																	<option value="010" selected="">010</option>
																	<option value="011">011</option>
																	<option value="016">016</option>
																	<option value="017">017</option>
																	<option value="018">018</option>
																	<option value="019">019</option>
																</select><span>-</span> <input type="text" class="phone onlynum"
																	name="order_phone2" maxlength="4" value="${member.ph2}"><span>-</span>
																<input type="text" class="phone onlynum"
																	name="order_phone3" maxlength="4" value="${member.ph3}">
															</div>
														</td>
													</tr>
													<tr>
														<th><span class="essential">*</span>이메일</th>
														<td>
															<div class="mail">
																<input type="text" class="mail1" name="order_email"
																	value="${member.email1}"><span>@</span> <input
																	type="text" class="mail2" name="order_email2"
																	value="${member.email2}">
																<div class="srchFilter">
																	<select id="select4" class="w160" name="order_email3"
																		onchange="selectOrderEmail(this.value);">
																		<option value="b" selected="selected">직접입력</option>
																		<option value="naver.com">naver.com</option>
																		<option value="empal.com">empal.com</option>
																		<option value="hotmail.com">hotmail.com</option>
																		<option value="nate.com">nate.com</option>
																		<option value="dreamwiz.com">dreamwiz.com</option>
																		<option value="lycos.co.kr">lycos.co.kr</option>
																		<option value="yahoo.co.kr">yahoo.co.kr</option>
																		<option value="korea.com">korea.com</option>
																		<option value="paran.com">paran.com</option>
																	</select>
																</div>
															</div>
														</td>
													</tr>
												</tbody>
											</table>
											<!-- 배송상품이 있을경우 배송지 정보 노출 -->
											<div>
												<h4>
													배송지 정보 <strong><span class="essential">*</span>
														필수입력사항</strong>
												</h4>
												<div class="info-btn">
													<a href="javascript:;" onclick="toggleCheck(1);" class="on">주문자와
														정보 동일</a> <a href="javascript:toggleCheck(2);">새로운 정보 입력</a>
												</div>
												<table class="info-write">
													<tbody>
														<tr>
															<th><span class="essential">*</span>이름</th>
															<td><input type="text" class="short-input"
																name="deliv_name" value="${member.name}"></td>
														</tr>
														<tr>
															<th><span class="essential">*</span>핸드폰번호</th>
															<td class="phoneArea">
																<div class="srchFilter">
																	<select id="select5" class="w160" name="deliv_phone1">
																		<option value="010" selected="">010</option>
																		<option value="011">011</option>
																		<option value="016">016</option>
																		<option value="017">017</option>
																		<option value="018">018</option>
																		<option value="019">019</option>
																	</select><span>-</span> <input type="text" class="phone onlynum"
																		name="deliv_phone2" maxlength="4" placeholder=""
																		value="${member.ph2}"><span>-</span> <input
																		type="text" class="phone onlynum" name="deliv_phone3"
																		maxlength="4" placeholder="" value="${member.ph3}">
																</div>
															</td>
														</tr>
														<tr>
															<th><span class="essential">*</span>이메일</th>
															<td>
																<div class="mail">
																	<input type="text" class="mail1" name="deliv_email"
																		value="${member.email1}"><span>@</span> <input
																		type="text" class="mail2" name="deliv_email2"
																		value="${member.email2}">
																	<div class="srchFilter">
																		<select id="select4" class="w160" name="deliv_email3"
																			onchange="selectDelivEmail(this.value);">
																			<option value="b" selected="selected">직접입력</option>
																			<option value="naver.com">naver.com</option>
																			<option value="empal.com">empal.com</option>
																			<option value="hotmail.com">hotmail.com</option>
																			<option value="nate.com">nate.com</option>
																			<option value="dreamwiz.com">dreamwiz.com</option>
																			<option value="lycos.co.kr">lycos.co.kr</option>
																			<option value="yahoo.co.kr">yahoo.co.kr</option>
																			<option value="korea.com">korea.com</option>
																			<option value="paran.com">paran.com</option>
																		</select>
																	</div>
																</div>
															</td>
														</tr>
														<tr>
															<th><span class="essential">*</span>주소</th>
															<td>
																<div class="address">
																	<div class="loginInput mb-10">
																		<input type="text" class="id postcode" name="postcode"
																			id="postcode" placeholder="우편번호"
																			value="${address.zipcode}"
																			onclick="execDaumPostCode3();" readonly=""> <a
																			href="javascript:execDaumPostCode3();" class="aBtn">우편번호
																			찾기</a>
																		<div id="delivAccountWrap"></div>
																	</div>
																	<div id="contents_box" class="postCodeBox"
																		style="display: none; height: 400px;">
																		<img
																			src="/resources/bodeum.co.kr/t1.daumcdn.net/postcode/resource/images/close.png"
																			id="btnFoldWrap"
																			style="cursor: pointer; position: absolute; right: 0px; top: -1px; z-index: 1"
																			onclick="foldDaumPostcode()" alt="접기 버튼">
																	</div>
																	<input type="text" class="fullInput mb-10" name="addr1"
																		id="addr1" placeholder="" value="${address.address}">
																	<input type="text" class="fullInput" name="addr2"
																		id="addr2" placeholder="상세주소(특수문자 입력 불가)"
																		value="${address.address2}">
																</div>
															</td>
														</tr>
														<tr>
															<th>배송요청사항</th>
															<td>
																<!-- <input type="text" class="fullInput" name="deliv_content"> -->
																<select name="deliv_content" id="deliv_content"
																class="fullInput" onchange="delivContent();">
																	<option value="배송전에 미리 연락 바랍니다.">배송전에 미리 연락
																		바랍니다.</option>
																	<option value="부재시 경비실에 맡겨주세요.">부재시 경비실에
																		맡겨주세요.</option>
																	<option value="부재시 전화를 주시거나 문자를 남겨주세요.">부재시
																		전화를 주시거나 문자를 남겨주세요.</option>
																	<option value="direct">직접 입력</option>
															</select> <input type="text" class="fullInput mt-5 blind"
																name="deliv_content2" id="deliv_content2"
																placeholder="배송요청사항을 입력해주세요."
																onkeyup="characterCheck();"
																onkeydown="characterCheck();">
															</td>
														</tr>
														<tr>
															<th>회원정보반영</th>
															<td>
																<div class="checkArea">
																	<input type="checkbox" name="addrCheck" id="checkOne"
																		value="1" onclick="applyAddr();"> <label
																		for="checkOne" class="check">위 주소를 회원정보에
																		반영합니다.</label>
																</div>
															</td>
														</tr>
													</tbody>
												</table>
												<div id="addr_info">
													<meta charset="utf-8">
													<script language="javascript">
														alert('회원 주소를 적용하였습니다.');
													</script>
												</div>
											</div>


											<script>
												$(document)
														.ready(
																function() {
																	$(function() {
																		$(
																				".info-btn a")
																				.click(
																						function() {
																							$(
																									".info-btn a")
																									.removeClass(
																											"on");
																							$(
																									this)
																									.addClass(
																											"on");
																							var activeTab = $(
																									this)
																									.attr(
																											"rel");
																						});
																	});
																});
											</script>

											<h4>쿠폰/적립금 사용</h4>
											<table class="info-write coupon">
												<tbody>

													<tr>
														<th>쿠폰</th>
														<td>
															<table class="coupon-table point-table">
																<colgroup>
																	<col width="5%">
																	<col width="*">
																	<col width="15%">
																	<col width="15%">
																</colgroup>
																<thead>
																	<tr>
																		<th scope="col">선택</th>
																		<th scope="col">쿠폰명</th>
																		<th scope="col">할인</th>
																		<th scope="col">사용기간</th>
																	</tr>
																</thead>
																<tbody>
																	<tr>
																		<td colspan="4" class="noData">쿠폰은 10,000원 이상부터
																			사용 가능합니다.</td>
																	</tr>
																	<input type="hidden" id="coupon_cnt" value="1">
																</tbody>
															</table>
														</td>
													</tr>

													<tr>
														<th>적립금</th>
														<td><input type="text" class="short-input onlynum"
															name="trade_use_point"
															onkeyup="javascript:tradePriceCheck('9900', '');">
															<a href="javascript:point_use_all(${member.point});"
															class="aBtn">모두 사용</a> <span class="point">보유적립금
																:&nbsp;<strong>${member.point}</strong>
														</span> <span class="pointTxt color-gray">※ 적립금은 1,000포인트
																이상부터 사용 가능합니다.</span></td>
													</tr>
												</tbody>
											</table>

											<h4>결제수단 선택</h4>
											<div class="payment-means">
												<div class="payment-means-btn">
													<a href="javascript:tradeMethod('CARD','1');"
														class="btn btn1 on">신용카드</a> <a
														href="javascript:tradeMethod('BANK','2');"
														class="btn btn2">실시간 계좌이체</a> <a
														href="javascript:tradeMethod('VBANK','3');"
														class="btn btn3">무통장입금</a>
												</div>

												<div class="payment-means-info">
													<ul>
														<li>실시간 이체 결제시 화면 아래 '결제하기'버튼을 클릭하시면 실시간 이체 결제 창이
															나타납니다.</li>
														<li>실시간 이체 결제 창을 통해 입력되는 고객님의 정보는 128bit로 안전하게 암호화되어
															전송되며 승인 처리 후 정보는 승인 성공/ 실패 여부에 상관없이 자동 으로 폐기되므로, 안전합니다.</li>
														<li>실시간 이체 결제 신청시 승인 진행에 다소 시간이 소요될 수 있으므로 '중지',
															'새로고침'을 누르지 마시고 결과 화면이 나타 날때까지 기다려 주십시오.</li>
														<li>신용카드/ 실시간 이체는 결제 후, 무통장입금은 입금확인 후 배송이 이루어집니다.</li>
													</ul>
												</div>
											</div>
											<div id="scrollStop"></div>
											<input type="hidden" name="VerifySType" value="S"><input
												type="hidden" name="EncGoodsName"
												value="%uBCF4%uB4EC%20%uBC30%uBCC0%uBD09%uD22C%208%uB864%28120%uB9E4%29"><input
												type="hidden" name="EncBuyerName" value="%uAE40%uC815%uD658"><input
												type="hidden" name="NpDirectYn" value="N"><input
												type="hidden" name="NpDirectLayer" value="Y"><input
												type="hidden" name="JsVer" value="nicepay-3.0"><input
												type="hidden" name="NpSvcType" value="WEBSTD"><input
												type="hidden" name="DeployedVer" value="1.1.3"><input
												type="hidden" name="DeployedDate" value="191128"><input
												type="hidden" name="DeployedFileName" value="nicepay-3.0"><input
												type="hidden" name="EncVbankAccountName" value=""><input
												type="hidden" name="AuthResultCode" value="I009"><input
												type="hidden" name="AuthResultMsg" value="사용자 취소"><input
												type="hidden" name="AuthToken"
												value="NICETOKN737E09EFDE820ADAB412B8D8B4DE31D8"><input
												type="hidden" name="Signature"
												value="e5f98a982f15e5214fe1da072ae9402fd6c740154cf46d84b1cb795d207b0e20">
										</form>
									</div>


									<div class="col-30">

										<div class="order-prdInfoWrap sticky-start" id="theFixed">
											<div class="order-summary">
												<h4>주문요약</h4>
												<dl>
													<dt>총 상품금액</dt>
													<dd class="price">9,900원</dd>
												</dl>
												<dl>
													<dt>배송비</dt>
													<dd class="price">
														<span id="deliv_price">3,000</span>원
													</dd>
												</dl>
												<dl id="deliv_jeju">
													<dt>제주, 도서산간배송비</dt>
													<dd class="price">
														<span id="deliv_price2">0</span>원
													</dd>
												</dl>
												<dl>
													<dt>쿠폰사용</dt>
													<dd class="price">
														<span id="trade_use_coupon">0</span>원
													</dd>
												</dl>
												<dl>
													<dt>적립금 사용</dt>
													<dd class="price">
														<span id="trade_use_point_txt">0</span>원
													</dd>
												</dl>
												<dl class="no-line">
													<dt>총 결제금액</dt>
													<dd class="total-price">
														<strong><span id="total_price2">9,900</span></strong><span>원</span>
													</dd>
												</dl>
												<div class="button-area">
													<a href="javascript:;" class="roundBtn blueBtn" id="payment-button"
														onclick="f_cert();">결제하기</a>
												</div>
											</div>
										</div>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script>
			var element_wrap = document.getElementById('contents_box');

			function foldDaumPostcode() {
				// iframe을 넣은 element를 안보이게 한다.
				element_wrap.style.display = 'none';
			}
			function execDaumPostCode3() {

				$('#postCodePopup').addClass('on');
				$(".postCodeBox").css({
				//"marginTop": ((-$(".postCodeBox").outerHeight())/2)+"px",
				//"marginLeft": ((-$(".postCodeBox").outerWidth())/2)+"px"
				//팝업창을 가운데로 띄우기 위해 현재 화면의 가운데 값과 스크롤 값을 계산하여 팝업창 CSS 설정
				});
				$('.bg_000').on('click', function() {
					$('#postCodePopup').removeClass('on');
				});
				$(".closed").on('click', function() {
					$('#postCodePopup').removeClass('on')
				});

				// 현재 scroll 위치를 저장해놓는다.
				var currentScroll = Math.max(document.body.scrollTop,
						document.documentElement.scrollTop);
				new daum.Postcode(
						{
							oncomplete : function(data) {
								// 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

								// 각 주소의 노출 규칙에 따라 주소를 조합한다.
								// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
								var addr = ''; // 주소 변수
								var extraAddr = ''; // 참고항목 변수

								//사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
								if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
									addr = data.roadAddress;
								} else { // 사용자가 지번 주소를 선택했을 경우(J)
									addr = data.jibunAddress;
								}

								// 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
								if (data.userSelectedType === 'R') {
									// 법정동명이 있을 경우 추가한다. (법정리는 제외)
									// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
									if (data.bname !== ''
											&& /[동|로|가]$/g.test(data.bname)) {
										extraAddr += data.bname;
									}
									// 건물명이 있고, 공동주택일 경우 추가한다.
									if (data.buildingName !== ''
											&& data.apartment === 'Y') {
										extraAddr += (extraAddr !== '' ? ', '
												+ data.buildingName
												: data.buildingName);
									}
									// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
									if (extraAddr !== '') {
										extraAddr = ' (' + extraAddr + ')';
									}
									// 조합된 참고항목을 해당 필드에 넣는다.
									document.getElementById("addr2").value = extraAddr;

								} else {
									document.getElementById("addr2").value = '';
								}

								// 우편번호와 주소 정보를 해당 필드에 넣는다.
								document.getElementById('postcode').value = data.zonecode;
								document.getElementById("addr1").value = addr;
								// 커서를 상세주소 필드로 이동한다.
								document.getElementById("addr2").focus();

								// iframe을 넣은 element를 안보이게 한다.
								// (autoClose:false 기능을 이용한다면, 아래 코드를 제거해야 화면에서 사라지지 않는다.)
								element_wrap.style.display = 'none';

							},
							// 우편번호 찾기 화면 크기가 조정되었을때 실행할 코드를 작성하는 부분. iframe을 넣은 element의 높이값을 조정한다.
							onresize : function(size) {
								element_wrap.style.height = '400px';
							},
							width : '100%',
							height : '100%'
						}).embed(element_wrap);

				// iframe을 넣은 element를 보이게 한다.
				element_wrap.style.display = 'block';
			}
		</script>
 <script>
      var clientKey = 'test_ck_D5GePWvyJnrK0W0k6q8gLzN97Eoq'
      var tossPayments = TossPayments(clientKey)

      var button = document.getElementById('payment-button') // 결제하기 버튼

      button.addEventListener('click', function () {
        tossPayments.requestPayment('카드', {
          amount: 15000,
          orderId: 'vLVP3MAjKdXoA-CeYJg9Z',
          orderName: '토스 티셔츠 외 2건',
          customerName: '박토스',
          successUrl: 'http://localhost:8080/success',
          failUrl: 'http://localhost:8080/fail',
        })
      })
    </script>
		<!-- footer Start -->

		<footer id="footer">
			<div class="ft_wrap">
				<div class="ft_menu">
					<ul>
						<li><a
							href="/resources/bodeum.co.kr/html/common_ui/content/check_agreement.php">이용약관</a></li>
						<li><a
							href="/resources/bodeum.co.kr/html/common_ui/content/check_privacy.php">개인정보취급방침</a></li>
						<li><a
							href="/resources/bodeum.co.kr/html/common_ui/content/alliance.php">제휴/섭외/도매문의</a></li>
						<li><a
							href="/resources/bodeum.co.kr/html/common_ui/customer/recruit.php">채용공고</a></li>
						<li class="last"><a
							href="/resources/bodeum.co.kr/html/common_ui/customer/customer.php">고객센터</a></li>
					</ul>
				</div>
				<div class="ft_bottom">
					<div class="inner">
						<div class="address">
							<address>
								(주)보듬컴퍼니<span>대표: 강형욱</span> <span>사업자등록번호: 114-87-19376</span>
								<span>통신판매업허가번호: 2020-진접오남-0309</span><br> 경기도 남양주시 오남읍
								진건오남로667번길 64-33 <span>전화: 1800-6358</span><br>
							</address>
							<p class="copy">COPYRIGHT(C) 2017 (주)보듬컴퍼니 All right
								reserved.</p>
						</div>
					</div>
				</div>
				<div class="bodeumShop pcVer">
					<a href="/resources/bodeum.co.kr/html/shop/index.php"><img
						src="/resources/bodeum.co.kr/html/common/img/bodeumShop.png"></a>
				</div>
				<div class="bodeumShop mobileVer">
					<a href="/resources/bodeum.co.kr/html/shop/index.php"><img
						src="/resources/bodeum.co.kr/html/common/img/bodeumShop_m.png"></a>
				</div>
			</div>
		</footer>
	</div>
	<script type="text/javascript"
		src="/resources/bodeum.co.kr/html/common/js/jquery.min.js"></script>
	<script type="text/javascript"
		src="/resources/bodeum.co.kr/html/common/js/heyModal.min.js"></script>
	<script src="https://code.jquery.com/jquery-1.11.2.min.js"></script>
	<script src="/resources/bodeum.co.kr/html/common/js/datepicker.js"></script>
	<script>
		document.addEventListener('DOMContentLoaded',
				function() {
					var myModal = heyModal(document
							.querySelector('.modal-layerPopup'));
				});
	</script>
	<script>
		$('#minDatePick').dcalendarpicker();
		$('#maxDatePick').dcalendarpicker();
		//creates the calendar
	</script>
	<script type="text/javascript">
		jQuery("document").ready(function($) {
			var nav = $('#m_header');
			var pos = nav.offset().top;

			$(window).scroll(function() {
				var fix = ($(this).scrollTop() > pos) ? true : false;

				nav.toggleClass("fixed", fix);
				$('body').toggleClass("fix-body", fix);
			});
		});
	</script>
	<script type="text/javascript">
		jQuery("document").ready(function($) {
			var nav = $('#header');
			var pos = nav.offset().top;

			$(window).scroll(function() {
				var fix = ($(this).scrollTop() >= pos) ? true : false;
				nav.toggleClass("fixed", fix);
			});
			$(window).scroll(function() {
				if ($(window).scrollTop() > pos) {
					$('#header.pcVer').addClass('fixed');
				} else {
					$('#header.pcVer').removeClass('fixed');
				}
				;
			});
		});
	</script>
	<script>
		//상세페이지 정보

		$(document)
				.ready(
						function(e) {
							var navWrap = $('body'), item = $('.prdInfoWrap'), gap = $(
									"#header").height(), paddingGap = 60, startPosition = 0, stopPosition = $(
									".scrollStop").offset().top
									- item.outerHeight(true) - gap - paddingGap;
							$(window).on(
									"resize",
									function(e) {
										if ($(window).width() < 990) {
											gap = 50;
											stopPosition = $(".scrollStop")
													.offset().top
													- item.outerHeight(true)
													- gap - paddingGap;
										} else {
											gap = $("#header.pcVer").height();
											stopPosition = $(".scrollStop")
													.offset().top
													- item.outerHeight(true)
													- gap - paddingGap;
										}

										$(document).trigger("scroll");
									})
							$(window).trigger("resize");
							$(window)
									.scroll(
											function() {
												//stick nav to top of page
												var st = $(this).scrollTop();
												if (st > startPosition) {
													item
															.addClass("sticky-fixed");
													item.css({
														top : gap
													});
													if (st > stopPosition) {
														item
																.removeClass("sticky-fixed");
														item
																.addClass("sticky-abs");
														item
																.css({
																	top : stopPosition
																			- paddingGap
																});
													} else {
														item
																.addClass("sticky-fixed");
														item
																.removeClass("sticky-abs");
													}
												} else {
													item
															.removeClass("sticky-fixed");
													item.css({
														top : gap + paddingGap
													});
													console
															.log(
																	"gap+paddingGap===",
																	gap
																			+ paddingGap);
												}
											});
						})
	</script>
	<script>
		//비회원 주문, 회원 주문
		$(document)
				.ready(
						function(e) {
							var navWrap = $('body'), item = $('.order-prdInfoWrap'), gap = $(
									"#header").height(), paddingGap = 60, startPosition = 0, stopPosition = $(
									"#footer").offset().top
									- item.outerHeight(true) - gap - paddingGap;
							//console.log("startPosition===",startPosition,"stopPosition===",stopPosition);
							$(window).on(
									"resize",
									function(e) {
										if ($(window).width() < 990) {
											gap = 50;
											stopPosition = $("#footer")
													.offset().top
													- item.outerHeight(true)
													- gap - paddingGap;
										} else {
											gap = $("#header.pcVer").height();
											stopPosition = $("#footer")
													.offset().top
													- item.outerHeight(true)
													- gap - paddingGap;
										}

										$(document).trigger("scroll");
									})
							$(window).trigger("resize");
							$(document).scroll(function() {
								//stick nav to top of page
								var st = $(this).scrollTop();
								if (st > startPosition) {
									item.addClass("sticky-fixed");
									item.css({
										top : gap
									});
									if (st > stopPosition) {
										item.removeClass("sticky-fixed");
										item.addClass("sticky-abs");
										item.css({
											top : stopPosition - paddingGap
										});
									} else {
										item.addClass("sticky-fixed");
										item.removeClass("sticky-abs");
									}
								} else {
									item.removeClass("sticky-fixed");
									item.css({
										top : gap + paddingGap
									});
								}
							});
						})
	</script>
	<script
		src="/resources/bodeum.co.kr/html/common/js/jquery.simplePopup.js"></script>
	<script type="text/javascript">
		//마이페이지 - 주문내역팝업
		$(document).ready(function() {
			$('.show').click(function() {
				$('#pop1').simplePopup();
			});
		});
	</script>

	<!-- Mobon Tracker v3.1 [공용] start -->
	<script type="text/javascript">
	<!--
		function mobRf() {
			var rf = new EN();
			rf.setSSL(true);
			rf.sendRf();
		}
	//-->
	</script>
	<script src="https://cdn.megadata.co.kr/js/enliple_min2.js"
		defer="defer" onload="mobRf()"></script>
	<!-- Mobon Tracker v3.1 [공용] end -->

	<!-- WIDERPLANET  SCRIPT START 2018.8.1 -->
	<div id="wp_tg_cts" style="display: none;">
		<script id="wp_tag_script_1675903350083" charset="UTF-8"
			src="https://astg.widerplanet.com/delivery/wpc.php?v=1&amp;ver=4.0&amp;r=1&amp;md=bs&amp;ga=1ht1tnd-15n4u7h-3-1&amp;wp_uid=2-ce5aebea35bf2d597d540bf3826e06b8-s1673928035.793000%7Cwindows_10%7Cchrome-1v1ehwe&amp;ty=Home&amp;ti=41304&amp;device=web&amp;charset=UTF-8&amp;tc=1675903350083&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Forder_insert.php%3Fgubun%3Dgoods%26trade_method%3D4&amp;loc=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Fpayment.php%3Ftrade_code%3DJRYEQ1675903350"></script>
		<script id="wp_onsite_script" charset="UTF-8"
			src="https://cdn-aitg.widerplanet.com/onsite/onsite.js"></script>
	</div>
	<script type="text/javascript">
		var UserAgent = navigator.userAgent;
		var widerplanet_device = (UserAgent
				.match(/iPhone|iPod|iPad|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent
				.match(/LG|SAMSUNG|Samsung/) != null) ? "moblie" : "web";

		var wptg_tagscript_vars = wptg_tagscript_vars || [];
		wptg_tagscript_vars.push((function() {
			return {
				wp_hcuid : "", /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
				 *주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
				ti : "41304", /*광고주 코드 */
				ty : "Home", /*트래킹태그 타입 */
				device : widerplanet_device
			/*디바이스 종류  (web 또는  mobile)*/

			};
		}));
	</script>
	<script type="text/javascript" async=""
		src="/resources/cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
	<!-- // WIDERPLANET  SCRIPT END 2018.8.1 -->

	<!-- NAVER SCRIPT -->
	<script type="text/javascript" src="/resources/wcs.naver.net/wcslog.js"></script>
	<script type="text/javascript">
		if (!wcs_add)
			var wcs_add = {};
		wcs_add["wa"] = "s_47fad347659f";
		if (!_nasa)
			var _nasa = {};
		if (window.wcs) {
			wcs.inflow("bodeum.co.kr");
			wcs_do(_nasa);
		}
	</script>
	<!-- NAVER SCRIPT END -->


</body>
</html>