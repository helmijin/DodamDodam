<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>




<html>
<head>
<meta charset="utf-8">

<script type="text/javascript" src="../../../../resources/bodeum.co.kr/html/common/js/webslidemenu.js"></script>
<script type="text/javascript" src="../../../../resources/bodeum.co.kr/html/common/js/slider.js"></script>
<script type="text/javascript" src="../../../../resources/bodeum.co.kr/html/common/js/function.js"></script>
<script src="https://code.jquery.com/jquery-3.4.1.js"></script>

<link href="/resources/css/main.css" rel="stylesheet" type="text/css">
<link href="/resources/css/common.css" rel="stylesheet" type="text/css">
<link href="/resources/css/slick.css" rel="stylesheet" type="text/css">
<link href="/resources/css/slick-theme.css" rel="stylesheet" type="text/css">
<link href="/resources/css/slider.css" rel="stylesheet" type="text/css">
<link href="/resources/css/layout.css" rel="stylesheet" type="text/css">
<link href="/resources/css/reset.css" rel="stylesheet" type="text/css">


<title>회원가입</title>
</head>


<body>
<header>
				<%@include file="../includes/header2.jsp"%>
		</header>
	<div id="subwrapper">
		<div class="containerWrap">
			<div
				class="subBox whiteBox col-40 joinBox login-step2 login_input_step">
				<h2>회원정보입력</h2>
				<div class="container">
					<div class="row">

						<form action="/bodeum/edu/join" method="post" name="writeForm">
							<input type="hidden" name="gubun" id="gubun" value=""> 
							<input type="hidden" name="id_check" id="id_check"> 
							<!-- <input type="hidden" name="hidden_auth_number" id="hidden_auth_number" value=""> 
							<input type="hidden" name="hidden_auth_gubun" id="hidden_auth_gubun" value="w"> -->
							<input type="hidden" name="auth_check" id="auth_check">
							<div class="col-50 loginArea">
								<div class="loginBoxArea">
									<div class="userInfo">
									
									
										<h4>아이디</h4>
										<div class="loginInput">
											<input type="text" class="id" name="userid" id="userid" placeholder="영문(대문자 사용금지), 숫자포함 4-10자 이내" value="" onkeyup="hanChk();">
											<a href="javascript:idSearch1();" class="roundBtn whiteBtn">중복확인</a>
											
											<span id="id_chk"></span>
												<script>
											document.getElementById('id_check').value=1;
											</script>
											
											
										</div>
										<h4>비밀번호</h4>
										<div class="loginInput2 mb-10">
											<input type="password" class="user_pw" name="passwd" placeholder="4-10자의 영문, 특수문자, 숫자"> 
											<input type="password" class="user_pw" name="passwd_check" placeholder="비밀번호 확인">
										</div>
									</div>
									<div class="userInfo">
										<h4>이름</h4>
										<div class="name mb-13">
											<input type="text" class="fullInput" name="name" value="">
										</div>
										<h4>성별</h4>
										<div class="gender mb-13">
											<div class="radioArea">
												<input type="radio" name="gender" id="radioOne" value="M">
													<label for="radioOne" class="radio mr-20">남자</label> 
												<input type="radio" name="gender" id="radioTwo" value="F">
													<label for="radioTwo" class="radio mr-20">여자</label>
											</div>
										</div>
										<h4>생년월일</h4>
										<div class="birth mb-13">
											<div class="srchFilter">
												<select id="select" class="w160" name="b_year">
													<option value="">년도 선택</option>
													<option value="2023">2023</option>
													<option value="2022">2022</option>
													<option value="2021">2021</option>
													<option value="2020">2020</option>
													<option value="2019">2019</option>
													<option value="2018">2018</option>
													<option value="2017">2017</option>
													<option value="2016">2016</option>
													<option value="2015">2015</option>
													<option value="2014">2014</option>
													<option value="2013">2013</option>
													<option value="2012">2012</option>
													<option value="2011">2011</option>
													<option value="2010">2010</option>
													<option value="2009">2009</option>
													<option value="2008">2008</option>
													<option value="2007">2007</option>
													<option value="2006">2006</option>
													<option value="2005">2005</option>
													<option value="2004">2004</option>
													<option value="2003">2003</option>
													<option value="2002">2002</option>
													<option value="2001">2001</option>
													<option value="2000">2000</option>
													<option value="1999">1999</option>
													<option value="1998">1998</option>
													<option value="1997">1997</option>
													<option value="1996">1996</option>
													<option value="1995">1995</option>
													<option value="1994">1994</option>
													<option value="1993">1993</option>
													<option value="1992">1992</option>
													<option value="1991">1991</option>
													<option value="1990">1990</option>
													<option value="1989">1989</option>
													<option value="1988">1988</option>
													<option value="1987">1987</option>
													<option value="1986">1986</option>
													<option value="1985">1985</option>
													<option value="1984">1984</option>
													<option value="1983">1983</option>
													<option value="1982">1982</option>
													<option value="1981">1981</option>
													<option value="1980">1980</option>
													<option value="1979">1979</option>
													<option value="1978">1978</option>
													<option value="1977">1977</option>
													<option value="1976">1976</option>
													<option value="1975">1975</option>
													<option value="1974">1974</option>
													<option value="1973">1973</option>
													<option value="1972">1972</option>
													<option value="1971">1971</option>
													<option value="1970">1970</option>
													<option value="1969">1969</option>
													<option value="1968">1968</option>
													<option value="1967">1967</option>
													<option value="1966">1966</option>
													<option value="1965">1965</option>
													<option value="1964">1964</option>
													<option value="1963">1963</option>
													<option value="1962">1962</option>
													<option value="1961">1961</option>
													<option value="1960">1960</option>
													<option value="1959">1959</option>
													<option value="1958">1958</option>
													<option value="1957">1957</option>
													<option value="1956">1956</option>
													<option value="1955">1955</option>
													<option value="1954">1954</option>
													<option value="1953">1953</option>
													<option value="1952">1952</option>
													<option value="1951">1951</option>
													<option value="1950">1950</option>
													<option value="1949">1949</option>
													<option value="1948">1948</option>
													<option value="1947">1947</option>
													<option value="1946">1946</option>
													<option value="1945">1945</option>
													<option value="1944">1944</option>
													<option value="1943">1943</option>
													<option value="1942">1942</option>
													<option value="1941">1941</option>
													<option value="1940">1940</option>
													<option value="1939">1939</option>
													<option value="1938">1938</option>
													<option value="1937">1937</option>
													<option value="1936">1936</option>
													<option value="1935">1935</option>
													<option value="1934">1934</option>
													<option value="1933">1933</option>
													<option value="1932">1932</option>
													<option value="1931">1931</option>
													<option value="1930">1930</option>
												</select> 
												<select id="select1" class="w100" name="b_month">
													<option value="">월 선택</option>
													<option value="01">01월</option>
													<option value="02">02월</option>
													<option value="03">03월</option>
													<option value="04">04월</option>
													<option value="05">05월</option>
													<option value="06">06월</option>
													<option value="07">07월</option>
													<option value="08">08월</option>
													<option value="09">09월</option>
													<option value="10">10월</option>
													<option value="11">11월</option>
													<option value="12">12월</option>
												</select> 
												<select id="select2" class="w100" name="b_day">
													<option value="">일 선택</option>
													<option value="01">01일</option>
													<option value="02">02일</option>
													<option value="03">03일</option>
													<option value="04">04일</option>
													<option value="05">05일</option>
													<option value="06">06일</option>
													<option value="07">07일</option>
													<option value="08">08일</option>
													<option value="09">09일</option>
													<option value="10">10일</option>
													<option value="11">11일</option>
													<option value="12">12일</option>
													<option value="13">13일</option>
													<option value="14">14일</option>
													<option value="15">15일</option>
													<option value="16">16일</option>
													<option value="17">17일</option>
													<option value="18">18일</option>
													<option value="19">19일</option>
													<option value="20">20일</option>
													<option value="21">21일</option>
													<option value="22">22일</option>
													<option value="23">23일</option>
													<option value="24">24일</option>
													<option value="25">25일</option>
													<option value="26">26일</option>
													<option value="27">27일</option>
													<option value="28">28일</option>
													<option value="29">29일</option>
													<option value="30">30일</option>
													<option value="31">31일</option>
												</select>
											</div>
										</div>
										<div class="number">
											<h4>휴대폰</h4>
											<div class="srchFilter">
												<select id="hp1" class="w160 onlynum" name="ph1">
													<option value="">-</option>
													<option value="010">010</option>
													<option value="011">011</option>
													<option value="016">016</option>
													<option value="017">017</option>
													<option value="018">018</option>
													<option value="019">019</option>
												</select> <span>-</span> 
												<input type="text" class="phone onlynum" name="ph2" id="ph2" maxlength="4" placeholder=""> 
												<span>-</span>
												<input type="text" class="phone onlynum" name="ph3" id="ph3" maxlength="4" placeholder="">
												
											</div>
										</div>
									</div>
								</div>
							</div>

							<div class="col-50 agreeBoxArea">
							
								<div class="mail">
									<h4>이메일</h4>
									<div class="mb-10">
										<input type="text" class="mail1" name="email1" id="email1" placeholder="이메일 주소" value=""> 
											<span>@</span>
										<input type="text" class="mail2" name="email2" id="email2" placeholder="" value=""> 
										<select id="select4" class="w160" name="user_email3" onchange="selectEmail(this.value);">
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
								
									<div class="color-gray">※다음메일(한메일)과 지메일은 메일수신이 원활하지 않을 수
										있습니다.</div>
								</div>
								<!--//171110_추가-->

								<div class="memberBox">
									<div class="joinAgree">
										<p class="title">마케팅 정보 수신동의</p>
										<p class="txt">중요한 알림 및 각종 혜택 알림을 수신합니다. 주문내역 및 수업 관련사항은 수신동의와 관련없이 보내드립니다.</p>
										<div class="checkArea mb-10">
											<input type="checkbox" name="sms" id="check1" value="1">
											<label for="check1" class="check">SMS 서비스동의(필수)</label>
										</div>
										<div class="checkArea">
											<input type="checkbox" name="mailing" id="check2" value="1">
											<label for="check2" class="check">메일 수신 동의(필수)</label>
										</div>
									</div>

									<div class="joinAgree">
										<p class="title">약관동의</p>
										<!-- 170725 디트리 링크수정 -->
										<div class="checkArea mb-10">
											<input type="checkbox" name="agree1" id="check3" value="1">
												<label for="check3" class="check">
													<a href="../content/check_agreement.php" target="_blank">이용약관</a>
														동의<span>(필수)</span>
												</label>
										</div>
										<div class="checkArea mb-10">
											<input type="checkbox" name="agree2" id="check4" value="1">
												<label for="check4" class="check">
													<a href="../content/check_privacy.php" target="_blank">개인정보취급방침</a>
														동의<span>(필수)</span>
												</label>
										</div>
										<div class="checkArea">
											<input type="checkbox" name="agree3" id="check5" value="1">
												<label for="check5" class="check">
													<a href="../content/check_agreement2.php" target="_blank">미성년자
														이용계약</a>의 특칙<span>(필수)</span>
												</label>
										</div>
									</div>
									<p class="btnarea">
										<button type="submit" class="roundBtn blueBtn"
											onclick="joinSendit();return false;">다음</button>
									</p>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
<footer>
			<%@include file="../includes/footer.jsp"%>
		</footer>

</body>

									


</html>
