<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




<html>
<head>
<meta charset="utf-8">

<script type="text/javascript"
	src="../../../resources/js/webslidemenu.js"></script>
<script type="text/javascript" src="../../../resources/js/slider.js"></script>
<script type="text/javascript" src="../../../resources/js/function.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<link href="/resources/css/main.css" rel="stylesheet" type="text/css">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/slick.css" rel="stylesheet" type="text/css">
<link href="/resources/css/slick-theme.css" rel="stylesheet"
	type="text/css">
<link href="/resources/css/slider.css" rel="stylesheet" type="text/css">
<link href="/resources/css/layout.css" rel="stylesheet" type="text/css">
<link href="/resources/css/reset.css" rel="stylesheet" type="text/css">
<link href="/resources/fonts-awesome/fonts-awesome.css" rel="stylesheet" type="text/css">


<title>로그인</title>
</head>


<body>
<header>
				<%@include file="../includes/header2.jsp"%>
		</header>
	<div id="subwrapper">
		<div class="containerWrap">
			<div class="subBox whiteBox col-40 login-step2 loginBoxWRap">
				<div class="container">
					<div class="row">
						<div class="col-50 loginArea">
							<div class="loginBoxArea">
								<div class="loginBtn2">

									<a href="javascript:loginNaver();" class="naverBtn"><img
										src="../../common/img/icon_naver.png">네이버 아이디로 로그인</a>
									<script>
										function loginNaver() {
											var win = window
													.open(
															'https://nid.naver.com/oauth2.0/authorize?client_id=qtAYkzpHd8HcR2rrLSR2&response_type=code&redirect_uri=https%3A%2F%2Fwww.bodeum.co.kr%2Fhtml%2Fcommon_ui%2Fmember%2Flogin_naver.php&state=d9474f40bcecf46a06ad669459874cba',
															'네이버 아이디로 로그인',
															'width=320, height=480, toolbar=no, location=no');

											//				var timer = setInterval(function() {
											//					if(win.closed) {
											//						window.location.reload();
											//						clearInterval(timer);
											//					}
											//				}, 500);
										}
									</script>
									<!-- <a href="#" class="naverBtn"><img src="../../common/img/icon_naver.png">네이버 아이디로 로그인</a> -->
									<a href="javascript:facebooklogin();" class="facebookBtn"><img
										src="../../common/img/icon_facebook.png">페이스북 아이디로 로그인</a> <a
										href="javascript:loginKakao();" class="kakaoBtn"><img
										src="../../common/img/icon_kakao.png">카카오 아이디로 로그인</a>
									<script>
										function loginKakao() {
											var win = window
													.open(
															'https://kauth.kakao.com/oauth/authorize?client_id=4d7977bbb8b48e29431a6d917b11251c&redirect_uri=https%3A%2F%2Fbodeum.co.kr%2Fhtml%2Fcommon_ui%2Fmember%2Flogin_kakao.php&response_type=code&scope=account_email',
															'카카오 계정으로 로그인',
															'width=320, height=480, toolbar=no, location=no');

											var timer = setInterval(function() {
												if (win.closed) {
													window.location.reload();
													clearInterval(timer);
												}
											}, 500);
										}
									</script>
									<!-- <a href="#" class="kakaoBtn"><img src="../../common/img/icon_kakao.png">카카오톡 아이디로 로그인</a> -->
								</div>
								<div class="memberBox">
									<form action="login" name="writeForm" method="post">
										<input type="hidden" name="login" value="1">
										<input type="hidden" name="login_go" value="">
										<div class="loginInput mb-10">
											<input type="text" class="user_id userid" name="uid"
												id="userid" placeholder="아이디" value="" onkeyup="hanChk();";="">
											<input type="password" class="user_pw passwd" name="passwd"
												id="passwd" placeholder="비밀번호">
										</div>
										<div class="checkArea">
											<input type="checkbox" name="idSaveCheck" id="idSaveCheck"
												value="1"> 
											<label for="idSaveCheck" class="check mr-20">아이디 저장</label> 
											<input type="checkbox" name="auto_login" id="autoLogin" value="1"> 
											<label for="autoLogin" class="check">자동 로그인</label>
										</div>
										<p class="btnarea">
											<button type="submit" class="roundBtn blueBtn"
												onclick="loginSend();return false;">로그인</button>
										</p>
									</form>
								</div>
							</div>
						</div>

						<div class="col-50 registerBox">
							<div class="memberBox">
								<div class="noMember">
									<h4>아직 보듬 회원이 아니신가요?</h4>
									<p>보듬 회원이 되시면 보듬의 다양한 교육에 참여하실 수 있습니다.</p>
									<div onclick="join()"><a class="roundBtn blueBtn">회원가입</a></div>
								</div>

								<div class="forgot">
									<h4>로그인 정보가 생각나지 않으세요?</h4>
									<p>아이디 또는 비밀번호를 찾으실 수있습니다.</p>
									<a href="findId.php" class="roundBtn whiteBtn">아이디 찾기</a><a
										href="findPw.php" class="roundBtn whiteBtn">비밀번호 찾기</a>
								</div>

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

function join(){
	self.location="/bodeum/edu/join";
}
</script>


</html>
