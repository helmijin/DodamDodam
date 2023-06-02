<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>

<head>
<%@include file="../includes/header.jsp"%>

<script language="javascript">
	// 롤오버 제품확대보기
	function viewBigImg(Val) {
		document.bigimg.src = Val;
	}

	/* // 가격변동옵션
	function selectOption(n, m) {
		var form = document.goods_form;
		var index1 = $("#optionName1 option").index(
				$("#optionName1 option:selected"));
		var index2 = $("#optionName2 option").index(
				$("#optionName2 option:selected"));
		var index3 = $("#optionName3 option").index(
				$("#optionName3 option:selected"));

		//var buy_goods_cnt = form.buy_goods_cnt.value;

		value = n.split("//");

		if (m == 1) {
			form.hidden_option_price1.value = value[1];
		} else if (m == 2) {
			form.hidden_option_price2.value = value[1];
		} else if (m == 3) {
			form.hidden_option_price3.value = value[1];
		} else if (m == 4) {
			form.hidden_option_price4.value = value[1];
		} else if (m == 5) {
			form.hidden_option_price5.value = value[1];
		} else if (m == 6) {
			form.hidden_option_price6.value = value[1];
		}

		base_price = form.hidden_shop_price.value;

		op1 = form.hidden_option_price1.value;
		op2 = form.hidden_option_price2.value;
		op3 = form.hidden_option_price3.value;
		//op4 = form.hidden_op4_price.value;
		//op5 = form.hidden_op5_price.value;
		//op6 = form.hidden_op6_price.value;

		shop_price = parseInt(base_price) + parseInt(op1) + parseInt(op2)
				+ parseInt(op3);
		//shop_price = parseInt(base_price) + parseInt(op1) + parseInt(op2) + parseInt(op3) + parseInt(op4) + parseInt(op5) + parseInt(op6);
		//shop_price = shop_price*buy_goods_cnt;
		shop_price = String(shop_price);

		form.hidden_tot_shop_price.value = shop_price;
		//document.getElementById ( "money" ).innerHTML = number_format(shop_price) ;

		var point;

		point = goods_form.point_js.value;
		point_format = (shop_price * point);
		point_format = point_format
		point_format_temp = Math.round(point_format)

		//moneys1.innerHTML = point_format_temp  +"&nbsp;원" ;

		//$("#optionName2").attr("disabled" true);
	}
	 */
	// 콘텐츠 조회(픽셀)
	fbq('track', 'ViewContent', {
		content_type : 'product',
		content_name : '보듬 이지 뽀글이 자켓 강아지 패딩',
		value : '59500',
		currency : 'KRW'
	});
</script>
<style type="text/css">
option.disabled {
	color: #777;
}
</style>

<style>
.home_menu {
	display: block;
}

