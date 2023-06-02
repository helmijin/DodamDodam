<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<%@include file="../includes/header1.jsp"%>
<link rel="stylesheet" type="text/css"
	href="/resources/bodeum.co.kr/html/common/css/main.css">

<script>
	window.dataLayer = window.dataLayer || [];
	function gtag() {
		dataLayer.push(arguments);
	}
	gtag('js', new Date());

	gtag('set', 'dimension1', '112.148.244.244');
	gtag('set', 'dimension2', '2023-02-13 15:19:04');
	gtag('config', 'UA-173956953-1');

	gtag('event', 'IP_dimension', {
		'IP' : '112.148.244.244'
	}, 'Date_dimension', {
		'Date' : '2023-02-13 15:19:04'
	});
</script>
<!-- End Google Analytics-->
<script language="JavaScript">
		<!--
			// 장바구니 상품 삭제
			function cartDel(idx, cart_del) {
				if (confirm("상품을 삭제하시겠습니까?")) {
					var form = document.createElement('form');
					form.setAttribute('method', 'post');
					form.setAttribute('action', '/bodeum/cart');
					document.charset = "utf-8";

					var hiddenField = document.createElement('input');
					hiddenField.setAttribute('type', 'hidden');
					hiddenField.setAttribute('name', 'cart_del_idx');
					hiddenField.setAttribute('value', idx);
					form.appendChild(hiddenField);

					var hiddenField2 = document.createElement('input');
					hiddenField2.setAttribute('type', 'hidden');
					hiddenField2.setAttribute('name', 'mode');
					hiddenField2.setAttribute('value', cart_del);
					form.appendChild(hiddenField2);

					document.body.appendChild(form);
					form.submit();
				}
			}

			// 장바구니 수량 수정
			function changeCnt(change_cnt, idx, goods_cnt) {
				if (confirm("상품수량을 수정하시겠습니까?")) {
					var form = document.createElement('form');
					form.setAttribute('method', 'post');
					form.setAttribute('action', '/bodeum/cart');
					document.charset = "utf-8";

					var hiddenField = document.createElement('input');
					hiddenField.setAttribute('type', 'hidden');
					hiddenField.setAttribute('name', 'mode');
					hiddenField.setAttribute('value', change_cnt);
					form.appendChild(hiddenField);

					var hiddenField2 = document.createElement('input');
					hiddenField2.setAttribute('type', 'hidden');
					hiddenField2.setAttribute('name', 'cart_edit_idx');
					hiddenField2.setAttribute('value', idx);
					form.appendChild(hiddenField2);

					var hiddenField3 = document.createElement('input');
					hiddenField3.setAttribute('type', 'hidden');
					hiddenField3.setAttribute('name', 'goods_cnt');
					hiddenField3.setAttribute('value', goods_cnt);
					form.appendChild(hiddenField3);

					document.body.appendChild(form);
					form.submit();
				}
			}
		//-->
		</script>
