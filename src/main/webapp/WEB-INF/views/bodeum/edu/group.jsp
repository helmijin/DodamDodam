<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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



<title>영상교육</title>
</head>
<body>
<header>
				<%@include file="../includes/header2.jsp"%>
		</header>
	<div id="wrapper">
		<div class="containerWrap">
			<div class="page-title-top education-page-title">
			
				<h2 class="page-title">그룹 레슨</h2>
			</div>
			<div class="page-title-menu  education-page-menu">
				<ul>
					<li ><div onclick="video()"><a href="#">영상 교육</a></div></li>
					<li class="on"><div onclick="group()"><a href="#">그룹 레슨</a></div></li>
					<li><div onclick="single()"><a href="#">개인 레슨</a></div></li>
				</ul>
			</div>
			<div class="eduLessonWrap minH-auto">
				<div class="inner-contents">
					<div class="section">
						<div class="individual-txt">
							솔루션 교육회원을 위한 특별한 혜택 보듬훈련사와 함께하는 다양한 주제의 <strong>그룹 레슨<span>!</span></strong>
							다른 반려견과 함께하는 교육을 통해 사회성을 길러주세요.
						</div>
					</div>
				</div>
				<div class="inner-contents bg_gray">
					<div class="section">
						<div class="education-lesson edu-groupLesson">
							<div class="container">
								<div class="row">
									<div class="col-50">
										<div class="video-sample">
											<iframe src="https://player.vimeo.com/video/247420573"
												frameborder="0" webkitallowfullscreen=""
												mozallowfullscreen="" allowfullscreen=""></iframe>
										</div>

									</div>
									<div class="col-50">
										<div class="individual-txt2">
											<h4 class="mb-15">그룹 레슨이란?</h4>
											<div class="txt">
												<p>강형욱 훈련사님이 자신 있게 추천하는 보듬교육 그룹 레슨!</p>
												<p>솔루션 기간 동안 매주 풍부한 주제로 업데이트되는 그룹 레슨을 통해 영상교육의 연장선인 양질의
													오프라인 교육을 받으실 수 있습니다.</p>
												<p>경험이 풍부한 보듬훈련사의 지도 아래 분리불안, 어질리티, 예절, 클리커 등 다양한 주제로
													진행되며, 내 반려견과 성향이 맞는 다른 강아지들과 어울려 사회성을 기를 수 있습니다.</p>
												<p>보호자님의 반려견의 이 사회에 잘 적응하고 행복한 생활을 하는 것이 보듬교육의 목표이고
													바람입니다.</p>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--
					<div class="inner-contents bg_line">
						<div class="section">
							<div class="individual-lesson">
								<div class="container">
									<div class="row">
										<div class="col-33">
											<div class="lessonWrap">
												<div class="square">
													<div class="content">
														<p class="title">Group lesson</p>
														<p class="txt">
															그룹 레습 수업을 받는 모습입니다. <br>
															보듬 훈련사 및 다른 반려견들과 
															함께하는 수업에서 더 많은 시너지 효과를 
															받으실 수 있습니다. 
														</p>
													</div>
												</div>
											</div>
											<div class="imgArea">
												<div class="square">
													<div class="content">
														<img src="../../common/img/edu-group1.jpg">
													</div>
												</div>
											</div>
										</div>
										<div class="col-45">
											<div class="imgArea">
												<div class="square">
													<div class="content">
														<img src="../../common/img/edu-group2.jpg">
													</div>
												</div>
											</div>
										</div>
										<div class="col-22">
											<div class="imgArea">
												<div class="square">
													<div class="content">
														<img src="../../common/img/edu-group3.jpg">
													</div>
												</div>
												<div class="square">
													<div class="content">
														<img src="../../common/img/edu-group4.jpg">
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					-->
				<div class="education-common">
					<div class="bigTxt">
						<strong>어떤 교육</strong>을 들어야 할지 고민이세요?
					</div>
					<div class="smTxt">상담 신청해주시면 영업일 기준 3-5일 이내로 전화드립니다.</div>
					<div class="btn">
						<a href="../../common_ui/customer/counsel.php"
							class="roundBtn blueBtn">상담 신청</a>
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

function video(){
	self.location="/bodeum/edu/video";
}

function group(){
	self.location="/bodeum/edu/group";
}

function single(){
	self.location="/bodeum/edu/single";
}


</script>


</html>