#mini_menu {
	display: none !important;
}
</style>
</head>
<body>
	<div id="wrapper" class="shopmain">
		<div class="containerWrap">
			<div class="home_menu">
				<ul id="menu_inner">
					<li style="width: 15px;"><a href="/bodeum/shop/"><img
							src="../../../resources/Bodeum_files/icon_menu_home.svg" alt="" /></a></li>
					<li>&nbsp;&nbsp;&gt;&nbsp;&nbsp; <a href="list.php?part_idx=3">패션</a>
					</li>
					<li>&nbsp;&nbsp;&gt;&nbsp;&nbsp; <a href="list.php?part_idx=">아우터</a>
					</li>
				</ul>
			</div>
			<div class="content">
				<div class="prev_btn">
					<a href="javascript:history.go(-1);"><img
						src="../../../resources/Bodeum_files/icon_btn_prev.png"
						alt="이전으로 아이콘" />&nbsp;&nbsp;&nbsp;이전으로</a>
				</div>
				<div class="inner-contents">
					<div class="section prdDetail">
						<div class="contents" id="fixed-parent">
							<div id="prdDetail2">
								<div class="prdDetailExp-1">
									<div class="prd-detailImg gallery">
										<div id="photo-viewer" class="big-thum">
											<div class="ratio2 thumbnail-wrapper">
												<div class="thumbnail">
													<div class="centered">
														<img
															src="../../../resources/Bodeum_files/1635147950_IMAGES1.jpg"
															name="bigimg" id="bigimg">
													</div>
												</div>
											</div>
										</div>
										<div class="sm-thum-list">
											<ul>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/1635147950_IMAGES1.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/1635147950_IMAGES1.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/ADD_GOODS1_1635147950.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/ADD_GOODS1_1635147950.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/ADD_GOODS2_1635147950.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/ADD_GOODS2_1635147950.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/ADD_GOODS3_1635147950.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/ADD_GOODS3_1635147950.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/ADD_GOODS4_1635147950.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/ADD_GOODS4_1635147950.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/ADD_GOODS5_1635147950.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/ADD_GOODS5_1635147950.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/ADD_GOODS6_1635147950.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/ADD_GOODS6_1635147950.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/ADD_GOODS7_1635147950.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/ADD_GOODS7_1635147950.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/ADD_GOODS8_1635147950.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/ADD_GOODS8_1635147950.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
												<li>
													<div class="ratio2 thumbnail-wrapper">
														<div class="thumbnail">
															<div class="centered">
																<a href="javascript:;" class="thumb"
																	onMouseOver="viewBigImg('../../../resources/Bodeum_files/ADD_GOODS9_1635147950.jpg');">
																	<span><img
																		src="../../../resources/Bodeum_files/ADD_GOODS9_1635147950.jpg"></span>
																</a>
															</div>
														</div>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div id="prdInfoWrap">
								<form method="post" name="goods_form" id="goods_form">
									<input type="hidden" name="gubun" id="gubun" value="goods" />

									<!-- 장바구니 구분 -->
									<input type="hidden" name="session_cart" id="session_cart"
										value="93ae22bbe056f2e1f5b6bdf23d443cd2"> <input
										type="hidden" name="part_idx" id="part_idx" value="29">
									<input type="hidden" name="goods_idx" id="goods_idx"
										value="${item.item}"> <input type="hidden"
										name="goods_code" value="${item.itemnum}"> <input
										type="hidden" name="goods_name" value="${item.item}">
									<input type="hidden" name="hidden_shop_price"
										value="${item.itemdisco} "> <input type="hidden"
										name="hidden_tot_shop_price" value="${item.itemdisco} ">
									<input type="hidden" name="hidden_option_price1"
										value="${item.itemdisco}"> <input type="hidden"
										name="hidden_option_price2" value="${item.itemdisco}">
									<input type="hidden" name="hidden_option_price3"
										value="${item.itemdisco}"> <input type="hidden"
										name="point_js" value="0.01"> <input type="hidden"
										name="goods_point" id="goods_point" value="1"> <input
										type="hidden" name="option_check" value="2"> <input
										type="hidden" name="opt1" value="${item.opt1 }"> <input
										type="hidden" name="opt2" value="${item.opt2 }"> <input
										type="hidden" name="opt3" value="${item.opt3 }"> <input
										type="hidden" name="opt4" value="${item.opt4 }"> <input
										type="hidden" name="opt5" value="${item.opt5 }"> <input
										type="hidden" name="opt6" value="${item.opt6 }"> <input
										type="hidden" name="opt7" value="${item.opt7 }">


									<div class="prdInfoWrap prdInfoWrapScroll">
										<div class="prdInfo">
											<div class="icon">
												<span class="bestItem">BEST</span> <span class="saleItem">SALE</span>
											</div>
											<p class="prd-title">${item.item}</p>
											<dl>
												<dt>판매가</dt>
												<dd class="price">
													<strong class="price"> ${item.itemprice}</strong><span>원</span>
												</dd>
											</dl>
											<dl>
												<dt>할인가</dt>
												<dd class="point">
													<strong> ${item.itemdisco}</strong><span>원</span>
												</dd>
											</dl>
											<dl>
												<dt>적립금</dt>
												<dd class="point" id="point">
													<strong>595</strong><span>원</span>
												</dd>
											</dl>
											<dl class="delivery">
												<dt>배송비</dt>
												<dd class="point">
													<strong>3,000</strong><span>원</span>
													<p class='txt'>(50,000원 이상 구매시 무료)</p>
												</dd>
											</dl>
											<div class="option">
												<input type="hidden" name="cart_option" value="1" /> <input
													type="hidden" name="buy_goods_cnt" id="buy_goods_cnt"
													value="">
												<h4>옵션선택</h4>
												<div class="srchFilter mb-40">


													<!-- 옵션2개일 경우 -->

													<input type="hidden" name="option_title1" value="컬러">
													<select name="optionName1" id="optionName1"
														onchange="optionSelect('${item.itemnum}','1','2',this.value)">
														<option value="0//0" class="disabled2">컬러</option>
														<option value="10000">${item.opt1}</option>
														<option value="2000">${item.opt2}</option>
														<option value="30000">${item.opt3}</option>
														<option value="40000">${item.opt4}</option>
													</select> <input type="hidden" name="option_title2" value="사이즈">
													<div id="option2">
														<select name="optionName2" id="optionName2"
															onchange="selectOption(this.value,'2')">
															<option value="0//0">사이즈</option>
															<option value="50000">${item.opt5}</option>
															<option value="60000">${item.opt6}</option>
															<option value="70000">${item.opt7}</option>
														</select>
													</div>
												</div>

												<!--옵션선택시 나오는 부분-->
												<div id="cart_list">
													<!--//-->
													<div class="prd-total">
														<dl>
															<dt>총상품금액</dt>
															<dd>
																<strong class="sale_price" id="money">
																	${item.itemprice + optionName1 + optionName2} </strong><span>원</span>
															</dd>
														</dl>
													</div>
													<!-- //-->
												</div>
											</div>
										</div>
										<div class="btn">
											<!--171110_추가-->
											<div class="cartPopover blind">
												<div class="cartPopoverWrap">
													<div class="txt">
														해당상품이 장바구니에 담겼습니다.<br>장바구니로 이동하시겠습니까?
													</div>
													<div class="button">
														<a href="#" class="lineBtn"
															onClick="$('.cartPopover').addClass('blind')">쇼핑 계속하기</a>
														<a href="/html/common_ui/order/cart.php" class="blueBtn">장바구니
															가기</a>
													</div>
												</div>
											</div>
											<!--//171110_추가-->
											<a href="javascript:goodsBuySendit(1);" id="cartBtn"
												class="roundBtn grayBtn">장바구니</a> <a
												href="javascript:goodsBuySendit(2);"
												class="roundBtn blueBtn">결제하기</a>
											<!-- <a href="../common_ui/order/cart.php" class="roundBtn grayBtn">장바구니</a>
                                            <a href="../common_ui/order/payment.php" class="roundBtn blueBtn">결제하기</a> -->
										</div>
									</div>
								</form>
							</div>
							<div id="prdDetail2">
								<div class="prdDetailExp-1">


									<div class="detail-content">
										<!-- 상품 상세정보 -->
										<div style="text-align: center;" align="center">
											<span style="font-size: 12px;"><br></span>
										</div>
										<div align="center" style="text-align: center;">
											<div style="text-align: center; line-height: 0;"
												align="center">
												<c:forEach items="${item.itempic}" var="itempic" begin="1"
													end="15" varStatus="status">
													<img
														src="../../../resources/Bodeum_files/${itempic+_+status.count}.jpg"
														title="1635148361_gif.gif">
												</c:forEach>
											</div>
											<div>
												<div align="center" style="text-align: center;">
													<div style="text-align: center; line-height: 0;"
														align="center">
														<img src="../../../resources/Bodeum_files/1609901863.jpg"
															title="1609901863.jpg">
													</div>
													<div style="text-align: center; line-height: 0;"
														align="center">
														<br style="clear: both;"> <br>
													</div>
												</div>

												<div align="center" style="text-align: center;">
													<img src="../../../resources/Bodeum_files/1644990446.jpg"
														title="1644990446.jpg"><br style="clear: both;">
													<img src="../../../resources/Bodeum_files/1635148317.jpg"
														title="1635148317.jpg"><img
														src="../../../resources/Bodeum_files/1635148334_color-gif.gif"
														title="1635148334_color-gif.gif"><img
														src="../../../resources/Bodeum_files/1635153872.jpg"
														title="1635153872.jpg">&nbsp;
												</div>
												<div align="center" style="text-align: center;">
													<div style="text-align: center; line-height: 0;"
														align="center">
														<img
															src="../../../resources/Bodeum_files/1635148361_gif.gif"
															title="1635148361_gif.gif">
													</div>

													<div style="text-align: center; line-height: 0;"
														align="center">
														<img src="../../../resources/Bodeum_files/1635148373.jpg"
															title="1635148373.jpg"><img
															src="../../../resources/Bodeum_files/1635148583_Sequence%2B02_2.gif"
															title="1635148583_Sequence%2B02_2.gif">
													</div>
													<div style="text-align: center; line-height: 0;"
														align="center">
														<img src="../../../resources/Bodeum_files/1635153901.jpg"
															title="1635153901.jpg"><br style="clear: both;">
														<br>
													</div>
													<div style="text-align: center; line-height: 0;"
														align="center">
														<img
															src="../../../resources/Bodeum_files/1635148772_sampling.gif"
															title="1635148772_sampling.gif">
													</div>
													<div style="text-align: center; line-height: 0;"
														align="center">
														<span style="font-size: 12px;"><br></span>
													</div>
													<div style="text-align: center; line-height: 0;"
														align="center">
														<img src="../../../resources/Bodeum_files/1635148440.jpg"
															title="1635148440.jpg">
													</div>
													<div style="text-align: center; line-height: 0;"
														align="center">
														<img src="../../../resources/Bodeum_files/1635148446.jpg"
															title="1635148446.jpg">
													</div>
													<div style="text-align: center; line-height: 0;"
														align="center">
														<img src="../../../resources/Bodeum_files/1635148454.jpg"
															title="1635148454.jpg"><img
															src="../../../resources/Bodeum_files/1667805063_2.jpg"
															title="1667805063_2.jpg"><br style="clear: both;">
														<br style="clear: both;"> <img
															src="../../../resources/Bodeum_files/1663635340.jpg"
															title="1663635340.jpg">
													</div>
													<div style="text-align: center; line-height: 0;"
														align="center">
														<br>
													</div>
												</div>
												<div align="center" style="text-align: center;">
													<br>
												</div>
												<div align="center" style="text-align: center;">
													<br>
												</div>
												<div align="center" style="text-align: center;">
													<img src="../../../resources/Bodeum_files/1604020988.jpg"
														title="1604020988.jpg">
												</div>
												<div align="center" style="text-align: center;">
													<br>
												</div>
												<div align="center" style="text-align: center;">
													<div style="text-align: center; line-height: 0;"
														align="center">
														<span style="font-size: 12px;"><br></span>
													</div>
													<div style="text-align: center; line-height: 0;"
														align="center">
														<span style="font-size: 12px;"><br></span>
													</div>
													<div style="text-align: center;">
														<span style="font-size: 12px;"><br></span>
													</div>
												</div>
											</div>
											<!-- 상품 상세정보 -->
										</div>
										<div class="product-info detail-prd-content scrollStop">
											<h4>상품정보고시</h4>
											<table class="list-table point-table">
												<tbody>
													<tr>
														<th>품명</th>
														<td>${item.item}</td>
													</tr>
													<tr>
														<th>제조자</th>
														<td>보듬</td>
													</tr>
													<tr>
														<th>제조국</th>
														<td>국산</td>
													</tr>
													<tr>
														<th>소비자 상담 관련 전화번호</th>
														<td>1800-6358</td>
													</tr>
												</tbody>
											</table>
										</div>

										<div class="product-service detail-prd-content"
											style="border-top: 0px !important;">
											<h4 style="margin-top: 40px;">배송/반품/교환 안내</h4>
											<div class="serviceBox">
												<p style="line-height: 1.8;">
													<b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95); font-family: 나눔고딕, NanumGothic, sans-serif;">대표번호</span></b>
												</p>
												<div style="text-align: left; line-height: 1.8;"
													align="left">
													<b style="font-size: 14pt;"><span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;">1800-6358</span></b>
												</div>
												<p style="line-height: 1.8;">
													<b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt;"><span
															style="font-size: 14pt;">﻿</span></span></b>
												</p>
												<p style="line-height: 1.8;">
													<font face="나눔고딕, NanumGothic, sans-serif"><span
														style="font-size: 18.6667px;"><b><span
																style="color: rgb(43, 40, 95);">필독사항</span></b></span> </font><span
														style="color: rgb(43, 40, 95); font-family: 나눔고딕, NanumGothic, sans-serif;">&nbsp;</span>
												</p>
												<p style="line-height: 1.5;">
													<span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">&nbsp;</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">1.
														고객 상담시간은 토, 일, 공휴일을 제외한 9시~18시까지이며,</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;
														&nbsp; 12~13시까지는 점심 시간이므로 상담이 어려울 수 있습니다.</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;"><span
														style="font-size: 10pt;">2. 문의 전화가 많은 경우 통화가 지연될 수
															있으니 문의 게시판을 이용해주시기 바랍니다.</span></span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">3.
														택 제거 후에는 교환 및 환불이 불가합니다.</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(0, 0, 0); font-family: 나눔고딕, NanumGothic, sans-serif;">4.
														모든 브랜드배송 상품은 각 브랜드(업체)의 교환 및 환불 정책에 따르며, 상세페이지에 별도로 기재되어
														있습니다.</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(0, 0, 0); font-family: 나눔고딕, NanumGothic, sans-serif;">5.
														최초 구매하셨던 구매처를 통해서만 교환 및 반품이 가능합니다.</span>
												</p>
												<p style="line-height: 1.8;">
													<b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt;"><span
															style="font-size: 10pt;">﻿</span></span></b>
												</p>
												<p style="line-height: 1.8;">
													<b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95);">배송안내</span></b>
												</p>
												<p style="line-height: 1.5;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">1.
														배송업체 : 한진택배</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">2.
														배송지역 : 전국지역</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">3.
														기본 <span
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt; color: rgb(37, 37, 37);">﻿</span>배송비
														: 3,000원
													</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">4.
														월~금 (공휴일 제외) 오전 10시 이전에 주문/결제 완료 시 당일 출고</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">&nbsp;
														&nbsp; 단, 재고가 없거나 주문정보의 누락, 배송지연이 별도 공지된 제품은 제외</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(255, 0, 0); font-family: 나눔고딕, NanumGothic, sans-serif;">5.
														구매자의 부재, 주문정보 오류 등으로 인한 반송시 왕복 택배비 (6,000원)는 고객 부담입니다.</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">6.
														발송 후 송장번호를 문자로 보내드리며 한진택배 웹사이트에서 조회할 수 있습니다.</span><span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">&nbsp;</span>
												</p>
												<p style="line-height: 1.8;">
													<span style="font-size: 10pt;">﻿</span>
												</p>
												<p style="line-height: 1.8;">
													<b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95);">교</span></b><b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95);">환/</span></b><b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95);">반품&nbsp;</span></b><b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95);">사유에
															따른 요청 가능 기간</span></b>
												</p>
												<p style="line-height: 1.5;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">반드시
														먼저 판매자와 연락하시어 반품사유, 택배사, 배송비, 주소 등을&nbsp;</span><span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">협의하신
														후&nbsp;</span><span
														style="font-size: 10pt; color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif;">반품
														상품을 반송해 주시기 바랍니다.&nbsp;</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 9pt; color: rgb(37, 37, 37);"><span
														style="font-size: 10pt;">&nbsp;</span></span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 9pt;"><span
														style="font-size: 10pt;">1. 구매자의 단순 변심은 상품 수령 후 7일
															이내</span></span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 9pt;"><span
														style="font-size: 10pt;">&nbsp; &nbsp; (구매자 반품배송비
															부담)&nbsp;</span></span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">2.
														표시/광고와 상이, 상품 하자의 경우 상품 수령 후 3개월 이내</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;
														&nbsp;해당 기간</span><span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;경과시
														반품/교환 불가 (판매자 배송비 부담)</span>
												</p>
												<p style="line-height: 1.8;">
													<b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95); font-family: 나눔고딕, NanumGothic, sans-serif;"><br></span></b>
												</p>
												<p style="line-height: 1.8;">
													<b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95);">교</span></b><b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95);">환/</span></b><b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95);">반품&nbsp;</span></b><b
														style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 12pt;"><span
														style="font-size: 14pt; color: rgb(43, 40, 95); font-family: 나눔고딕, NanumGothic, sans-serif;">불가능한
															사유</span></b>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">아래와
														같은 경우 교환/반품이 불가능합니다.&nbsp;&nbsp;</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">1.
														반품 요청 기간이 지난경우</span><br> <span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">2.
														구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;
														&nbsp;</span><span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">(단,
														상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외)</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">3.
														상품을 개봉하였으나 포장이 훼손되어 상품가치가 현저히 상실된 경우</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;
														&nbsp;</span><span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">(예:
														상품, 화장품, 향수류, 음반 등)</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">4.
														구매자의 사용 또는 일부 소비에 의해 상품의 가치가 현저히 감소한 경우</span>
												</p>
												<p style="line-height: 1.8;">
													<span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">5.&nbsp;</span><span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">시간
														경과로 재판매가 곤란할 정도로 상품의 가치가 현저히 감소한 경우</span><span
														style="color: rgb(37, 37, 37); font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 10pt;">&nbsp;</span>
												</p>
												<!-- <h5>필독 사항</h5>
                                                <div>
                                                    1. 고객상담 시간은 토, 일, 공휴일을 제외한 10시~19시까지이며, 13~14시까지는 점심시간이므로 상담이 어려울 수 있습니다.<br>
                                                    2. 문의전화가 많은 경우 통화가 지연될 수 있으니 문의 게시판을 이용해주시기 바랍니다.<br>
                                                    3. 택 제거 후에는 교환 및 환불이 불가합니다.
                                                </div>
                                                <h5>배송 안내</h5>
                                                <div>
                                                    1. 배송 방법 : 로젠택배<br>
                                                    2. 배송 지역 : 전국 지역<br>
                                                    3. 기본 배송비 : 3,000원<br>
                                                    4. 평균 배송일 : 월~금 (공휴일 제외) 오전 10시 이전에 주문/결제 완료된 제품에 한하여 당일 출고됩니다. <br>
                                                    단, 재고가 없거나 주문정보의 누락, 배송 지연이 별도 공지된 제품은 당일 출고가 어려울 수 있습니다.<br>
                                                    5. 고객님의 부재, 연락처 오류, 주소 오류 등으로 인한 반송시 왕복 택배비 (6,000원)은 고객 부담입니다.<br>
                                                    6. 발송 후 송장번호를 문자로 보내드리니 로젠택배 웹사이트에서 조회할 수 있습니다.
                                                
                                                </div>
                                                <h5>반품/교환 사유에 따른 요청 가능 기간</h5>
                                                <div>
                                                    반품 시 먼저 판매자와 연락하셔서 반품 사용, 택배사, 배송비, 반품지 주소 등을 협의하신 후 반품 상품을 발송해 주시기 바랍니다.<br>
                                                    1. 구매자의 단순 변심은 상품 수령 후 7일 이내 (구매자 반품 배송비 부담) <br>
                                                    2. 표시/광고와 상이, 상품 하자의 경우 상품 수령 후 3개월 이내 혹은 표시/광고와 다른 사실을 안 날로부터 30일 이내,
                                                    둘 중 하나 경과 시 반품/교환 불가 (판매자가 반품 배송비 부담) 
                                                </div>
                                                <h5>반품/교환 불가능 사유</h5>
                                                <div>
                                                    아래와 같은 경우 반품/교환이 불가능합니다.<br>
                                                    1. 반품 요청 기간이 지난 경우.<br>
                                                    2. 구매자의 책임 있는 사유로 상품 등이 멸실 또는 훼손된 경우 <br>
                                                    (단, 상품의 내용을 확인하기 위하여 포장 등을 훼손한 경우는 제외) <br>
                                                    3. 포장을 개봉하였으나 포장이 훼손되어 상품가치가 현저히 상실된 경우 <br>
                                                    (예: 식품, 화장품, 향수류, 음반 등) <br>
                                                    4. 구매자의 사용 또는 일부 소비에 의하여 상품의 가치가 현저히 감소한 경우 <br>
                                                    (라벨이 떨어진 의류 또는 태그가 떨어진 명품관 상품인 경우) <br>
                                                    5. 시간의 경과에 의하여 재판매가 곤란할 정도로 상품 등의 가치가 현저히 감소한 경우 
                                                </div> -->
											</div>
										</div>

										<div class="product-review detail-prd-content" id="review">
											<h4 style="margin-top: 40px;">
												상품후기<span class="count">( ${rboard.rcnt} )</span>
												<!--
                                         <a href="javascript:alert('구매내역이 없는 상품은 후기를 작성하실 수 없습니다.');">후기작성</a>
                                                                                                                            -->
											</h4>

											<script type="text/javascript">
												function goPage(PageNumber) {
													$
															.ajax({
																url : './goods_review.php',
																type : 'GET',
																data : 'idx=864&PageNumber='
																		+ PageNumber,
																success : function(
																		data) {
																	$(
																			'.rvwList')
																			.html(
																					data);
																}
															});
													fnMove('review');
												}
											</script>

											<div class="reviewList" id="reviewList">
												<ul class="reviewAccodion">
													<li class="review-title">
														<div class="txt">
															<h5>${rboard.rtitle } 너무 예뻐요</h5>
															<div class="option">컬러 : 이지 뽀글이 자켓 머스터드 , 사이즈 : S</div>
															<p>
																<span>${rboard.userid }hel*****</span> <span>${rboard.rdates }2023.03.06</span>
															</p>
														</div>
													</li>
													<li class="review-content">
														<div class="mb-10">
															<img
																src="../../../resources/Bodeum_files/16755124351.jpg">
														</div> ${rboard.rcontent } 딱 맞고 예쁘네요!
													</li>

													<li class="review-title">
														<div class="txt">
															<h5>첫 옷이에요..</h5>
															<div class="option">컬러 : 이지 뽀글이 자켓 크림 , 사이즈 : XL</div>
															<p>
																<span>pot*****</span><span>2022.12.10</span>
															</p>
														</div>
													</li>
													<li class="review-content">
														<div class="mb-10">
															<img
																src="../../../resources/Bodeum_files/16706598191.jpeg">
														</div>
														<div class="mb-10">
															<img
																src="../../../resources/Bodeum_files/16706598192.jpeg">
														</div>
														<div class="mb-10">
															<img
																src="../../../resources/Bodeum_files/16706598193.jpeg">
														</div> 애기 입양하고 처음 맞는 겨울이에요 ㅎㅎ 애기도 겨울에 뛰어노는 것도 처음일거구, 옷을 입어보는 것도
														처음일거 같아서 옷 고르는데 고민이 많았어요! 일단 옷 입을 때 간편했으면 했구, 디자인적으로 제
														취향이고 애기한테 잘 어울려야 했습니다 ㅋㅋㅋㅋ 그러다 몇날며칠을 고민하고 구매했는데 만족도
														최상입니다!!! 옷 위로 하네스를 채워야하는 줄 알았는데 반대여서 너무 신기했어요 ㅋㅋㅋ 진짜 사람들
														똑똑해!!! 애기도 입고다닐때 전혀 거슬려하지 않네요! 보듬숍 짱짱 ????????
													</li>
													<li class="review-title">
														<div class="txt">
															<h5>보듬 이지 뽀글이 자켓 강아지 패딩후기</h5>
															<div class="option">컬러 : 이지 뽀글이 자켓 카키 , 사이즈 : S</div>
															<p>
																<span>pws*****</span><span>2022.12.06</span>
															</p>
														</div>
													</li>
													<li class="review-content">
														<p>예전 보듬패딩보다 허리부분이 얇아서 소변 볼때도 옷에 묻히지 않고 강아지가 더 편해 하는것
															같아요</p>
														<p>몽구는 옷 입히기가 힘들어 보듬 패딩만 3번째 입고 있어요</p>
														<p>&nbsp;</p>
													</li>
												</ul>
												<!-- 	<div class="paging">
            <ol>
            <li class='active'><a href='#'>1</a></li><li><a href='?code=&category=보듬숍상품&PageNumber=2&goods_idx=&search_order='>2</a></li><li><a href='?code=&category=보듬숍상품&PageNumber=3&goods_idx=&search_order='>3</a></li><li><a href='?code=&category=보듬숍상품&PageNumber=4&goods_idx=&search_order='>4</a></li><li><a href='?code=&category=보듬숍상품&PageNumber=5&goods_idx=&search_order='>5</a></li><li><a href='?code=&category=보듬숍상품&PageNumber=6&goods_idx=&search_order='>6</a></li><li><a href='?code=&category=보듬숍상품&PageNumber=7&goods_idx=&search_order='>7</a></li>		<li class="etc">…</li>
            <li><a href="?code=&category=보듬숍상품&PageNumber=7&goods_idx=&&search_order=">7</a></li>
            </ol>
            <p>
            <a href='#prev'class='arrow_l'>Prev</a>		</p>
            <p class="last">
            <a href='?code=&category=보듬숍상품&PageNumber=2&goods_idx=&search_order='>Next</a>		 </p>
        </div> -->
												<div class="btn">
													<a href="/bodeum/shop/list" class="whiteBtn roundBtn">더보기</a>
													<!-- 위 링크 원래 값 : "reviewList.php?idx=864" 상품에 맞게 해당 게시판으로 이동해야 -->
												</div>
											</div>

										</div>

										<div class="product-qa detail-prd-content" id="delevery">
											<h4 style="margin-top: 40px;">
												상품Q&A <span class="count"> ${board.cnt}2</span>
												<!--버튼 클라스추가-->
												<a href="#layerPopup" class="modal-layerPopup">문의하기</a>
											</h4>
											<!--버튼 클라스추가-->
											<div class="qaList">
												<ul class="qaAccodion">
													<li class="qa-title"><input type="hidden"
														name="boardnum" value="${ board.boardnum} ">
														<div class="qa-txt">
															<h5 class="txt ">${board.title} 상품 문의합니다</h5>
															<p>
																<span> ${board.userid} hel*****</span> <span>
																	${board.dates} 2023.03.06</span>
															</p>
															<div class="state">
																<span class="complete">${board.answerchk} 답변완료</span>
															</div>
														</div></li>
													<li class="qa-content">
														<div class="qa-q">
															<div class="qa-icon">질문</div>
															<div class="txt">${board.content} 푸들은 어떤 사이즈를 주문해야 할까요?</div>
														</div>
														<div class="qa-a">
															<div class="qa-icon">답변</div>
															<div class="txt">${board.answer}</div>
														</div>
													</li>
													<li class="qa-title2"
														onClick="alert('비밀글입니다. 작성자만 확인하실 수 있습니다.');">
														<div class="qa-txt">
															<h5 class="txt secret">상품문의 ${board.title}</h5>
															<p>
																<span> ${board.userid} pot*****</span><span>
																	${board.dates}2023.02.17</span>
															</p>
															<div class="state">
																<span class="complete">${board.answerchk}답변완료</span>
															</div>
														</div>
													</li>
													<li class="qa-content">
														<div class="qa-q">
															<div class="qa-icon">${board.title}</div>
															<div class="txt">${board.content}</div>
														</div>
														<div class="qa-a">
															<div class="qa-icon">답변</div>
															<div class="txt">${board.answer}</div>
														</div>
													</li>
													<!-- <li class="qa-title">
                                                        <div class="qa-txt">
                                                            <h5 class="txt">배송문의</h5>
                                                            <p><span>abc*****</span><span>2017-01-01</span></p>
                                                            <div class="state">
                                                                <span class="complete">답변완료</span>
                                                            </div>
                                                        </div>
                                                    </li>
                                                    <li class="qa-content">
                                                        <div class="qa-q">
                                                            <div class="qa-icon">질문</div>
                                                            <div class="txt">
                                                                상품 입고 문의드려요<br>언제쯤 입고될까요?
                                                            </div>
                                                        </div>
                                                        <div class="qa-a">
                                                            <div class="qa-icon">답변</div>
                                                            <div class="txt">
                                                                안녕하세요^^ 보듬입니다.<br>
                                                                품절 상품은 7월 초 입고를 예상하고 있으나 정확한 시기는 미정인 점 양해해주시기 바랍니다.<br>
                                                                감사합니다.
                                                            </div>
                                                        </div>
                                                    </li> -->
												</ul>
											</div>
											<div class="paging">
												<ol>
													<li class='active'><a href='#'>1</a></li>
													<li><a href='?PageNumber2=2&idx=864&scroll=review'>2</a></li>
													<li><a href='?PageNumber2=3&idx=864&scroll=review'>3</a></li>
													<li><a href='?PageNumber2=4&idx=864&scroll=review'>4</a></li>
													<li class="etc">…</li>
													<li><a href="?PageNumber2=4&idx=864">4</a></li>
												</ol>
												<p>
													<a href='#prev' class='arrow_l'>Prev</a>
												</p>
												<p class="last">
													<a href='?PageNumber2=2&idx=864'>Next</a>
												</p>
											</div>
										</div>
									</div>
								</div>
								<!--상품 문의하기 팝업 추가-->
								<script>
									function writeSendit() {
										var form = document.bbs_write_form;
										if (form.category.value == "") {
											alert("문의유형을 선택해주세요.");
											form.category.focus();
										} else if (form.email_check.checked
												&& form.email.value == "") {
											alert("이메일을 입력해주세요.");
											form.email.focus();
										} else if (form.subject.value == "") {
											alert("제목을 입력해주세요.");
											form.subject.focus();
										} else if (form.content.value == "") {
											alert("내용을 입력해 주십시오.");
											form.content.focus();
										} else {
											form.submit();
										}
									}
								</script>
								<div class="modal__dialog" role="dialog"
									aria-labelledby="modal__title-1" style="overflow: auto;">
									<div class="modal__header">
										<h3 class="modal__title" id="modal__title-1"></h3>
										<button class="modal__close" type="button" aria-label="Close"></button>
										<div id="layerPopup" class="qaPopup" style="display: none;">
											<h3 data-hey-title></h3>
											<div data-hey-body>
												<div class="myQaWritePopup">
													<form action="/bodeum/shop/specific" method="post"
														enctype="multipart/form-data">
														<input type="hidden" name="bbs_data" value=""> <input
															type="hidden" name="ref" value=""> <input
															type="hidden" name="re_step" value=""> <input
															type="hidden" name="re_level" value=""> <input
															type="hidden" name="name" value=""> <input
															type="hidden" name="userid" value="${board.userid }">
														<input type="hidden" name="pwd"
															value="a5419b1ffebe8ce53a3e6cd1c1fac86f"> <input
															type="hidden" name="code" value="myInq"> <input
															type="hidden" name="goods_idx" value="${item.item }">
														<input type="hidden" name="item" value="${item.item}">
														<input type="hidden" name="return_go"
															value="../../../resources/Bodeum_files/prd_detail.php">
														<table class="list-table">
															<colgroup>
																<col width="100%">
															</colgroup>
															<tbody>
																<tr>
																	<td>
																		<h4>문의유형</h4>
																		<div class="srchFilter">
																			<select id="select" class="w160" name="category">
																				<option value="">선택하세요</option>
																				<option value="배송문의">배송문의</option>
																				<option value=" 상품문의">상품문의</option>
																				<option value=" 주문/결제">주문/결제</option>
																				<option value=" 취소문의">취소문의</option>
																				<option value=" 반품/환불">반품/환불</option>
																				<option value=" 교환문의">교환문의</option>
																				<option value=" 기타문의">기타문의</option>
																				<option value=" 온라인 강의">온라인 강의</option>
																				<option value=" 오프라인 수업">오프라인 수업</option>
																			</select>
																		</div>
																	</td>
																</tr>

																<tr>
																	<td>
																		<h4>이메일</h4> <input type="text" class="w160"
																		name="email" />
																		<div class="checkArea mb-10">
																			<input type="checkbox" name="email_check" id="check1"
																				value="1"> <label for="check1" class="check">답변수신을
																				이메일로 받겠습니다.</label>
																		</div>
																	</td>
																</tr>
																<!--171031 추가-->
																<tr>
																	<td class="phoneNumber">
																		<h4>휴대폰</h4>
																		<div class="srchFilter">
																			<select id="hp1" class="w160" name="hp1">
																				<option value="010">010</option>
																				<option value="011">011</option>
																				<option value="016">016</option>
																				<option value="017">017</option>
																				<option value="018">018</option>
																				<option value="019">019</option>
																			</select> <span>-</span> <input type="text" class="phone"
																				name="hp2" id="hp2" placeholder=""> <span>-</span>
																			<input type="text" class="phone" name="hp3" id="hp3"
																				placeholder="">
																		</div>
																		<div class="checkArea mb-10">
																			<input type="checkbox" name="phone_check" id="check2"
																				value="1"> <label for="check2" class="check">답변등록시
																				문자메시지로 알림을 받겠습니다.</label>
																		</div>
																	</td>
																</tr>
																<!--//171031 추가-->
																<tr>
																	<td>
																		<h4>제목</h4> <input type="text" class="fullInput"
																		name="subject" />
																	</td>
																</tr>
																<tr>
																	<td>
																		<h4>내용</h4> <textarea name="content"
																			placeholder="※ 개인정보(주민번호, 연락처, 계좌번호, 카드번호 등)가 포함되지 않도록 유의해 주세요."></textarea>
																	</td>
																</tr>
															</tbody>
														</table>
														<!--171031 추가-->
														<div class="checkArea mb-10 left">
															<input type="checkbox" name="secret" id="check3"
																value="y"> <label for="check3" class="check">비밀글로
																문의하기</label>
														</div>
														<!--//171031 추가-->
													</form>
													<div class="btn">
														<a href="javascript:close();" class="roundBtn whiteBtn">취소</a>
														<a href="javascript:writeSendit();"
															class="roundBtn blueBtn">등록</a>
													</div>
												</div>
											</div>
										</div>
										<!--//상품 문의하기 팝업 추가-->
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
			function close() {
				window.open('', '_self').close();
			}
		</script>

	<script src="../../../resources/JSfiles/enliple_min2.js" defer="defer"
		onload="mobRfShop()"></script>
	<!-- Mobon Shop Log Tracker v3.1 end  -->


	<script type="text/javascript"
		src="../../../resources/JSfiles/jquery-latest.js.다운로드"></script>
	<script src="../../../resources/JSfiles/scroll2.js.다운로드"></script>


	<!-- WIDERPLANET  SCRIPT START 2018.8.1 -->
	<div id="wp_tg_cts" style="display: none;"></div>

	<!-- // WIDERPLANET  SCRIPT END 2018.8.1 -->


	<script>
			var $fixWrap = $('.bodeum-shop .prdInfoWrap'), $leftImg = $(
					'.bodeum-shop #prdDetail2 .prdDetailExp-1 .prd-detailImg')
					.height(), $target = '';
			$(window).on('scroll', function() {
				$target = $(window).scrollTop();
				if ($target > $leftImg) {
					$fixWrap.addClass('sticky-fixed-scroll');
				} else {
					$fixWrap.removeClass('sticky-fixed-scroll');
				}
			});
		</script>

	<%@include file="../includes/footer.jsp"%>
</body>
</html>

