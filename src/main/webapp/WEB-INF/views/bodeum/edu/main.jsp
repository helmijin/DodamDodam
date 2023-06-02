<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<html>
<head>
<meta charset="utf-8">

<script type="text/javascript"
	src="../../../resources/JSfiles/slider.js"></script>
<script type="text/javascript"
	src="../../../resources/JSfiles/jquery-3.0.0.min.js"></script>
<script type='text/javascript'
	src="../../../resources/JSfiles/webslidemenu.js"></script>
<script type='text/javascript' src="../../../resources/JSfiles/menu.js"></script>
<script type='text/javascript'
	src='../../../resources/JSfiles/placeholders.js'></script>
<script type='text/javascript'
	src='../../../resources/JSfiles/photo-viewer.js'></script>
<script type='text/javascript'
	src='../../../resources/JSfiles/owl.carousel.js'></script>
<script type='text/javascript'
	src="../../../resources/JSfiles/function.js"></script>
<script type="text/javascript"
	src="../../../resources/JSfiles/wcslog.js"></script>
<script type="text/javascript"
	src="../../../resources/JSfiles/1.8jquery.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/common.css" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/slider.css" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/main.css" />
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/slick.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/slick-theme.css">
<link rel="stylesheet" type="text/css"
	href="../../../resources/JSfiles/owl.carousel.css">

