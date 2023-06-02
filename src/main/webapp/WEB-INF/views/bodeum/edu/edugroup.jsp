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
				<h2 class="page-title">그룹 레슨 신청</h2>
				<div class="sub-txt">교육회원에 가입된 분만 신청 가능합니다.</div>
			</div>
			<div class="page-title-menu">
				<ul>
					<li><a><div onclick="edulist()"> 교육회원 가입</div></a></li>
					<li class="on"><a><div onclick="edugroup()"> 그룹 레슨 신청</div></a></li>
					<li><a><div onclick="edusingle()"> 개인 레슨 신청</div></a></li>
				</ul>
			</div>
			<div class="content">
				<div class="inner-contents bg_gray">
					<div class="section">
					
						<form name="search_form1" method="get" action="">
							<div class="srchFilter mb-40 pc-tabletVer">
								<select id="all" class="w145" name="search_lecture_state">
									<option value="">전체</option>
									<option value="1">모집중</option>
									<option value="3">모집마감</option>
								</select> 
								<select id="date" class="w145" name="search_yoil">
									<option value="">요일 선택</option>
									<option value="월">월요일</option>
									<option value="화">화요일</option>
									<option value="수">수요일</option>
									<option value="목">목요일</option>
									<option value="금">금요일</option>
									<option value="토">토요일</option>
									<option value="일">일요일</option>
								</select> 
								<select id="place" class="w145" name="search_place">
									<option value="">장소 선택</option>
									<option value="보듬 오남캠퍼스">보듬 오남캠퍼스</option>
									<!--  <option value="보듬 덕소캠퍼스" >보듬 덕소캠퍼스</option>
								  <option value="보듬 마곡캠퍼스" >보듬 마곡캠퍼스</option> -->
									<option value="캠퍼스 외">캠퍼스 외</option>
						
								</select> 
								<select id="keyword" class="w145" name="search_keyword">
									<option value="">키워드 전체</option>
									<option value="CD1">CD1</option>
									<option value="Free Run">Free Run</option>
									<option value="L.A.T">L.A.T</option>
									<option value="L.L.W">L.L.W</option>
									<option value="개에게 짖는 반려견">개에게 짖는 반려견</option>
									<option value="그룹 트레이닝">그룹 트레이닝</option>
									<option value="도그파킹">도그파킹</option>
									<option value="독 트릭">독 트릭</option>
									<option value="물놀이">물놀이</option>
									<option value="분리불안">분리불안</option>
									<option value="사회화">사회화</option>
									<option value="산책">산책</option>
									<option value="소예">소예</option>
									<option value="소조">소조</option>
									<option value="어질리티">어질리티</option>
									<option value="예절교육">예절교육</option>
									<option value="주니어">주니어</option>
									<option value="중대형견">중대형견</option>
									<option value="초인종에 짖는 반려견">초인종에 짖는 반려견</option>
									<option value="클리커">클리커</option>
									<option value="퍼피">퍼피</option>
									<option value="펀질리티">펀질리티</option>
									<option value="피트니스">피트니스</option>
									<option value="흥활">흥활</option>
									<option value="힐 트레이닝">힐 트레이닝</option>
								</select> 
								<select id="trainer" class="w145" name="search_trainer">
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
						
						<div class="container eduApplication">
							<div class="row">
							<c:forEach items="${edugroup}" var="grouplist">
								<div class="col-25">
									<div class="pannel">
										<div class="wrap-pannel"
											onclick="edugroupitem(${grouplist.itemnum})">
											<div class="img">
												<div class="ratio thumbnail-wrapper">
													<div class="thumbnail" onclick="edugroupitem(${grouplist.itemnum})">
													
															<img src="/data/thumbImages/THUMB1_1675935777.png">
													
													</div>
												</div>
											</div>
											<div class="explain">
												<div class="exp-top">
													<div class="title" onclick="edugroupitem(${grouplist.itemnum})">
													
														<a> ${grouplist.title } </a>
													</div>
												</div>
												<div class="exp-bottom">
													<div class="place"></div>
													<div class="day">${grouplist.edudate } ${grouplist.name }</div>
													<div class="day">모집인원 : ${grouplist.countpp }명</div>
													<div class="price">
														<strong>${grouplist.edupic }</strong> 원
													</div>
													<div class="keyword">
														<span class="step5">치유</span> <span class="step5">학습</span>
														<span class="step5">재미</span>
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



function edugroupitem(itemnum){
	
	
	self.location="/bodeum/edu/edugroupitem?itemnum="+itemnum;
}



function search1(){
	var form = document.search_form1;
	form.submit();
}

function search2(){
	var form = document.search_form2;
	form.submit();
}


</script>
</html>