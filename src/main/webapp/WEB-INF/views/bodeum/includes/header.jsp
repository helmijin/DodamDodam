<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript"
	src="../../../resources/JSfiles/jquery-3.0.0.min.js"></script>
<script type='text/javascript'
	src="../../../resources/JSfiles/webslidemenu.js"></script>
<script type='text/javascript' src="../../../resources/JSfiles/menu.js"></script>
<script type='text/javascript'
	src='../../../resources/JSfiles/placeholders.js'></script>
<script type='text/javascript'
	src='../../../resources/JSfiles/photo-viewer.js'></script>
<script type='text/javascript'
	src='../../../resources/JSfiles/owl.carousel.js'></script>
<script type='text/javascript'
	src="../../../resources/JSfiles/function.js"></script>
<script type="text/javascript"
	src="../../../resources/JSfiles/wcslog.js"></script>
<script type="text/javascript"
	src="../../../resources/JSfiles/1.8jquery.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/common.css" />
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

<script type="text/javascript">
	if (!wcs_add)
		var wcs_add = {};
	wcs_add["wa"] = "6238a009c0eed0";
	wcs_do();
</script>
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
<!--	<script src="../../../resources/JSfiles/postcode.v2.js"></script>-->
<script src="../../../resources/JSfiles/postcode.v2.js"></script>
<script src="../../../resources/JSfiles/DaumPostcode.js"></script>


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
	}(window, document, 'script', '../../../resources/JSfiles/fbevents.js');
	fbq('init', '2464508087174160');
	fbq('track', 'PageView');
</script>

<!-- 카카오 모먼트 픽셀 추가:s-->
<!-- Kakao Pixel Code -->

<script type="text/javascript" charset="UTF-8"
	src="../../../resources/JSfiles/kp.js"></script>
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
<script async
	src="https://www.googletagmanager.com/gtag/js?id=UA-173956953-1"></script>
<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('set', 'dimension1', '118.130.202.110');
	gtag('set', 'dimension2', '2023-02-06 10:06:14');
	gtag('config', 'UA-173956953-1');

	gtag('event', 'IP_dimension', {
		'IP' : '118.130.202.110'
	}, 'Date_dimension', {
		'Date' : '2023-02-06 10:06:14'
	});
</script>
<!-- End Google Analytics-->

<!-- 요청 : 구글 애드워즈 스크립트 추가 // 20.08.11 : bkmin -->
<!-- Global site tag (gtag.js) - Google Ads: 830632214 -->
<script async
	src="https://www.googletagmanager.com/gtag/js?id=AW-830632214">
	
