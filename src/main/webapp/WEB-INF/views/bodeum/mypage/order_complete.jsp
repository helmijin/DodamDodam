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
	content="https://bodeum.co.kr/html/common_ui/order/order_complete.php?trade_code=EPOPJ1675923901">
<meta property="og:description" content="">
<meta property="og:image"
	content="https://www.bodeum.co.kr/html/common/img/linkLogo.jpg">
<meta name="twitter:card" content="summary">
<meta name="twitter:site"
	content="https://bodeum.co.kr/html/common_ui/order/order_complete.php?trade_code=EPOPJ1675923901">
<meta name="twitter:title" content="Bodeum">
<meta name="twitter:description"
	content="혼내지 않아도, 혼나지 않아도 되는 반려견 교육. 보듬컴퍼니">
<meta name="twitter:image"
	content="https://www.bodeum.co.kr/html/common/img/linkLogo.jpg">
<link rel="canonical"
	href="https://bodeum.co.kr/html/common_ui/order/order_complete.php?trade_code=EPOPJ1675923901">


<meta name="robots" content="noindex">
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

	fbq('track', 'Purchase', {
		content_type : 'product',
		content_name : '보듬 배변봉투 8롤(120매)',
		value : '9900',
		currency : 'KRW'
	});
</script>

<!-- 카카오 모먼트 픽셀 추가:s-->
<!-- Kakao Pixel Code -->

<script type="text/javascript" charset="UTF-8"
	src="/resources/t1.daumcdn.net/adfit/static/kp.js"></script>
