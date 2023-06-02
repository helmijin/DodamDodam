<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>

<%@include file="../includes/header.jsp"%>

<div id="wrapper">
	<div class="containerWrap mypage-all-wrap">

		<div class="content">
			<div class="inner-contents">
				<div class="mypage-section">
					<div class="leftBlock">
						<div class="user-thumb">
							<div class="ratio4 thumbnail-wrapper">
								<div class="thumbnail">
									<div class="centered">
										<img src="../../common/img/no-image-thumb.jpg"
											class="landscape">
									</div>
								</div>
							</div>
						</div>
						<div class="user-info">
							<div class="name">
								<span>김정환</span>님
							</div>
							<div class="id">(Ephemera0626)</div>
							<div class="infobtn">
								<a href="../../common_ui/mypage/profile-modify.php">내 정보</a> <a
									href="../../common_ui/mypage/dogInfo-modify.php">반려견 정보</a>
							</div>
						</div>
						<div class="menu-link">
							<ul>
								<li class="on"><a href="/bodeum/orderList"><i
										class="fa fa-shopping-cart" aria-hidden="true"></i>주문조회</a></li>
								<!--<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>과거내역보기</a></li>-->
								<li><a href="../../common_ui/mypage/coupon.php"><i
										class="fa fa-tag" aria-hidden="true"></i>쿠폰</a></li>
								<li><a href="../../common_ui/mypage/point.php"><i
										class="fa fa-database" aria-hidden="true"></i>적립금</a></li>
							</ul>
						</div>
						<div class="menu-link">
							<ul>
								<li><a href="../../common_ui/mypage/myLesson.php"><i
										class="fa fa-play" aria-hidden="true"></i>내 강의</a></li>
								<li><a href="../../common_ui/mypage/lessonStatus.php"><i
										class="fa fa-group" aria-hidden="true"></i>레슨현황</a></li>
							</ul>
						</div>
						<div class="menu-link">
							<ul>
								<li><a href="../../common_ui/mypage/myInqLst.php"><i
										class="fa fa-comments" aria-hidden="true"></i>1:1문의</a></li>
								<li><a href="../../common_ui/mypage/reviewList.php"><i
										class="fa fa-commenting" aria-hidden="true"></i>후기관리</a></li>
							</ul>
						</div>
					</div>


					<script type="text/javascript">
								function orderCancel(enc_data) {
									var choice = confirm("주문을 취소하시겠습니까?");
									if (choice) {
										location.href = "cancel_confirm.php?enc_data="
												+ enc_data;
									} else {
										return;
									}
								}

								function deliverySearch(n, number) {
									if (n == 1) {
										window.open(
												"http://nexs.cjgls.com/web/info.jsp?slipno="
														+ number, "",
												"width=710,height=700");
									} else if (n == 2) {
										window
												.open(
														"http://www.ilogen.com/d2d/delivery/invoice_search_popup.jsp?viewType=type1&invoiceNum="
																+ number, "",
														"width=710,height=700");
									}
								}

								function deliverySearch2(deliv_code, number) {
									window
											.open(
													"http://b2c.goodsflow.com/zkm/V1/whereis/bodeum/"
															+ deliv_code + "/"
															+ number, "",
													"width=710,height=700");
								}
							</script>

					<div class="rightBlock">
						<form name="searchForm" method="get" action="?">
							<input type="hidden" name="search_day" value="" id="search_day">
							<div class="mypageGrayBox mypage-srchFilter mb-50">
								<select id="all" class="w145" name="search_gubun">
									<option value="">구분전체</option>
									<option value="1">결제대기중</option>
									<option value="2">결제완료</option>
									<option value="3">배송준비중</option>
									<option value="4">배송중</option>
									<option value="5">배송완료</option>
									<option value="7">결제취소</option>
									<option value="8">반품환불완료</option>
								</select>
								<div class="dateBtn">
									<a href="#"
										onclick="selectSearchday(1); $('#search_day').val(1); $(this).addClass('on');">오늘</a>
									<a href="#"
										onclick="selectSearchday(2); $('#search_day').val(2); $(this).addClass('on');">1주일</a>
									<a href="#"
										onclick="selectSearchday(3); $('#search_day').val(3); $(this).addClass('on');">1개월</a>
									<a href="#"
										onclick="selectSearchday(4); $('#search_day').val(4); $(this).addClass('on');">3개월</a>
									<a href="#"
										onclick="selectSearchday(5); $('#search_day').val(5); $(this).addClass('on');">6개월</a>
								</div>
								<div class="divWrap">
									<div class="datePick">
										<div class="datepicker" style="display: inline-block;">
											<input type="text" class="datepicker-here" id="minDatePick"
												data-language="en" name="s_day" value="2022-11-11">
											<table class="calendar"
												style="position: absolute; left: 0px; display: none; box-shadow: rgba(0, 0, 0, 0.14) 0px 4px 6px 1px; width: 230px;">
												<thead>
													<tr>
														<th id="prev">‹</th>
														<th colspan="5" id="currM">November 2022</th>
														<th id="next">›</th>
													</tr>
													<tr>
														<th>S</th>
														<th>M</th>
														<th>T</th>
														<th>W</th>
														<th>T</th>
														<th>F</th>
														<th>S</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="pMDate"><span>30</span></td>
														<td class="pMDate"><span>31</span></td>
														<td class="date"><span>1</span></td>
														<td class="date"><span>2</span></td>
														<td class="date"><span>3</span></td>
														<td class="date"><span>4</span></td>
														<td class="date"><span>5</span></td>
													</tr>
													<tr>
														<td class="date"><span>6</span></td>
														<td class="date"><span>7</span></td>
														<td class="date"><span>8</span></td>
														<td class="date"><span>9</span></td>
														<td class="date"><span>10</span></td>
														<td class="selected date"><span>11</span></td>
														<td class="date"><span>12</span></td>
													</tr>
													<tr>
														<td class="date"><span>13</span></td>
														<td class="date"><span>14</span></td>
														<td class="date"><span>15</span></td>
														<td class="date"><span>16</span></td>
														<td class="date"><span>17</span></td>
														<td class="date"><span>18</span></td>
														<td class="date"><span>19</span></td>
													</tr>
													<tr>
														<td class="date"><span>20</span></td>
														<td class="date"><span>21</span></td>
														<td class="date"><span>22</span></td>
														<td class="date"><span>23</span></td>
														<td class="date"><span>24</span></td>
														<td class="date"><span>25</span></td>
														<td class="date"><span>26</span></td>
													</tr>
													<tr>
														<td class="date"><span>27</span></td>
														<td class="date"><span>28</span></td>
														<td class="date"><span>29</span></td>
														<td class="date"><span>30</span></td>
														<td class="nMDate"><span>1</span></td>
														<td class="nMDate"><span>2</span></td>
														<td class="nMDate"><span>3</span></td>
													</tr>
													<tr>
														<td class="nMDate"><span>4</span></td>
														<td class="nMDate"><span>5</span></td>
														<td class="nMDate"><span>6</span></td>
														<td class="nMDate"><span>7</span></td>
														<td class="nMDate"><span>8</span></td>
														<td class="nMDate"><span>9</span></td>
														<td class="nMDate"><span>10</span></td>
													</tr>
													<tr class="display-none">
														<td colspan="7" id="today">Today: Thursday, February
															9, 2023</td>
													</tr>
												</tbody>
											</table>
										</div>
										<span>~</span>
										<div class="datepicker" style="display: inline-block;">
											<input type="text" class="datepicker-here" id="maxDatePick"
												data-language="en" name="e_day" value="2023-02-09">
											<table class="calendar"
												style="position: absolute; left: 0px; display: none; box-shadow: rgba(0, 0, 0, 0.14) 0px 4px 6px 1px; width: 230px;">
												<thead>
													<tr>
														<th id="prev">‹</th>
														<th colspan="5" id="currM">February 2023</th>
														<th id="next">›</th>
													</tr>
													<tr>
														<th>S</th>
														<th>M</th>
														<th>T</th>
														<th>W</th>
														<th>T</th>
														<th>F</th>
														<th>S</th>
													</tr>
												</thead>
												<tbody>
													<tr>
														<td class="pMDate"><span>29</span></td>
														<td class="pMDate"><span>30</span></td>
														<td class="pMDate"><span>31</span></td>
														<td class="date"><span>1</span></td>
														<td class="date"><span>2</span></td>
														<td class="date"><span>3</span></td>
														<td class="date"><span>4</span></td>
													</tr>
													<tr>
														<td class="date"><span>5</span></td>
														<td class="date"><span>6</span></td>
														<td class="date"><span>7</span></td>
														<td class="date"><span>8</span></td>
														<td id="currDay" class="selected date"><span>9</span></td>
														<td class="date"><span>10</span></td>
														<td class="date"><span>11</span></td>
													</tr>
													<tr>
														<td class="date"><span>12</span></td>
														<td class="date"><span>13</span></td>
														<td class="date"><span>14</span></td>
														<td class="date"><span>15</span></td>
														<td class="date"><span>16</span></td>
														<td class="date"><span>17</span></td>
														<td class="date"><span>18</span></td>
													</tr>
													<tr>
														<td class="date"><span>19</span></td>
														<td class="date"><span>20</span></td>
														<td class="date"><span>21</span></td>
														<td class="date"><span>22</span></td>
														<td class="date"><span>23</span></td>
														<td class="date"><span>24</span></td>
														<td class="date"><span>25</span></td>
													</tr>
													<tr>
														<td class="date"><span>26</span></td>
														<td class="date"><span>27</span></td>
														<td class="date"><span>28</span></td>
														<td class="nMDate"><span>1</span></td>
														<td class="nMDate"><span>2</span></td>
														<td class="nMDate"><span>3</span></td>
														<td class="nMDate"><span>4</span></td>
													</tr>
													<tr>
														<td class="nMDate"><span>5</span></td>
														<td class="nMDate"><span>6</span></td>
														<td class="nMDate"><span>7</span></td>
														<td class="nMDate"><span>8</span></td>
														<td class="nMDate"><span>9</span></td>
														<td class="nMDate"><span>10</span></td>
														<td class="nMDate"><span>11</span></td>
													</tr>
													<tr class="display-none">
														<td colspan="7" id="today">Today: Thursday, February
															9, 2023</td>
													</tr>
												</tbody>
											</table>
										</div>
									</div>
									<div class="srchBtn">
										<a href="javascript:searchForm.submit();">조회</a>
									</div>
								</div>
							</div>
						</form>
						<div class="lesson-title">
							<h2>주문조회</h2>
						</div>

						<table class="list-table order-table payment-table mb-50">
							<colgroup>
								<col width="60%">
								<col width="20%">
								<col width="20%">
							</colgroup>
							<!-- 영상/제품 -->
							<thead>
								<c:forEach var="order" items="${orderlist}">
									<tr>
										<th colspan="3">
											<div class="order-date">
												2023-02-09 <span>[주문번호 : <a
													href="/bodeum/orderDetail">${order.ordernum}]</a>
												</span>
											</div>
								
								<div class="order-btn">
									<span class="js-open-modal show">문의하기</span> <a
										href="javascript:orderCancel('aWR4PTE2Njk5NSZzdGFydFBhZ2U9Jmxpc3RObz0mdGFibGU9aWRfdHJhZGUmY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||')"
										class="modal-layerPopup">주문취소</a> <a
										href="orderDetail.php?trade_gubun=1&amp;idx=446398&amp;enc_data=aWR4PTE2Njk5NSZzdGFydFBhZ2U9Jmxpc3RObz0mdGFibGU9aWRfdHJhZGUmY29kZT0mc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">상세보기</a>
									<!-- 교환배송조회 -->
									<!-- 교환배송조회 -->
								</div>
								</th>
								</tr>
							</thead>

							<tbody>
								<tr>
									<c:forEach var="order2" items="${orderlist}">
										<c:if test="${order.ordernum eq order2.ordernum}">
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
															${order2.ordernum}</div>
														<p class="title-txt">
															<a href="/html/shop/prd_detail.php?idx=1046">${order.ordered}</a>
														</p>
														<div class="option">
															<p>선택 : 보듬 배변봉투 8롤(120매)</p>
														</div>
														<div class="quantity">${order2.orderednum}개</div>
													</div>
												</div>
											</td>
									</c:forEach>
									<td class="col-price"><span class="label">상품금액</span> <span
										class="price"><strong>${order2.orderprice}</strong>원</span></td>
									<td class="col-orderState"><span class="label">상태</span> <span><span
											class="blue"><span class="blue">입금대기중</span> </span> <br>(2023-02-10
											23:59:59 이내 입금)</span></td>
								</tr>

							</tbody>
							</c:if>
							</c:forEach>
						</table>

						<!-- paging -->
						<div class="paging">
							<ol>
								<li class="active"><a href="#">1</a></li>
								<li class="etc">…</li>
								<li><a
									href="?PageNumber=1&amp;search_item=&amp;search_order=&amp;search_recruit=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">1</a></li>
							</ol>
							<p>
								<a href="#prev" class="arrow_l">Prev</a>
							</p>
							<p class="last">
								<a href="#next" class="arrow_r">Next</a>
							</p>
						</div>
						<!-- paging -->

					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--결과보기 팝업-->
