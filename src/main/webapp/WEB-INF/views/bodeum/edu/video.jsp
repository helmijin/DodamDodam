<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

	<link href="../../../resources/css/main.css" rel="stylesheet" type="text/css">
	<link href="../../../resources/css/common.css" rel="stylesheet" type="text/css">
	<link href="../../../resources/css/slick.css" rel="stylesheet" type="text/css">
	<link href="../../../resources/css/slick-theme.css" rel="stylesheet" type="text/css">
	<link href="../../../resources/css/slider.css" rel="stylesheet" type="text/css">



<title>영상교육</title>
</head>
<body>
<header>
				<%@include file="../includes/header2.jsp"%>
		</header>
	<div id="wrapper">
		<div class="containerWrap">
			<div class="page-title-top education-page-title">
				<h2 class="page-title">영상 교육</h2>
			</div>
			<div class="page-title-menu  education-page-menu">
				<ul>
					<li class="on"><div onclick="video()"><a href="#">영상 교육</a></div></li>
					<li><div onclick="group()"><a href="#">그룹 레슨</a></div></li>
					<li><div onclick="single()"> <a href="#">개인 레슨</a></div></li>
				</ul>
			</div>
			<div class="content minH-auto">
				<div class="inner-contents edu-video">
					<div class="section">
						<div class="edu-video-wrap">
							<div class="edu-video-top">
								<div class="imgArea">
									<img src="../../../resources/img/edu-video1.jpg">
								</div>
								<div class="txtArea">
									<div class="number">01</div>
									<h4>보듬교육은 다릅니다.</h4>
									<div>보듬교육은 한 가지 문제행동의 개선만을 목적으로 하는 것이 아닌 반려견의 더 나은 삶을 위한
										총체적 접근을 원칙으로 합니다. 반려견의 마음을 알기 위해 그들의 언어를 공부하고 칭찬과 거절을 병행하며
										보듬어주는 교육을 보듬교육이라고 합니다.</div>
								</div>
							</div>
							<div class="edu-video-top edu-video-center">

								<div class="imgArea">
									<img src="../../../resources/img/edu-video2.jpg">
								</div>
								<div class="txtArea">
									<div class="number">02</div>
									<h4 class="txt-right">보듬의 노하우를 담았습니다.</h4>
									<div class="txt-right">반려견의 언어인 카밍시그널부터 가장 기초가 되는 산책 교육,
										예절 교육, 분리불안 등 다양한 토픽에 대한 강형욱 보듬훈련사님의 노하우를 담았습니다.</div>
								</div>
							</div>
							<div class="edu-video-top">
								<div class="imgArea">
									<img src="../../../resources/img/edu-video3.jpg">
								</div>
								<div class="txtArea">
									<div class="number">03</div>
									<h4>자유롭게 언제 어디서나</h4>
									<div>단기교육이나 보호자와 분리된 교육이 아닌 보호자와 반려견이 항상 함께 하며 교육하는 환경을
										만들고 싶었습니다. 강형욱 훈련사님의 오랜 노하우가 담긴 11가지 토픽의 280여 개 영상 강의를 통해 내
										반려견에게 적합한 교육법을 가정 내에서 손쉽게 배울 수 있습니다.</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="inner-contents bg_gray edu-video2">
					<div class="section">
						<div class="edu-video-method">
							<div class="page-sub-title">
								<strong>영상 교육 듣는 방법</strong>
							</div>
							<div class="stepArea">
								<div>
									<img src="../../../resources/img/edu_step1.jpg">
								</div>
								<div>
									<img src="../../../resources/img/edu_step2.jpg">
								</div>
								<div>
									<img src="../../../resources/img/edu_step3.jpg">
								</div>
								<div>
									<img src="../../../resources/img/edu_step4.jpg">
								</div>
							</div>
							<div class="page-sub-txt">
								보듬 교육은 <strong>이해 · 관찰 · 활동 · 세부교육</strong>의 단계를 거치며 반려견의 회복을
								돕습니다. <span>이해, 관찰, 활동은 국·영·수와 같이 보듬교육의 기초가 되는 과목입니다.</span> 위 세
								가지를 중점으로 열심히 교육하시며 산책, 분리불안, 화장실 등의 세부 교육을 진행하시면 효과적입니다.
							</div>
							<div class="container">
								<div class="row">
									<div class="col-33">
										<div class="edu-pannel">
											<div class="imgArea">
												<img src="../../../resources/img/eduImg1.jpg" class="imgThum">
												<div class="keyword">
													<img src="../../../resources/img/edu-icon5.png">
												</div>
											</div>
											<div class="txt">
												<div class="keyword">이해</div>
												<p>보듬훈련사의 조언</p>
												<a href="../teach/topics_detail.php?idx=1">샘플영상</a>
											</div>
										</div>
									</div>
									<div class="col-33">
										<div class="edu-pannel">
											<div class="imgArea">
												<img src="../../../resources/img/eduImg2.jpg" class="imgThum">
												<div class="keyword">
													<img src="../../../resources/img/edu-icon6.png">
												</div>
											</div>
											<div class="txt">
												<div class="keyword">관찰</div>
												<p>카밍시그널</p>
												<a href="../teach/topics_detail.php?idx=7">샘플영상</a>
											</div>
										</div>
									</div>
									<div class="col-33">
										<div class="edu-pannel">
											<div class="imgArea">
												<img src="../../../resources/img/eduImg3.jpg" class="imgThum">
												<div class="keyword">
													<img src="../../../resources/img/edu-icon7.png">
												</div>
											</div>
											<div class="txt">
												<div class="keyword">활동</div>
												<p>노즈워크</p>
												<a href="../teach/topics_detail.php?idx=11">샘플영상</a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="inner-contents edu-video3">
					<div class="section">
						<div class="edu-video-process">
							<div class="page-sub-title">
								<strong>보듬의 교육영상 과정</strong>
							</div>
							<ul class="tabs">
								<li class="active" rel="tab1">솔루션</li>
								<li rel="tab2">나 혼자 한다</li>
								<li rel="tab3">개별토픽</li>
							</ul>
							<div class="tab_container">
								<div id="tab1" class="tab_content" style="display: block;">
									<div class="txt">보듬반려견 교육은 한 가지 증세의 치료만을 목적으로 하는 것이 아닌
										반려견의 더 나은 삶을 위한 총체적 접근을 원칙으로 합니다. 반려견의 특정한 행동은 한가지 이유가 아니라 여러
										가지 이유일 수 있습니다. 솔루션 기간 동안 보듬에서 운영하는 여러 가지 레슨을 통해 더욱 시너지 효과를 보실
										수 있습니다. 보듬의 모든 동영상 강의를 들을 수 있습니다. 오프라인과 온라인 교육으로 더욱 효과적인 교육을
										받으실 수 있습니다.</div>
									<h4>솔루션 교육회원 Only</h4>
									<div class="container">
										<div class="row">
											<div class="col-33">
												<div class="only-benefit">
													<div class="benefit1">
														<div class="txt1">혜택 01</div>
														<div class="title">그룹 레슨 신청자격</div>
														<div class="txt2">솔루션 기간 동안 보듬교육에서 진행되는 다양한 주제의 그룹
															레슨 (분리불안, 산책예절, 어질리티 등)에 신청할 수 있습니다.</div>
													</div>
												</div>
											</div>
											<div class="col-33">
												<div class="only-benefit">
													<div class="benefit2">
														<div class="txt1">혜택 02</div>
														<div class="title">보듬훈련사와 개인 레슨 신청자격</div>
														<div class="txt2">내 반려견의 성향과 특성에 맞는 맞춤 교육을 보듬훈련사에게
															일대일로 받을 수 있습니다.</div>
													</div>
												</div>
											</div>

											<div class="col-33">
												<div class="only-benefit">
													<div class="benefit3">
														<div class="txt1">혜택 03</div>
														<div class="title">프라이빗 한 공간! 비공개 카페 초대</div>
														<div class="txt2">교육하며 생기는 궁금증에 관하여 보듬훈련사에게 자세한 피드백을
															받을 수 있도록 도와드리는 공간입니다.</div>
													</div>
												</div>
											</div>

										</div>
									</div>
									<a href="/bodeum/edu/edulist"
										class="roundBtn">교육신청</a>
								</div>
								<!-- #tab1 -->
								<div id="tab2" class="tab_content" style="display: none;">
									<div class="txt">보듬 교육에서 제공하는 모든 영상강의를 수강 기간 내에 시청 가능합니다.
										교육회원을 위한 비공개 카페 접근과 그룹 레슨, 개인 레슨 등의 오프라인 수업은 참여 불가합니다.</div>
									<a href="/bodeum/edu/edugroup"
										class="roundBtn">교육신청</a>
								</div>
								<!-- #tab2 -->
								<div id="tab3" class="tab_content" style="display: none;">
									<div class="txt">열한 개의 개별 토픽 중, 나와 내 반려견에게 필요한 토픽을 골라 15일
										동안 수강할 수 있습니다. 각 토픽 상세페이지에서 세부 정보를 확인해보세요. *반려견의 문제 행동은 유기적으로
										연결되어 있으므로 다수의 토픽을 수강하는 걸 추천해 드립니다.</div>
									<a href="/bodeum/edu/edusingle" class="roundBtn">교육신청</a>
								</div>
								<!-- #tab3 -->
							</div>
							<!-- .tab_container -->
							<script src="https://code.jquery.com/jquery-3.4.1.js"></script>
							<script>
								$(function() {

								
									$(".tab_content:fi rst").show();

									$("ul.tabs li").click(
											function() {
												$("ul.tabs li").removeClass(
														"active").css("color",
														"#777");
												//$(this).addClass("active").css({"color": "darkred","font-weight": "bolder"});
												$(this).addClass("active").css(
														"color", "#fff");
												$(".tab_content").hide()
												var activeTab = $(this).attr(
														"rel");
												$("#" + activeTab).fadeIn()
											});
								});
							</script>
						</div>
					</div>
				</div>
				<div class="inner-contents bg_gray edu-video4">
					<div class="section">
						<div class="edu-video-sample">
							<div class="page-sub-title">
								<strong>샘플영상</strong>
							</div>
							<div class="container">
								<div class="row">
									<div class="col-50">
										<div class="video-sample">
											<iframe src="https://player.vimeo.com/video/247775650"
												frameborder="0" webkitallowfullscreen=""
												mozallowfullscreen="" allowfullscreen=""></iframe>
										</div>
									</div>
									<div class="col-50">
										<div class="video-sample">
											<iframe src="https://player.vimeo.com/video/282989586"
												frameborder="0" webkitallowfullscreen=""
												mozallowfullscreen="" allowfullscreen=""></iframe>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
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