<div id="cartwrapper">
	<div id="wrapper">
		<div class="content">
			<div class="inner-contents">
				<div class="section">
					<div class="sub-page-title">
						<strong>장바구니</strong>
					</div>
					<form method="get" action="" name="listform">
						<input type="hidden" name="mode" value="order"> <input
							type="hidden" name="trade_method" value="2"> <input
							type="hidden" name="arr_cart_list"> <input type="hidden"
							name="express_free" value="50000"> <input type="hidden"
							name="deliv_price1" value="3000">
						<div class="container cart-wrap">
							<div class="row">
								<div class="col-70">
									<div class="col-70Wrap">
										<div class="mb-50">
											<div class="sub-title">묶음배송 가능 상품</div>
											<table class="list-table order-table order-deliv-table">
												<thead>
													<tr>
														<th class="checkboxArea">
															<div class="check">
																<input type="checkbox" name="allchk2" id="allchk2"
																	class="checkall" onclick="allCheck();" checked>
																<label for="allchk2" class="check"></label>
															</div>
														</th>
														<th class="prd-info">상품 정보</th>
														<th class="col-price">상품 금액</th>
														<th class="col-cancel">삭제</th>
													</tr>
												</thead>
												<tbody>
													<c:forEach var="cart" items="${cartList}">
														<input type="hidden" name="goods_deliv_price" value="0">
														<input type="hidden" name="goods_deliv_price_check"
															value="">
														<tr class="shop-product">
															<!--쇼핑몰 상품 구매시 class-->
															<td class="checkboxArea">
																<div class="check">
																	<input type="checkbox" name="cart_list"
																		id="check${cart.itemnum}" value="${cart.itemnum}"
																		checked="" onclick="cartCalculate();"> <label
																		for="check${cart.itemnum}" class="check"></label> <input
																		type="hidden" name="cart_list_price"
																		id="check${cart.itemnum}_price" value="9900">
																	<input type="hidden" name="cart_goods_gubun"
																		value="goods">
																</div>
															</td>
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
																				href="/resources/bodeum.co.kr/html/shop/prd_detail.php?idx=1046&amp;part_idx=96">${cart.item}</a>
																		</p>
																		<div class="option">
																			<p>선택 : 보듬 배변봉투 8롤(120매)</p>
																		</div>
																		<div class="quantity">
																			<div class="srchFilter">
																				<select class="w145" name="goods_cnt"
																					onchange="changeCnt('change_cnt','${cart.itemnum}',this.value);">
																					<option value="${cart.itemcnt}" selected disabled
																						hidden>${cart.itemcnt}</option>
																					<option value="1">1</option>
																					<option value="2">2</option>
																					<option value="3">3</option>
																					<option value="4">4</option>
																					<option value="5">5</option>
																					<option value="6">6</option>
																					<option value="7">7</option>
																					<option value="8">8</option>
																					<option value="9">9</option>
																					<option value="10">10</option>
																					<option value="11">11</option>
																					<option value="12">12</option>
																					<option value="13">13</option>
																					<option value="14">14</option>
																					<option value="15">15</option>
																					<option value="16">16</option>
																					<option value="17">17</option>
																					<option value="18">18</option>
																					<option value="19">19</option>
																					<option value="20">20</option>
																					<option value="21">21</option>
																					<option value="22">22</option>
																					<option value="23">23</option>
																					<option value="24">24</option>
																					<option value="25">25</option>
																					<option value="26">26</option>
																					<option value="27">27</option>
																					<option value="28">28</option>
																					<option value="29">29</option>
																					<option value="30">30</option>
																					<option value="31">31</option>
																					<option value="32">32</option>
																					<option value="33">33</option>
																					<option value="34">34</option>
																					<option value="35">35</option>
																					<option value="36">36</option>
																					<option value="37">37</option>
																					<option value="38">38</option>
																					<option value="39">39</option>
																					<option value="40">40</option>
																					<option value="41">41</option>
																					<option value="42">42</option>
																					<option value="43">43</option>
																					<option value="44">44</option>
																					<option value="45">45</option>
																					<option value="46">46</option>
																					<option value="47">47</option>
																					<option value="48">48</option>
																					<option value="49">49</option>
																					<option value="50">50</option>
																				</select>
																			</div>
																		</div>
																	</div>
																</div>
																<div class="delBtn">
																	<a
																		href="javascript:cartDel('${cart.itemnum}','cart_del');"><img
																		src="/resources/bodeum.co.kr/html/common/img/cancel_btn.png"></a>
																</div>
															</td>
															<td class="col-price"><span class="label">상품금액</span>
																<span class="price"><strong>${cart.itemprice*cart.itemcnt}</strong>원</span></td>
															<td class="col-cancel"><a
																href="javascript:cartDel('${cart.itemnum}','cart_del');"><img
																	src="/resources/bodeum.co.kr/html/common/img/cancel_btn.png"></a></td>
														</tr>
													</c:forEach>
												</tbody>
											</table>
											<p class="color-gray">※ 구매 금액에 따라 배송비 차등 적용됩니다.(50,000원
												미만: 3,000원)</p>
											<p class="color-gray">※ 제주/ 도서산간 배송지의 경우 배송비가 추가됩니다.</p>
											<p class="color-gray">※ 제주도 0원, 제주도 외 도서산간 0원</p>
										</div>

									</div>
								</div>
								<input type="hidden" name="deliv_price" value="0">
								<div class="col-30">
									<div class="order-summary">
										<h4>주문요약</h4>
										<dl>
											<dt>총 상품금액</dt>
											<dd class="price" id="goods_price">${sumprice}</dd>
										</dl>
										<dl>
											<dt>배송비</dt>
											<dd class="price" id="deliv_price">${deliveryfee}원</dd>
										</dl>
										<dl class="no-line">
											<dt>총 결제금액</dt>
											<dd class="total-price" id="total_price">
												<strong></strong><span>${sumprice+deliveryfee}원</span>
											</dd>
										</dl>
										<div class="button-area">
											<a href="javascript:actSelect2();" class="roundBtn blueBtn">주문하기</a>
											<a href="javascript:history.go(-1);"
												class="roundBtn whiteBtn">쇼핑 계속하기</a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
		<%@include file="../includes/footer2.jsp"%>
</body>
</html>