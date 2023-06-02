<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/common.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slider.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/main.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slick.css">
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slick-theme.css">
	<title>Home</title>
</head>
<body>
<%@ include file="../includes/header1.jsp" %>
		<div id="wrapper">
			<div class="containerWrap mypage-all-wrap">
				
				<div class="content">
					<div class="inner-contents">
						<div class="mypage-section">
							<div class="mypage_index">
								<div class="container">
									<div class="row">
										<div class="col-50">
											<div class="mp_box1">
												<div class="user-thumb"><img src="../../../../resources/img/yes.jpg"></div>
												<div class="user-info">
													<div class="name"><span>
														${member.name }</span>님</div>
													<div class="id">(${member.userid })</div>
												</div>
												<div class="infobtn">
													<a href="#" onclick = "go_mypage_modify();">내 정보 관리</a>
													<a href="#" onclick = "go_pet_register();">반려견 정보 관리</a>
												</div>
											</div>
										</div>
										<div class="col-50">
											<div class="container">
												<div class="row">
													<div class="col-50">
														<div class="mp_box2" onclick="go_point()">
															<div class="img">
																<img src="../../../../resources/img/mp_index_icon1.png">
															</div>
															<div class="txt">
																<strong>적립금</strong>
																<div>${member.point }</div>
															</div>
														</div>
													</div>
													<div class="col-50">
														<div class="mp_box2" onclick="go_coupon();">
															<div class="img">
																<img src="../../../../resources/img/mp_index_icon2.png">
															</div>
															<div class="txt">
																<strong>보유쿠폰</strong>
																<div>0</div>
															</div>
														</div>
													</div>
													<div class="col-50">
														<div class="mp_box2 mp_box2-1" onclick="go_orderlist();">
															<div class="img">
																<img src="../../../../resources/img/mp_index_icon3.png">
															</div>
															<div class="txt">
																<strong>주문조회</strong>
															</div>
														</div>
													</div>
													<div class="col-50">
														<div class="mp_box2 mp_box2-1" onclick="go_myinq();">
															<div class="img">
																<img src="../../../../resources/img/mp_index_icon4.png">
															</div>
															<div class="txt">
																<strong>1:1문의</strong>
															</div>
														</div>
														
													</div>
												</div>
											</div>
										</div>
									</div>
																		<div class="row">
										<div class="col-50">
											<div class="mp_box3" onclick="go_mylesson();">
												<h4><a href="#">내 강의
													<i class="fa fa-angle-right" aria-hidden="true"></i>
													<!--171106_추가-->
													<div>
														<span>수강중 <strong>0</strong></span>
														<span>정지중 <strong>0</strong></span>													</div>
													<!--//171106_추가-->
													</a>
												</h4>
																								
												<ul>
																										<!--171106_추가-->
													<!-- 수강중인 영상 교육이 없을때 -->
																										<li class="no-data">
														<div class="text">수강중인 영상 교육이 없습니다.</div>
														<a href="#" class="roundBtn" onclick = "go_mylesson();">내 강의실 가기</a>
													</li>
																										<!--//171106_추가-->
												</ul>
											</div>
										</div>
										<div class="col-50">
											<div class="mp_box4" onclick="go_lessonstatus();">
												<h4><a href="#">레슨현황<i class="fa fa-angle-right" aria-hidden="true"></i></a></h4>
												
																								
												<ul>
													<li>
														<div>승인</div>
														<strong>0</strong>
													</li>
													<li>
														<div>불허</div>
														<strong>0</strong>
													</li>
													<li>
														<div>마감</div>
														<strong>0</strong>
													</li>
													<li>
														<div>대기</div>
														<strong>0</strong>
													</li>
												</ul>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<script type="text/javascript">
	function go_home(){
		self.location = "/bodeum/mypage/main";
	}
	function go_point(){
		self.location = "/bodeum/mypage/point";
	}
	function go_coupon(){
		self.location = "/bodeum/mypage/coupon";
	}	
	function go_orderlist(){
		self.location = "/bodeum/mypage/orderlist";
	}
	function go_myinq(){
		self.location = "/bodeum/mypage/myinq";
	}
	function go_mypage_modify(){
		self.location = "/bodeum/mypage/mypage_modify";
	}
	function go_mylesson(){
		self.location = "/bodeum/mypage/mylesson"
	}
	function go_lessonstatus(){
		self.location = "/bodeum/mypage/lessonstatus"
	}
	function go_pet_register(){
		self.location = "/bodeum/mypage/pet_register"
	}
</script>
<%@ include file="../includes/footer.jsp" %>
</body>
</html>