<script type="text/javascript">
	kakaoPixel('4634556370104107431').pageView();

	kakaoPixel('4634556370104107431').pageView();
	kakaoPixel('4634556370104107431').purchase({
		total_quantity : "1", // 주문 내 상품 개수(optional)
		total_price : "9900", // 주문 총 가격(optional)
		currency : "KRW", // 주문 가격의 화폐 단위(optional, 기본 값은 KRW)
		products : [ // 주문 내 상품 정보(optional)
		{
			name : "보듬 배변봉투 8롤(120매)",
			quantity : "1",
			price : "9900"
		} ]
	});
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
	gtag('set', 'dimension2', '2023-02-09 15:29:19');
	gtag('config', 'UA-173956953-1');

	gtag('event', 'IP_dimension', {
		'IP' : '112.148.244.244'
	}, 'Date_dimension', {
		'Date' : '2023-02-09 15:29:19'
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
	gtag('event', 'conversion', {
		'send_to' : 'AW-830632214/loavCO3mldoBEJbiiYwD',
		'value' : 9900,
		'currency' : 'KRW',
		'transaction_id' : ''
	});
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
	src="https://googleads.g.doubleclick.net/pagead/viewthroughconversion/830632214/?random=1675924158530&amp;cv=11&amp;fst=1675924158530&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3280&amp;u_w=1536&amp;u_h=864&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Forder_complete.php%3Ftrade_code%3DEPOPJ1675923901&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fnicepay%2Fshop.php&amp;tiba=Bodeum&amp;auid=2059486910.1674639085&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Chromium%3B110.0.5481.77%7CNot%2520A(Brand%3B24.0.0.0%7CGoogle%2520Chrome%3B110.0.5481.77&amp;uamb=0&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;data=event%3Dgtag.config&amp;rfmt=3&amp;fmt=4"></script>
<script type="text/javascript" async=""
	src="https://www.googleadservices.com/pagead/conversion/830632214/?random=1675924158542&amp;cv=11&amp;fst=1675924158542&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3280&amp;u_w=1536&amp;u_h=864&amp;label=loavCO3mldoBEJbiiYwD&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Forder_complete.php%3Ftrade_code%3DEPOPJ1675923901&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fnicepay%2Fshop.php&amp;tiba=Bodeum&amp;value=9900&amp;currency_code=KRW&amp;capi=1&amp;gtm_ee=1&amp;auid=2059486910.1674639085&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Chromium%3B110.0.5481.77%7CNot%2520A(Brand%3B24.0.0.0%7CGoogle%2520Chrome%3B110.0.5481.77&amp;uamb=0&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;data=event%3Dconversion&amp;rfmt=3&amp;fmt=4"></script>
<script
	src="https://cdn.megadata.co.kr/js/socialLink/social_sns_config_min.js"
	type="text/javascript" defer=""></script>
</head>
<body class="">
	<iframe allow="join-ad-interest-group" data-tagging-id="AW-830632214"
		data-load-time="1675924158539" height="0" width="0"
		style="display: none; visibility: hidden;"
		src="https://td.doubleclick.net/td/rul/830632214?random=1675924158530&amp;cv=11&amp;fst=1675924158530&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3280&amp;u_w=1536&amp;u_h=864&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Forder_complete.php%3Ftrade_code%3DEPOPJ1675923901&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fnicepay%2Fshop.php&amp;tiba=Bodeum&amp;auid=2059486910.1674639085&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Chromium%3B110.0.5481.77%7CNot%2520A(Brand%3B24.0.0.0%7CGoogle%2520Chrome%3B110.0.5481.77&amp;uamb=0&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;data=event%3Dgtag.config"></iframe>
	<iframe allow="join-ad-interest-group"
		data-tagging-id="AW-830632214/loavCO3mldoBEJbiiYwD"
		data-load-time="1675924158545" height="0" width="0"
		style="display: none; visibility: hidden;"
		src="https://td.doubleclick.net/td/rul/830632214?random=1675924158542&amp;cv=11&amp;fst=1675924158542&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3280&amp;u_w=1536&amp;u_h=864&amp;label=loavCO3mldoBEJbiiYwD&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Forder_complete.php%3Ftrade_code%3DEPOPJ1675923901&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fnicepay%2Fshop.php&amp;tiba=Bodeum&amp;value=9900&amp;currency_code=KRW&amp;capi=1&amp;gtm_ee=1&amp;auid=2059486910.1674639085&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Chromium%3B110.0.5481.77%7CNot%2520A(Brand%3B24.0.0.0%7CGoogle%2520Chrome%3B110.0.5481.77&amp;uamb=0&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;data=event%3Dconversion"></iframe>
	<div class="wsmenucontainer clearfix ">
		<div class="overlapblackbg"></div>

		<div class="wsmobileheader clearfix" id="m_header">
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
		<div id="header" class="header pcVer">
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
							<li><a
								href="/resources/bodeum.co.kr/html/common_ui/customer/customer.php">고객센터</a></li>
							<li><a
								href="/resources/bodeum.co.kr/html/common_ui/mypage/orderList.php">주문조회</a></li>
							<!--170811 추가-->
							<li><a
								href="/resources/bodeum.co.kr/html/common_ui/order/cart.php"
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
											<!--<li><a href="/html/edu_movie/bodeum/media.php">#보듬</a></li>-->
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


		<script type="text/javascript">
			/* 신용카드 영수증 */
			/* 실결제시 : "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=card_bill&tno=" */
			/* 테스트시 : "https://testadmin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=card_bill&tno=" */
			function receiptView(tno, ordr_idxx, amount) {
				receiptWin = "https://npg.nicepay.co.kr/issue/IssueLoader.do?TID="
						+ tno + "&type=0";
				window.open(receiptWin, "", "width=455, height=815");
			}

			/* 현금 영수증 */
			/* 실결제시 : "https://admin8.kcp.co.kr/assist/bill.BillActionNew.do" */
			/* 테스트시 : "https://testadmin8.kcp.co.kr/assist/bill.BillActionNew.do" */
			function receiptView2(cash_no, ordr_idxx, amount) {
				receiptWin2 = "https://testadmin8.kcp.co.kr/assist/bill.BillActionNew.do?cmd=cash_bill&cash_no=";
				receiptWin2 += cash_no + "&";
				receiptWin2 += "order_id=" + ordr_idxx + "&";
				receiptWin2 += "trade_mony=" + amount;

				window.open(receiptWin2, "", "width=370, height=625");
			}
			/* 가상 계좌 모의입금 페이지 호출 */
			/* 테스트시에만 사용가능 */
			/* 실결제시 해당 스크립트 주석처리 */
			function receiptView3() {
				receiptWin3 = "http://devadmin.kcp.co.kr/Modules/Noti/TEST_Vcnt_Noti.jsp";
				window.open(receiptWin3, "", "width=520, height=300");
			}
		</script>

		<div id="cartwrapper">
			<div id="wrapper">
				<div class="content">
					<div class="inner-contents">
						<div class="section">
							<div class="order-complete">
								<div class="complete-txt">
									<h5>고객님의 주문이 완료 되었습니다.</h5>
									<div>주문내역 및 배송에 관한 안내는 주문조회를 통하여 확인 가능합니다.</div>
									<div class="order-num">
										<ul>
											<li>주문번호 : <strong>${ordernum}</strong></li>
											<li>주문일자 : 2023-02-09 15:29:18</li>
										</ul>
									</div>
								</div>
								<div class="completetitle">
									<h2>주문 상품 정보</h2>
								</div>

								<table class="list-table order-table payment-table mb-50">
									<colgroup>
										<col width="60%">
										<col width="20%">
										<col width="20%">
									</colgroup>
									<!-- 영상/제품 -->

									<script>
										var widerplanet_cart = widerplanet_cart
												|| [];
										widerplanet_cart.push({
											i : '1046',
											t : '보듬 배변봉투 8롤(120매)',
											p : '9,900',
											q : '1'
										});
									</script>

									<thead>
										<tr>
											<th colspan="3">
												<div class="order-date">
													2023-02-09 <span>[주문번호 : <a
														href="../mypage/orderDetail.php?trade_gubun=1&amp;idx=446398&amp;enc_data=">${order.ordernum}</a>]
													</span>
												</div>
											</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="order" items="${orderlist}">
											<tr>
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
															<div class="prd_code_num">상품주문번호 :
																${order.ordernum}</div>
															<p class="title-txt">
																<a href="/html/shop/prd_detail.php?idx=1046">${order.ordered}</a>
															</p>
															<div class="option">
																<p>order.opt1</p>
																<p>order.opt2</p>
																<p>order.opt3</p>
																<p>order.opt4</p>
																<p>order.opt5</p>
																<p>order.opt6</p>
															</div>
															<div class="quantity">${order.orderednum}</div>
														</div>
													</div>
												</td>
												<td class="col-price"><span class="label">상품금액</span> <span
													class="price"><strong>${order.orderprice*order.orderednum}</strong>원</span></td>
												<td class="col-orderState"><span class="label">상태</span>
													<span><span class="blue"><span class="blue">주문완료</span>
													</span> <br>(2023-02-10 23:59:59 결제완료)</span></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>


								<!-- 배송상품이 있을경우 배송지정보 노출 -->
								<div class="completetitle">
									<h2>배송지 정보</h2>
								</div>
								<table class="orderList-table mb-50">
									<colgroup>
										<col width="20%">
										<col width="80%">
									</colgroup>
									<tbody>
										<tr>
											<th>수령인</th>
											<td>${member.name}</td>
										</tr>
										<tr>
											<th>핸드폰 번호</th>
											<td>${member.ph1}-${member.ph2}-${member.ph3}</td>
										</tr>
										<tr>
											<th>이메일</th>
											<td>${member.email1}@${member.email2}</td>
										</tr>
										<tr>
											<th>주소</th>
											<td>${address.address}</td>
										</tr>
										<tr>
											<th>배송요청사항</th>
											<td>배송전에 미리 연락 바랍니다.</td>
										</tr>
									</tbody>
								</table>
								<div class="completetitle">
									<h2>결제 정보</h2>
								</div>
								<div class="paylst-table">
									<div class="payLeft">
										<table class="orderList-table paylst-table">
											<colgroup>
												<col width="31%">
												<col width="69%">
											</colgroup>
											<tbody>
												<tr>
													<th>결제수단</th>
													<td>${payment.paymentsys}</td>
												</tr>
												<tr>
													<th>은행명</th>
													<td>${payment.paymentbank}</td>
												</tr>
												<tr>
													<th>예금주</th>
													<td>${payment.accountholder}</td>
												</tr>
												<tr>
													<th>계좌번호</th>
													<td></td>
												</tr>
												<tr>
													<th>입금기한</th>
													<td><span class="blue">2023년 02월 10일 23시 59분까지</span></td>
												</tr>
											</tbody>
										</table>
									</div>
									<div class="total">
										<div>
											<dl>
												<dt>총 상품금액</dt>
												<dd>${sumprice}</dd>
											</dl>
											<dl>
												<dt>배송비</dt>
												<dd>${deliveryfee}</dd>
											</dl>
											<dl>
												<dt>쿠폰사용</dt>
												<dd>0원</dd>
											</dl>
											<dl>
												<dt>적립금 사용</dt>
												<dd>3,000원</dd>
											</dl>
											<dl>
												<dt>총 결제금액</dt>
												<dd>
													<strong>${sumprice+deliveryfee}</strong>원
												</dd>
											</dl>
										</div>
									</div>
								</div>
								<div class="btn">
									<a href="/resources/bodeum.co.kr/html/shop"
										class="roundBtn whiteBtn">쇼핑계속하기</a> <a
										href="/bodeum/orderList"
										class="roundBtn blueBtn">주문확인하기</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<!-- NAVER SCRIPT -->
		<script type="text/javascript"
			src="/resources/wcs.naver.net/wcslog.js"></script>
		<script type="text/javascript">
			var _nasa = {};
			if (window.wcs)
				_nasa["cnv"] = wcs.cnv("1", '9,900'.replace(/[^0-9]/g, ''));
		</script>
		<!-- NAVER SCRIPT END -->

		<!-- Mobon Tracker v3.1 [결제전환] start -->
		<script type="text/javascript">
		<!--
			function mobConv() {
				var cn = new EN();
				cn.setData("uid", "hunter527");
				cn.setData("ordcode", "EPOPJ1675923901");
				cn.setData("pcode", ""); // 주문 완료시 묶음 주문인 경우 첫번째 또는 마지막 상품의 제품코드만
				cn.setData("qty", "1"); // 주문 완료시 묶음 주문인 경우 총 제품 수량(총주문한 상품의 갯수를 의미. 예) A상품 2개, B상품1개 ->  A+B 하여 총 수량은 3개)
				cn.setData("price", "9,900"); // 주문 완료시 묶음 주문인 경우 구매한 총 가격(총 결제금액을 의미함)
				cn.setData("pnm", encodeURIComponent(encodeURIComponent(""))); // 첫번째 또는 마지막 상품의 제품코드
				cn.setSSL(true);
				cn.sendConv();
			}
		//-->
		</script>
		<script src="https://cdn.megadata.co.kr/js/enliple_min2.js"
			defer="defer" onload="mobConv()"></script>
		<!-- Mobon Tracker v3.1 [결제전환] end -->

		<!-- WIDERPLANET PURCHASE SCRIPT START 2018.8.1 -->
		<div id="wp_tg_cts" style="display: none;">
			<script id="wp_tag_script_1675924158603" charset="UTF-8"
				src="https://astg.widerplanet.com/delivery/wpc.php?v=1&amp;ver=4.0&amp;r=1&amp;md=bs&amp;ga=1ht1tnd-15n4u7h-3-1&amp;wp_uid=2-ce5aebea35bf2d597d540bf3826e06b8-s1673928035.793000%7Cwindows_10%7Cchrome-1v1ehwe&amp;ty=PurchaseComplete&amp;ti=41304&amp;i0=1046&amp;p0=9%2C900&amp;q0=1&amp;t0=%EB%B3%B4%EB%93%AC%20%EB%B0%B0%EB%B3%80%EB%B4%89%ED%88%AC%208%EB%A1%A4(120%EB%A7%A4)&amp;device=web&amp;charset=UTF-8&amp;tc=1675924158603&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fnicepay%2Fshop.php&amp;loc=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Forder%2Forder_complete.php%3Ftrade_code%3DEPOPJ1675923901"></script>
			<script id="wp_onsite_script" charset="UTF-8"
				src="https://cdn-aitg.widerplanet.com/onsite/onsite.js"></script>
		</div>
		<script type="text/javascript">
			var UserAgent = navigator.userAgent;
			var widerplanet_device = (UserAgent
					.match(/iPhone|iPod|Android|Windows CE|BlackBerry|Symbian|Windows Phone|webOS|Opera Mini|Opera Mobi|POLARIS|IEMobile|lgtelecom|nokia|SonyEricsson/i) != null || UserAgent
					.match(/LG|SAMSUNG|Samsung/) != null) ? "moblie" : "web";

			var wptg_tagscript_vars = wptg_tagscript_vars || [];
			wptg_tagscript_vars.push((function() {
				return {
					wp_hcuid : "", /*고객넘버 등 Unique ID (ex. 로그인  ID, 고객넘버 등 )를 암호화하여 대입.
					 *주의 : 로그인 하지 않은 사용자는 어떠한 값도 대입하지 않습니다.*/
					ti : "41304",
					ty : "PurchaseComplete",
					device : widerplanet_device,
					items : widerplanet_cart
				};
			}));
		</script>
		<script type="text/javascript" async=""
			src="/resources/cdn-aitg.widerplanet.com/js/wp_astg_4.0.js"></script>
		<!-- // WIDERPLANET PURCHASE SCRIPT END 2018.8.1 -->


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
	<div id="wp_tg_cts" style="display: none;"></div>
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