<title>Dodam Dodam</title>
</head>
<body>
	<header>
		<%@include file="../includes/header2.jsp"%>
	</header>
	<div id="wrapper" class="main">
		<div class="containerWrap">
			<!-- 슬라이드 -->
			<div class="content">
				<div class="slider">
					<div class="slide-viewer">
						<div class="slide-group" style="left: 0px;">
							<div class="slide"
								style="background: url('../../../../resources/img/BANNER1_1640322359.png') no-repeat top center; height: 640px; background-size: cover;">
								<div class="introWrap">
									<div class="slideTxt">
										<div class="txtWrap">
											<div class="txt">보호자 인터뷰</div>
											<div class="sm-txt">너무 짖어서</div>
											<div class="big-txt">산책이 불가능 했어요.</div>
											<div class="ex-txt">이제 어디든 같이 다닐 수 있어요!</div>
											<div class="more-txt" onclick="eduboardlisr()">교육후기
												보러가기</div>
										</div>
									</div>
								</div>
							</div>
							<div class="slide"
								style="background: url('../../../../resources/img/BANNER1_1640323052.png') no-repeat top center; height: 640px; background-size: cover;">
								<div class="introWrap">
									<div class="slideTxt">
										<div class="txtWrap">
											<div class="txt">보듬교육이란?</div>
											<div class="sm-txt">혼내지 않아도 혼나지 않아도 되는</div>
											<div class="big-txt">반려견 교육</div>
											<div class="ex-txt">보듬은 보호자님과 반려견이 항상 행복하기를 바랍니다.</div>
											<div class="more-txt" onclick="edulist()">보듬교육 알아보기</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="slide-buttons"></div>
					</div>
				</div>
			</div>


			<div class="content section01">
				<!-- 교육 문의 -->
				<div class="inner-contents">
					<div class="inner-contestsWrap">
						<div class="sectionTxt1">
							<div>
								<div>
									<p class="txt1">
										내 댕댕이는 <strong>왜</strong> 이런 행동을 할까?
									</p>
									<p class="txt2">반려견이 밥달라고 하는것</p>
									<div class="roundBtn blueBtn" onclick="video()">보듬교육
										알아보기</div>
								</div>
							</div>
							<!-- 동영상 링크 -->
							<div class="movieWrap">
								<div class="movieArea">
									<iframe src="https://player.vimeo.com/video/247419618"
										frameborder="0" webkitallowfullscreen="" mozallowfullscreen=""
										allowfullscreen=""> </iframe>
								</div>
							</div>
							<!-- 동영상 링크 끝 -->
						</div>
					</div>
				</div>
				<div class="inner-contents2">
					<div class="section">
						<div class="txt1">세계 최고 수준의</div>
						<div class="txt1">
							<strong>보듬훈련사와</strong> 함께하는
						</div>
						<div class="txt1 mb-12">온.오프라인 교육</div>
						<div class="txt2">현재 보듬의 노하우는 최고최고</div>
					</div>
					<div class="section2">
						<ul>
							<li>
								<!-- 반려견 교육 링크 --> <a href="/bodeum/edu/video">
									<div class="img"></div>
									<p class="txt1">영상 강의</p>
									<p class="txt2">시간이나 장소 제한 없이 배우는 반려견 교육</p>

							</a>
							</li>
							<li>
								<!-- 그룹 레슨 링크 --> <a href="/bodeum/edu/group">
									<div class="img"></div>
									<p class="txt1">그룹 레슨</p>
									<p class="txt2">다른 반려견과 함께하는 수업</p>
							</a>
							</li>
							<li>
								<!-- 개인 레슨 링크 --> <a href="/bodeum/edu/single">
									<div class="img"></div>
									<p class="txt1">개인 레슨</p>
									<p class="txt2">내 반려견을 위한 1대1 맞춤 훈련</p>
							</a>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<div class="content section03">
				<!-- 상담 문의 -->
				<div class="contactArea">
					<div class="container">
						<div class="row">
							<div class="clo-50">
								<div class="info">
									<h4>
										<strong>어떤 교육을</strong> 들어야 할지 고민이세요?
									</h4>
									<div class="row">
										<div class="col-50">
											<div class="infoWrap">
												<span class="image"> <img
													src="../../../resources/img/mainIcon4.png">
												</span>
												<div>
													<span class="customer">보듬교육 고객센터</span> 1800-6358
												</div>
											</div>
										</div>
										<div class="col-50">
											<div class="infoWrap">
												<span class="image"> <img
													src="../../../resources/img/mainIcon5.png">
												</span>
												<div>
													<span class="time2"> <span class="time">업무시간</span>
														10:00 ~ 18:00
													</span> <span class="pcVer bar"></span> <span class="time3">
														<span class="time">점심시간</span> 13:00 ~ 14:00
													</span> <span class="mt-5">토요일, 일요일, 공휴일 휴무</span>
												</div>
											</div>
										</div>

										<!--  <div class="col-50">
										<h5>상담 신청하기</h5>
										<form name="writeForm" class="contact-form" method="post" action="/">
											<input type="hidden" name="userid" value="">
											<input type="hidden" name="gubun" value="main">
											<input type="text" name="name" placeholder="이름">
											<div class="number mb-20">
												<select class="w160" name="tell" id="">
													<option value="010" selected>010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>	
												</select>
												<span>-</span>
												<input type="text" name="te12" maxlength="4" placeholder="">
												<span>-</span>
												<input type="text" name="te13" maxlength="4" placeholder="">
											</div>
											
											<textarea name="content" >
												보듬교육 프로그램을 위한 상담입니다.
												효과적인 교육 추천을 위해 아래 사항을 자세하게 작성해주세요.
												
												관심프로그램(ex: 영상교육/그룹레슨/개인레슨 등):
												캠퍼스로 방문상담 희망 시 가능한 시간 (ex. 주중/주말 오후 2시) :
												반려견이름:
												나이:
												견종:
												중성화 여부:
												문제행동 :
												
											</textarea>			
											<div class="checkArea">
												<input name="agree" id="agree" type="checkbox">
											<label style="margin-top:-3px; color:#333; font-size:1em;" class="check f1" for="agree">
													동의
												</label>
												<span class="policy-btn" style="border-bottom:1px solid #333;">(개인정보 취급방법)</span>
											</div>	
											<div class="btn">
												<a href="javascript:counselSendit();" class="rounBtn blueBtn">상담신청</a>
											</div>							
										</form>
									</div> -->
										<script language="javascript">
												function counselSendit() {
													var regex = /^[ㄱ-ㅎ|가-힣|a-z|A-Z|0-9|]+$/;
													var form = document.writeForm;
													if (form.name.value == "") {
														alert("이름을 입력해주세요.");
														form.name.focus();
													} else if (!regex
															.test(form.name.value)) {
														alert("이름에 특수문자를 넣을 수 없습니다.");
														form.name.focus();
													} else if (form.tel2.value == "") {
														alert("전화번호를 입력해주세요.");
														form.tel2.focus();
													} else if (form.tel3.value == "") {
														alert("전화번호를 입력해주세요.");
														form.tel3.focus();
													} else if (form.content.value == "") {
														alert("상담내용을 입력해주세요.");
														form.content.focus();
													} else if (form.agree.checked == false) {
														alert("개인정보 취급방침에 동의해주세요.");
														form.agree.focus();
													} else {
														fbq(
																'track',
																'Purchase',
																{
																	content_type : 'product',
																	content_name : '상담신청',
																	value : '1',
																	currency : 'KRW'
																});

														form.submit();
													}
												}
											</script>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<footer>
		<%@include file="../includes/footer2.jsp"%>
	</footer>
</body>


<script type="text/javascript">

function company(){
		self.location="/bodeum/edu/company";
		}
		
function video(){
			self.location="/bodeum/edu/video";
		}

function group(){
			self.location="/bodeum/edu/group";
		}

function single(){
			self.location="/bodeum/edu/single";
		}
function edulist(){
	self.location="/bodeum/edu/edulist";
}
function eduboardlist(){
	self.location="/bodeum/edu/eduboardlist";
}
function logout(){
	self.location="/bodeum/edu/logout";
}

</script>

</html>
