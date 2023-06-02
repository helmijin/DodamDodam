<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
	
	
	
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

<title>교육 가입</title>
</head>
<body>
<header>
				<%@include file="../includes/header2.jsp"%>
		</header>

	<div id="wrapper">
		<div class="containerWrap">
			<div class="page-title-top teach-page-title">
				<h2 class="page-title">교육회원 가입</h2>
			</div>
			<div class="page-title-menu">
				<ul>
					<li class="on"><div onclick="edulist()"> <a>교육회원 가입</a></div></li>
					<li><div onclick="edugroup()"> <a>그룹 레슨 신청</a></div></li>
					<li><div onclick="edusingle()"> <a>개인 레슨 신청</a></div></li>
				</ul>
			</div>
			<div class="content">
				<div class="inner-contents bg_gray">
					<div class="section pt-30">
						<div class="request_list">
						
						
				 
							<div class="request-page-title-wrap">
								<h2 class="page-title2">솔루션</h2>
								<div class="page-sub-txt2">교육회원 수강 기간 동안 보듬교육의 모든 영상강의가 제공되며 오프라인 레슨에 참여하실 수 있습니다.</div>
							</div>
							<!-- //-->
						
							<c:forEach items="${edulist}" var="list">
							<div class="whiteBox">
								<div class="whiteBoxWrap">
									<div class="imgArea"
										onclick="eduitem(${list.itemnum})">
										<div class="ratio thumbnail-wrapper">
											<div class="thumbnail">
												<img src="../../../data/thumbImages/THUMB1_PBL2020_0034.jpg">
											</div>
										</div>
									</div>
									<div class="infoArea"
										onclick="eduitem(${list.itemnum})">
										<div class="info">
											<p class="title">"${list.title }"</p>
											<div class="explain">
												<ul>
													<li>"${list.content2 }"</li>
												</ul>
											</div>
										</div>
									</div>
									<div class="infoArea2">
										<div class="info2">
											<div class="icon">
												<span class="newItem">NEW</span> <span class="eventItem">EVENT</span>
												<span class="saleIcon">19%</span>
											</div>
											<div class="priceWrap">
												<p class="cost">
													<span>수강료</span> 
													<strong class="cost-sale">"${list.edupic}"<span>원</span></strong>
												</p>
												<p class="price">
													<span>할인가</span><strong>"${list.picdisco }"<span>원</span></strong>
												</p>
											</div>
											<div class="btnArea">
												<div onclick="eduitem(${list.itemnum})">
													<a class="roundBtn grayBtn">상세설명</a></div>
													<a href="#" class="roundBtn blueBtn">신청하기</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							</c:forEach>
					
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
<footer>
			<%@include file="../includes/footer.jsp"%>
		</footer>
</body>
<script type="text/javascript">

function edulist(){
	self.location="/bodeum/edu/edulist";
}


function edugroup(){
	self.location="/bodeum/edu/edugroup";
}


function edusingle(){
	self.location="/bodeum/edu/edusingle";
}



function eduitem(itemnum){
	
	
	self.location="/bodeum/edu/eduitem?itemnum="+itemnum;
}




</script>
</html>