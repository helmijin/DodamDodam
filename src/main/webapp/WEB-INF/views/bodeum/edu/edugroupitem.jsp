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
			<c:forEach items="${edugroupitem }" var="list">
				<div class="inner-contents bg_line">
					<div class="section prdDetail topic-detail">
						<div class="contents" id="fixed-parent">
							<div id="prdInfoWrap">
								<div class="prdInfoWrap" id="theFixed" style="top: 110px;">
									<div class="imgArea">
										<div class="ratio thumbnail-wrapper">
											<div class="thumbnail">
												<img src="/data/thumbImages/THUMB1_1675067152.png">
											</div>
										</div>

									</div>
									<div class="prdInfo">
										<p class="prd-title">${list.title }</p>
										<dl>
											<dt>적립금</dt>
											<dd class="point">
												<strong>${list.point }</strong><span>P</span>
											</dd>
										</dl>
										<dl class="total-price">
											<dt>수강료</dt>
											<dd>
												<strong class="sale_price">${list.edupic}</strong><span>원</span>
												<p>그룹레슨 수강권 사용가능</p>
											</dd>
										</dl>
									</div>
									<div class="btn">
										<a
											href="javascript:alert('먼저 회원 로그인후 수강해 주세요!'); location.replace('/html/common_ui/member/login.php?login_go=/html/edu_movie/teach/edu_detail_group.php?enc_data=aWR4PTI2MjIwJlBhZ2VOdW1iZXI9MSZsaXN0Tm89JnRhYmxlPWlkX2xlc3NvbiZjb2RlPSZzZWFyY2hfaXRlbT0mc2VhcmNoX29yZGVyPQ==||');"
											class="roundBtn blueBtn">신청하기</a>
									</div>
								</div>
							</div>
							<div id="prdDetail2">
								<div class="prdDetailExp-1 edu-detail-group">
									<div class="title">${list.title }</div>
									<div class="keyword">
										<span class="step5">치유</span> <span class="step5">학습</span> <span
											class="step5">재미</span>
									</div>
									<div class="prd_desc">${list.content1 }</div>
									<div class="request-info">
										<ul>
											<li><span>유형</span>${list.type }</li>
											<li><span>강사</span>${list.name }훈련사</li>
											<li><span>시간</span>${list.time }</li>
											<li><span>장소</span>${list.place }</li>
											<li><span>일시</span>${list.edudate }</li>
										</ul>
									</div>
									<div>
										<p class="title">준비물</p>
										<p class="txt">${list.prepare }</p>
									</div>
									<div>
										<p class="title">추천 반려견</p>
										<ul>
											<li>${list.recopet }</li>
											
										</ul>
									</div>
									<div class="edu-movieBox">
										<div>
											<p>
												${list.content2 }
											</p>
											
											<p>
												<span
													style="font-family: 나눔고딕, NanumGothic, sans-serif; font-size: 11pt;">&nbsp;</span>
											</p>
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