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

<title>그룹 레슨 신청</title>
</head>
<body>
<header>
				<%@include file="../includes/header2.jsp"%>
		</header>
	<div id="wrapper">
		<div class="containerWrap">
			<div class="page-title-top2 teach-page-title">
				<h2 class="page-title">개인 레슨 신청</h2>
				<div class="sub-txt">교육회원에 가입된 분만 신청 가능합니다.</div>
			</div>
			<div class="page-title-menu">
				<ul>
					<li><a><div onclick="edulist()"> 교육회원 가입</div></a></li>
					<li><a><div onclick="edugroup()"> 그룹 레슨 신청</div></a></li>
					<li class="on"><a><div onclick="edusingle()"> 개인 레슨 신청</div></a></li>
				</ul>
			</div>
			<div class="content">
				<div class="inner-contents bg_gray">
					<div class="section">
						<!-- <p class="ex_p center mb-30">개인 레슨은 보듬 캠퍼스에서 진행되는 교육 프로그램이며, <br class="pcVer"> 방문교육은 반려견이 살고 있는 장소에서 교육이 진행되는 프로그램입니다. <br class="pcVer"> 아래[레슨 장소 선택] 메뉴에서 선택하실 수 있습니다.</p> -->
						<form name="search_form1" method="get" action="">
							<div class="srchFilter mb-40 pc-tabletVer">
								<select id="all" class="w145" name="search_lecture_state">
									<option value="">전체</option>
									<option value="1">모집중</option>
									<option value="3">모집마감</option>
								</select> <select id="place" class="w145" name="search_place">
									<option value="">레슨장소 선택</option>
									<option value="">전체</option>
									<option value="보듬 오남캠퍼스">보듬 오남캠퍼스</option>
									<!-- <option value="보듬 덕소캠퍼스" >보듬 덕소캠퍼스</option>
								  <option value="보듬 마곡캠퍼스" >보듬 마곡캠퍼스</option> -->
									<option value="캠퍼스 외">캠퍼스 외</option>
									<!-- <option value="보듬캠퍼스" >보듬캠퍼스</option> -->
									<!-- <option value="방문교육" >방문교육</option> -->
								</select> <select id="date" class="w145" name="search_yoil">
									<option value="">요일 선택</option>
									<option value="월">월요일</option>
									<option value="화">화요일</option>
									<option value="수">수요일</option>
									<option value="목">목요일</option>
									<option value="금">금요일</option>
									<option value="토">토요일</option>
									<option value="일">일요일</option>
								</select> <select id="trainer" class="w145" name="search_trainer">
									<option value="">훈련사 전체</option>
									<option value="53">보듬.</option>
									<option value="7">강형욱</option>
									<option value="36">공재원</option>
									<option value="46">노예지</option>
									<option value="44">박단비</option>
									<option value="27">보듬</option>
									<option value="40">성승현</option>
									<option value="35">유정민</option>
									<option value="33">이용선</option>
									<option value="42">장세나</option>
									<option value="52">장채림</option>
									<option value="51">전수연</option>
								</select>
								<div class="srchBtn">
									<a href="javascript:search1();">검색</a>
								</div>
							</div>
						</form>
						<c:forEach items="${edusingle }" var="list">
						<div class="container personalLesson">
							<div class="row">
								<div class="col-33">
									<div class="pannel personalLesson">
										<div class="wrap-pannel"
											onclick="edusingleitem(${list.itemnum})">
											<div class="img">
												<div class="ratio thumbnail-wrapper">
													<div class="thumbnail">
														<a onclick="edusingleitem(${list.itemnum})"></a>
													</div>
												</div>
											</div>
											<div class="explain">
												<div class="exp-top">
													<div class="title">
														<a onclick="edusingleitem(${list.itemnum})">
															
															${list.name }</a>
													</div>
												</div>
												<div class="exp-bottom">
													<div class="place">${list.place }</div>
													<!-- <div class="place"></div> -->
													<div class="day">${list.edudate }</div>
													<div class="day">모집인원 : ${list.countpp }명</div>
													<div class="price">
														<strong>${list.edupic}</strong> 원
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						</c:forEach>
							<!--  페이징
						<div class="paging">
							<ol>
								<li class="active"><a href="#">1</a></li>
								<li><a
									href="?PageNumber=2&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">2</a></li>
								<li><a
									href="?PageNumber=3&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">3</a></li>
								<li><a
									href="?PageNumber=4&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">4</a></li>
								<li><a
									href="?PageNumber=5&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">5</a></li>
								<li><a
									href="?PageNumber=6&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">6</a></li>
								<li><a
									href="?PageNumber=7&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">7</a></li>
								<li><a
									href="?PageNumber=8&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">8</a></li>
								<li><a
									href="?PageNumber=9&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">9</a></li>
								<li><a
									href="?PageNumber=10&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">10</a></li>
								<li class="etc">…</li>
								<li><a
									href="?PageNumber=1263&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">1263</a></li>
							</ol>
							<p>
								<a href="#prev" class="arrow_l">Prev</a>
							</p>
							<p class="last">
								<a
									href="?PageNumber=2&amp;search_item=&amp;search_order=&amp;search_lecture_state=&amp;search_yoil=&amp;search_place=&amp;search_keyword=&amp;search_trainer=">Next</a>
							</p>
						</div>
						-->
						
						
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



function edusingleitem(itemnum){
	
	
	self.location="/bodeum/edu/edusingleitem?itemnum="+itemnum;
}




</script>
</html>