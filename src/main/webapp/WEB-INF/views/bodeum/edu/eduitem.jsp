<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<link href="../../../resources/css/main.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/common.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/slick.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/slick-theme.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/slider.css" rel="stylesheet"
	type="text/css">


<title>교육상품정보</title>
</head>
<body>
<header>
				<%@include file="../includes/header2.jsp"%>
		</header>
	<div id="wrapper">
		<div class="containerWrap">
			<div class="content">
			<c:forEach items="${eduitem }" var="list">
				<div class="inner-contents">
					<div class="section prdDetail">

						<div class="contents" id="fixed-parent">
							<form method="post" name="goodsForm">
								<input type="hidden" name="gubun" value="package"> <input
									type="hidden" name="trade_method" value="4"> <input
									type="hidden" name="idx" value="66">
								<div id="prdInfoWrap">
									<div class="prdInfoWrap" id="theFixed" style="top: 110px;">
										<div class="imgArea">
											<div class="ratio thumbnail-wrapper">
												<div class="thumbnail">

													<img src="/data/thumbImages/THUMB1_PBL2020_0034.jpg">

												</div>
											</div>
										</div>

										<div class="prdInfo">
											<div class="icon">
												<span class="newItem">NEW</span> <span class="eventItem">EVENT</span>
											</div>
											<p class="prd-title">${list.title}</p>
											<dl>
												<dt>적립금</dt>
												<dd class="point">
													<strong>${list.point}</strong><span>P</span>
												</dd>
											</dl>
											<dl>
												<dt>수강료</dt>
												<dd class="price">
													<strong class="price">${list.edupic }</strong><span>원</span>
												</dd>
											</dl>
											<dl>
												<dt>할인가</dt>
												<dd>
													<strong class="sale_price">${list.picdisco }</strong><span>원</span>
												</dd>
											</dl>
										</div>
										<div class="btn">
											<a href="javascript:movieBuySendit(1);"
												class="roundBtn grayBtn">장바구니</a> <a
												href="/html/common_ui/order/order_insert.php?gubun=package&amp;package_idx=66&amp;trade_method=4"
												class="roundBtn blueBtn">결제하기</a>
										</div>
									</div>
								</div>
							</form>

							<div id="prdDetail2">
								<div class="prdDetailExp-1">
									<div class="title">${list.title}</div>
									<div class="prd_desc">
										${list.content1 }
									</div>
									<div class="request-info">
										<ul>
											<li><span>유형</span>${list.type}</li>
											<li><span>강사</span>${list.name }</li>
											<li><span>기간</span>${list.edudate }</li>
										</ul>
									</div>
									<div class="benefit">
										<p class="title">혜택 및 구성</p>
										<ul>
											<li>${list.content2 } </li>
										</ul>
									</div>

									<div class="sampleVideo">
										<p class="title">샘플영상</p>
										<div class="movieWrap">
											<div class="movieArea">
											
											<!--  	동양상 링크
													<iframe width="699" height="650"
													src="https://v.kr.kollus.com/s?jwt=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJjdWlkIjoiIiwiZXhwdCI6MTY3NTkyNjA0MiwiYXd0YyI6bnVsbCwibWMiOlt7Im1ja2V5IjoiUk1TNHBsT0siLCJtY3BmIjoiIn1dfQ.EohJeIQvizqTFKcWWMKEhtE9TglAuCVdnArp22lIBNQ&amp;custom_key=2e6ee3018fe2a13268d90b7240aea6e34f3d9cac96c4fe7617ff395f0aac2b72"
													frameborder="0" allowfullscreen="" webkitallowfullscreen=""
													mozallowfullscreen=""></iframe>
													-->
											</div>
										</div>
									</div>
									<div class="precautions">
										<p class="title">주의사항</p>
										<p class="txt">
											${list.content3 }
										</p>
									</div>
									<div id="scrollStop"></div>
								</div>
							</div>

						</div>

					</div>
				</div>
				</c:forEach>
			</div>
		</div>
	</div>
<footer>
			<%@include file="../includes/footer.jsp"%>
		</footer>
</body>
</html>