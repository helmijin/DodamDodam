<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="../../../resources/dist/css/font-awesome.css">
</head>
<body>
<div class="leftBlock">
								<div class="user-thumb">
									<div class="ratio4 thumbnail-wrapper">
										<div class="thumbnail">
											<div class="centered">
											 <img src="../resources/dist/img/yes.jpg"class="landscape">								</div>
										</div> 
									</div>
								</div>
								<div class="user-info">
									<div class="name"><span>${member.name }</span>님</div>
									<div class="id">(${member.userid })</div>
									<div class="infobtn">
										<a href="#" onclick="go_mypage_modify();">내 정보</a>
										<a href="#" onclick="go_dog_modify();">반려견 정보</a>
									</div>
								</div>
								<div class="menu-link">
									<ul>
										<li ><a href="#" onclick ="go_orderlist();"><i class="fa fa-shopping-cart" aria-hidden="true"></i>주문조회</a></li>
										<!--<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true"></i>과거내역보기</a></li>-->
										<li ><a href="#" onclick ="go_coupon();"><i class="fa fa-tag" aria-hidden="true"></i>쿠폰</a></li>
										<li ><a href="#" onclick ="go_point();"><i class="fa fa-database" aria-hidden="true"></i>적립금</a></li>
									</ul>
								</div>
								<div class="menu-link">
									<ul>
										<li ><a href="#" onclick ="go_mylesson();"><i class="fa fa-play" aria-hidden="true"></i>내 강의</a></li>
										<li ><a href="#" onclick ="go_lessonstatus();"><i class="fa fa-group" aria-hidden="true"></i>레슨현황</a></li>
									</ul>
								</div>
								<div class="menu-link">
									<ul>
										<li ><a href="#" onclick="go_myinq();"><i class="fa fa-comments" aria-hidden="true"></i>1:1문의</a></li>
										<li><a href="#" onclick="go_reviewlist();"><i class="fa fa-commenting" aria-hidden="true"></i>후기관리</a></li>
									</ul>
								</div>
							</div>
</body>
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
	function go_reviewlist(){
		self.location = "/bodeum/mypage/reviewlist"
	}
</script>
</html>