<div id="pop1" class="simplePopup popup1" style="display: none;">
	<div id="Inq-popup" class="modal-box">
		<div class="modal-body">

			<p class="txt">
				주문취소/ 반품/ 환불요청은 1:1문의에 취소하기를 <br> 원하시는 내용을 남겨주시면 취소가능 여부를 확인후 <br>
				관리자가 처리 또는 연락드리고 있습니다.
			</p>
			<div class="btn">
				<a href="myInqLst.php?mode=w"
					class="modal-layerPopup roundBtn blueBtn">1:1문의하기</a>
			</div>
		</div>

	</div>
</div>

</div>
<script type="text/javascript">
		//마이페이지 - 주문내역팝업
		$(document).ready(function() {
			$('.show').click(function() {
				$('#pop1').simplePopup();
			});
		});
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
					href="/html/common_ui/customer/customer.php">고객센터</a></li>
			</ul>
		</div>
		<div class="ft_bottom">
			<div class="inner">
				<div class="address">
					<address>
						(주)보듬컴퍼니<span>대표: 강형욱</span> <span>사업자등록번호: 114-87-19376</span> <span>통신판매업허가번호:
							2020-진접오남-0309</span><br> 경기도 남양주시 오남읍 진건오남로667번길 64-33 <span>전화:
							1800-6358</span><br>
					</address>
					<p class="copy">COPYRIGHT(C) 2017 (주)보듬컴퍼니 All right reserved.</p>
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
<iframe allow="join-ad-interest-group" data-tagging-id="AW-830632214"
	data-load-time="1675925154901" height="0" width="0"
	style="display: none; visibility: hidden;"
	src="https://td.doubleclick.net/td/rul/830632214?random=1675925154887&amp;cv=11&amp;fst=1675925154887&amp;fmt=3&amp;bg=ffffff&amp;guid=ON&amp;async=1&amp;gtm=45be3280&amp;u_w=1536&amp;u_h=864&amp;hn=www.googleadservices.com&amp;frm=0&amp;url=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Fmypage%2ForderList.php&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Fmypage%2ForderDetail.php%3Ftrade_gubun%3D1%26idx%3D446398%26enc_data%3D&amp;tiba=Bodeum&amp;auid=2059486910.1674639085&amp;fledge=1&amp;uaa=x86&amp;uab=64&amp;uafvl=Chromium%3B110.0.5481.77%7CNot%2520A(Brand%3B24.0.0.0%7CGoogle%2520Chrome%3B110.0.5481.77&amp;uamb=0&amp;uap=Windows&amp;uapv=15.0.0&amp;uaw=0&amp;data=event%3Dgtag.config"></iframe>
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
	<script id="wp_tag_script_1675925154927" charset="UTF-8"
		src="https://astg.widerplanet.com/delivery/wpc.php?v=1&amp;ver=4.0&amp;r=1&amp;md=bs&amp;ga=1ht1tnd-15n4u7h-3-1&amp;wp_uid=2-ce5aebea35bf2d597d540bf3826e06b8-s1673928035.793000%7Cwindows_10%7Cchrome-1v1ehwe&amp;ty=Home&amp;ti=41304&amp;device=web&amp;charset=UTF-8&amp;tc=1675925154927&amp;ref=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Fmypage%2ForderDetail.php%3Ftrade_gubun%3D1%26idx%3D446398%26enc_data%3D&amp;loc=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Fmypage%2ForderList.php"></script>
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