</script>
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
	}(window, document, 'script', '../../../resources/JSfiles/fbevents.js');
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
					<img src="../../../resources/Bodeum_files/logo.jpg">
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
							<li><a href="/bodeum/edu/main">도담교육</a></li>
							<li><a href="/bodeum/shop/body" class="on">도담숍</a></li>
						</ul>
					</nav>

					<!-- .cd-primary-nav -->
					<h1 class="logo">
						<img src="../../../resources/Bodeum_files/logo.jpg" alt="도담_pc"
							width="350px;">
					</h1>

					<!-- all menu -->
					<!-- right menu -->
					<div class="right_menu">
						<ul>
							<li><a href="/bodeum/edu/login" class="login">로그인</a></li>
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
						if (!wcs_add)
							var wcs_add = {};
						wcs_add["wa"] = "5996c8d9e51f18";
						wcs_do();
					</script>
				</div>
				<!-- //all menu -->

				<!-- Menu Shop -->
				<div class="hd-menu">
					<div class="wrap_gnb">
						<!-- gnb -->
						<ul class="gnb shop_gnb">
							<li><a href="/bodeum/shop/body">HOME</a></li>
							<!-- [D] 마우스 오버시 .on 추가 -->
							<!--<li><a href="/shop/menu.php?part_idx=all">ALL</a></li>-->
							<li><a href="/bodeum/shop/menu?c=200">NEW</a></li>
							<li><a href="/bodeum/shop/menu?c=300">야외용품</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/shop/menu?c=301">가슴줄</a></li>
									<li><a href="/bodeum/shop/menu?c=302">리드줄</a></li>
									<li><a href="/bodeum/shop/menu?c=303">목줄</a></li>
									<li><a href="/bodeum/shop/menu?c=304">안전용품</a></li>
									<li><a href="/bodeum/shop/menu?c=305">산책용품</a></li>
								</ol></li>
							<li><a href="/bodeum/shop/menu?c=400">패션</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/shop/menu?c=401">SUMMER</a></li>
									<li><a href="/bodeum/shop/menu?c=402">아우터</a></li>
									<li><a href="/bodeum/shop/menu?c=403">액세서리</a></li>
								</ol></li>
							<li><a href="/bodeum/shop/menu?c=500">리빙</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/shop/menu?c=501">이동장</a></li>
									<li><a href="/bodeum/shop/menu?c=502">방석·매트</a></li>
									<li><a href="/bodeum/shop/menu?c=503">식기·보관</a></li>
									<li><a href="/bodeum/shop/menu?c=504">위생용품</a></li>
								</ol></li>
							<li><a href="/bodeum/shop/menu?c=600">장난감</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/shop/menu?c=601">노즈워크</a></li>
									<li><a href="/bodeum/shop/menu?c=602">터그</a></li>
									<li><a href="/bodeum/shop/menu?c=603">공</a></li>
									<li><a href="/bodeum/shop/menu?c=604">사운드</a></li>
									<li><a href="/bodeum/shop/menu?c=605">소프트토이</a></li>
								</ol></li>
							<li><a href="/bodeum/shop/menu?c=700">훈련용품</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/shop/menu?c=701">트릿백·가방</a></li>
									<li><a href="/bodeum/shop/menu?c=702">클리커</a></li>
									<li><a href="/bodeum/shop/menu?c=703">트레이너 의류</a></li>
									<li><a href="/bodeum/shop/menu?c=704">원반</a></li>
									<li><a href="/bodeum/shop/menu?c=705">전문가용</a></li>
								</ol></li>
							<li><a href="/bodeum/shop/menu?c=800">푸드</a>
								<ol class="sub-menu" style="opacity: 1; display: none;">
									<li><a href="/bodeum/shop/menu?c=801">사료·건식</a></li>
									<li><a href="/bodeum/shop/menu?c=802">영양제</a></li>
								</ol></li>
							<li><a href="/bodeum/shop/menu?c=900">SALE</a>
							<li class="search"><div>
									<i class="fa fa-search" aria-hidden="true"></i>
								</div>
								<div class="search-wrap-div">
									<form name="prdSearchform1" method="get"
										action="/bodeum/shop/menu">
										<input type="hidden" name="part_idx" value="all">
										<div class="srchInput-wrap">
											<input type="text" name="search_order"> <a
												href="javascript:searchProduct(1);" class="srchBtn"><i
												class="fa fa-search" aria-hidden="true"></i></a>
										</div>
									</form>
								</div></li>
						</ul>

					</div>
				</div>
			</div>
		</div>
		<script type="text/javascript"
			src="../../../resources/JSfiles/wcslog.js"></script>
		<script type="text/javascript">
					if (!wcs_add)
						var wcs_add = {};
					wcs_add["wa"] = "5996c8d9e51f18";
					wcs_do();
				</script>
		<!-- //gnb -->
		<script>
							$(document).ready(function() {
								$(".shop_gnb li.search div").click(function() {
									$(".search-wrap-div").toggleClass("on");
								});
								$('#wrapper').click(function() {
									$(".search-wrap-div").removeClass("on");
								});
							});
						</script>
		<!-- Menu Shop -->

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
		<!-- Header End -->