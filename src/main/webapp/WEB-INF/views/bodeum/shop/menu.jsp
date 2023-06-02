<%@include file="../includes/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../../../resources/css/menu.css">
</head>
<body>

	<div id="wrapper" class="shopmain">
		<div class="containerWrap">
			<div class="home_menu">
				<ul id="menu_inner">
					<li style="width: 15px;"><a href="/html/shop/"> <img
							src="../../../resources/Bodeum_files/icon_menu_home.svg" alt="" /></a></li>
					<li>&nbsp;&nbsp;&gt;&nbsp;&nbsp; <a href="list.php?part_idx=3">패션</a>
					</li>
					<!--li>&nbsp;&gt;&nbsp;&nbsp;<a href="javascript:"></a>&nbsp;&nbsp;&gt;&nbsp;</li>
              <li><a href="javascript:">패션</a></li-->
				</ul>
			</div>
			<div class="content">
				<div class="inner-contents">
					<div class="list-section">
						<div class="cate-title-wrap">
							<div class="cate-title">패션</div>

							<ol class="cate-mobile-2depth">
								<!--li class="on"><a href="javascript:">2dep패션</a></li>
                            <li><a href="javascript:">2dep패션</a></li>
                            <li><a href="javascript:">2dep패션</a></li-->
							</ol>
						</div>

						<script>
							var $2depthli = $('.cate-3depth li');

							$2depthli.on('click', function() {
								$(this).addClass('on');
							})
						</script>
						<div class="sort">
							<ul>
								<li><a href="/shop/menu?c=301&search_sort=1">최근 등록 순</a></li>
								<li><a href="/shop/menu?c=301&search_sort=2">판매 수량 순</a></li>
								<li><a href="/shop/menu?c=301&search_sort=3">낮은 가격 순</a></li>
								<li><a href="/shop/menu?c=301&search_sort=4">높은 가격 순</a></li>
							</ul>
						</div>
						<div class="m_sort">
							<select name="msort" id="msort"
								onchange="if(this.value) location.href=(this.value);">
								<option value="/shop/menu?c=301&search_sort=1">최근 등록 순</option>
								<option value="/shop/menu?c=301&search_sort=2">판매 수량 순</option>
								<option value="/shop/menu?c=301&search_sort=3">낮은 가격 순</option>
								<option value="/shop/menu?c=301&search_sort=4">높은 가격 순</option>
							</select>
						</div>
						<div class="prd-list-wrap">
							<div class="container">
								<div class="row">
									<c:forEach items="${product}" var="product" begin="0" end="15"
										step="1" varStatus="status">
										<input type="hidden" name="itemnum" value="${product.itemnum}">
										<div class="col-25">
											<div class="prd-wrap">
												<div class="img">
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="/shop/specific?c=${product.catcode}&itemnum=${product.itemnum}"><img
																	src="../../../resources/Bodeum_files/1667186511_IMAGES1.jpg"
																	data-pin-nopin="true"></a>
															</div>
														</div>
													</div>
												</div>
												<div class="title">
													<a href="specific.php?idx=1059&part_idx=29"> <!--[보듬]-->
														${product.item}
													</a>
												</div>
												<!--171031 추가-->
												<!--할인이 들어가는 제품일 경우 노출됩니다.-->
												<div class="priceWrap">
													<div class="saleprice">
														<span>${product.itemdisco}</span>원
													</div>
													<div class="price">
														<strong>${product.itemprice}</strong>원
													</div>
												</div>
												<!--//171031 추가-->
												<div class="icon">
													<span class="bestItem">BEST</span> <span class="saleItem">SALE</span>
												</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
						</div>

						<!-- Paging -->
						<div class="paging">
							<ol>
								<li class='active'><a href='#'>1</a></li>
								<li class="etc">…</li>
								<li><a
									href="?part_idx=3&search_sort=&search_order=&PageNumber=1">1</a></li>
							</ol>
							<p>
								<a href='#prev' class='arrow_l'>Prev</a>
							</p>
							<p class="last">
								<a href='#next' class='arrow_r'>Next</a>
							</p>
						</div>
						<!-- Paging -->

					</div>
				</div>
			</div>
		</div>
	</div>

	<!-- footer 아래 장바구니 메뉴 -->

	<script>
		document.addEventListener('DOMContentLoaded',
				function() {
					var myModal = heyModal(document
							.querySelector('.modal-layerPopup'));
				});
	</script>


	<script type="text/javascript">
		jQuery("document").ready(function($) {
			var nav = $('#header');
			var pos = nav.offset().top;

			$(window).scroll(function() {
				var fix = ($(this).scrollTop() >= 100) ? true : false;
				nav.toggleClass("fixed", fix);
			});
			$(window).scroll(function() {
				if ($(window).scrollTop() > 100) {
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
		//FAQ jquery
		//Accordian Action
		var action = 'click';
		var speed = "500";

		//Document.Ready
		$(document).ready(
				function() {
					//Question handler
					$('.reviewAccodion li.review-title').on(
							action,
							function() {
								//gets next element
								//opens .a of selected question
								$(this).next().slideToggle(speed)
								//selects all other answers and slides up any open answer
								.siblings('.reviewAccodion li.review-content')
										.slideUp();

							});//End on click

					$('.reviewAccodion li.review-title').click(
							function() {
								$(this).toggleClass('on').parent().siblings()
										.children().removeClass('on');
							});

				});//End Ready
	</script>
	<script>
		//FAQ jquery
		//Accordian Action
		var action = 'click';
		var speed = "500";

		//Document.Ready
		$(document).ready(
				function() {
					//Question handler
					$('.qaAccodion li.qa-title').on(action, function() {
						//gets next element
						//opens .a of selected question
						$(this).next().slideToggle(speed)
						//selects all other answers and slides up any open answer
						.siblings('.qaAccodion li.qa-content').slideUp();

					});//End on click

					$('.qaAccodion li.qa-title').click(
							function() {
								$(this).toggleClass('on').parent().siblings()
										.children().removeClass('on');
							});

				});//End Ready
	</script>

	<script>
		//상품상세페이지 썸네일 마우스오버
		$(".sm-thum-list ul li").mouseover(function() {
			$(".sm-thum-list ul li").removeClass("active")
			$(this).addClass("active")
		})
	</script>
</body>
</html>
<!-- footer End -->
<%@include file="../includes/footer.jsp"%>
