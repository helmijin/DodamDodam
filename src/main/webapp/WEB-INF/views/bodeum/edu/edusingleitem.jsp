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
			<c:forEach items="${edusingleitem }" var="list">
				<div class="inner-contents bg_line">
					<div class="section prdDetail topic-detail">

						<div class="contents" id="fixed-parent">
							<div id="prdInfoWrap">
								<div class="prdInfoWrap" id="theFixed" style="top: 110px;">
									<div class="imgArea">
										<div class="ratio thumbnail-wrapper">
											<div class="thumbnail">
												<img src="/data/trainerImages/1613981288_TRAINER.png">
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
												<strong class="sale_price">${list.edupic }</strong><span>원</span>
												<p>개인레슨 수강권 사용가능</p>
											</dd>
										</dl>
									</div>
									<div class="btn">
										<a href="javascript:alert('현재 운영중인 상품이 아닙니다.');"
											class="roundBtn blueBtn">신청마감</a>
									</div>
								</div>
							</div>
							<div id="prdDetail2">
								<div class="prdDetailExp-1">
									<div class="title">${list.title }</div>
									<div class="prd_desc">
										${list.content1 }
									</div>
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
									<div class="edu-movieBox">
										<div>
											
										</div>
									</div>
									<div class="precautions">
										<p class="title">주의사항</p>
										<p class="txt">
											${list.content2 }
										</p>
									</div>
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