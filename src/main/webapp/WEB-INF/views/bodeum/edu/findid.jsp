<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>




<html>
<head>
<meta charset="utf-8">


<script type="text/javascript" src="../../../resources/js/function.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<link href="/resources/css/main.css" rel="stylesheet" type="text/css">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/slick.css" rel="stylesheet" type="text/css">
<link href="/resources/css/slick-theme.css" rel="stylesheet" type="text/css">
<link href="/resources/css/slider.css" rel="stylesheet" type="text/css">
<link href="/resources/css/layout.css" rel="stylesheet" type="text/css">
<link href="/resources/css/reset.css" rel="stylesheet" type="text/css">


<title>아이디찾기</title>
</head>
<body>

<header>
				<%@include file="../includes/header2.jsp"%>
		</header>
<div id="subwrapper">
			<div class="containerWrap">
				<div class="subBox whiteBox col-40 joinBox findPwBox login-step2">
					<h3>아이디 찾기</h3>
					<div id="divTab" class="mb-10">
						<ul class="m-tabs">
							<li class="active" rel="tab1">이메일로 찾기</li>
							<li rel="tab2">휴대전화번호로 찾기</li>
						</ul>
					</div>
					<!-- tab 1 -->
					<form name="search_id_form">
					<div id="tab1" class="tab_content" style="display: block;">
						<div class="loginArea">
							<div class="loginBoxArea">
								<div class="userInfo">
									<h4>이름</h4>
									<div class="name mb-13">
										<input type="text" class="fullInput" name="name" id="id_name">
									</div>
									<h4>이메일</h4>
									<div class="mail">
										<div class="mb-10">
											<input type="text" class="mail1" name="email1" id="id_email1" placeholder="이메일 주소">
											<span>@</span>
											<input type="text" class="mail2" name="email2" id="id_email2" placeholder="">
										</div>
										<div class="srchFilter">
											<select id="select4" class="w160" name="user_email3" onchange="selectEmail2(this.value);">
											  <option value="b" selected="selected">직접입력</option>
											  <option value="empal.com">empal.com</option>
											  <option value="naver.com">naver.com</option>
											  <option value="hotmail.com">hotmail.com</option>
											  <option value="nate.com">nate.com</option>
											  <option value="dreamwiz.com">dreamwiz.com</option>
											  <option value="lycos.co.kr">lycos.co.kr</option>
											  <option value="yahoo.co.kr">yahoo.co.kr</option>
											  <option value="korea.com">korea.com</option>
											  <option value="paran.com">paran.com</option>
											</select>
										</div>
									</div>
								</div>
							</div>
							<p class="btnarea">
									<button type="submit" class="roundBtn blueBtn" onclick="id_search1();">아이디 찾기</button>
						
								</p>
							
							
						
						</div>
						
						
					</div>
					</form>
					<!-- //tab 1 -->
				
					<!-- tab 2 -->
					<form name="search_id_form2">
					<div id="tab2" class="tab_content" style="display: none;">
						<div class="loginArea">
							<div class="loginBoxArea">
								<div class="userInfo">
									<h4>이름</h4>
									<div class="name mb-13">
										<input type="text" class="fullInput" name="name" id="name">
									</div>
									<h4>전화번호</h4>
									<div class="number mb-13">
										<div class="srchFilter">
											<select class="w160" name="ph1" id="ph1">
											<option value="010">010</option>
											<option value="011">011</option>
											<option value="016">016</option>
											<option value="017">017</option>
											<option value="018">018</option>
											<option value="019">019</option>
											</select>
											<span>-</span>
											<input type="text" class="phone" name="ph2" id="ph2">
											<span>-</span>
											<input type="text" class="phone" name="ph3" id="ph3">
										</div>
									</div>
								</div>
							</div>
							<p class="btnarea">
									<button type="submit" class="roundBtn blueBtn" onclick="id_search2();">아이디 찾기</button>
								</p>
								
							
						</div>
					</div>
					</form>

					<!-- //tab 2 -->
					<script type="text/javascript">
					/* tabs */
						$(".tab_content").hide();
						$(".tab_content:first").show();

						$("ul.m-tabs li").click(function () {
							$("ul.m-tabs li").removeClass("active");
							$(this).addClass("active");
							$(".tab_content").hide()
							var activeTab = $(this).attr("rel");
							$("#" + activeTab).show()
						});
					</script>
				</div>
			</div>
		</div>
<footer>
			<%@include file="../includes/footer.jsp"%>
		</footer>
</body>

									


</html>
