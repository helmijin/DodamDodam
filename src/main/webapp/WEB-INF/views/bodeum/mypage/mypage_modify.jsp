<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
		<link rel="stylesheet" type="text/css" href="../../../../resources/css/common.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slider.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/main.css" />
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slick.css">
	<link rel="stylesheet" type="text/css" href="../../../../resources/css/slick-theme.css">
</head>
<body>
<%@ include file="../includes/header1.jsp" %>

		<div id="wrapper">
			<div class="containerWrap mypage-all-wrap">
				
				<div class="content">
					<div class="inner-contents">
						<div class="mypage-section">
							<%@ include file="../includes/leftblock.jsp" %>

							<div class="rightBlock">
								<div class="moidify">
									<form action="/bodeum/mypage/mypage_modify" method="post" name="writeForm" id="writeForm">
									<!-- <input type="hidden" name="hidden_idx" value="89651">
									<input type="hidden" name="login_go" value="/html/common_ui/mypage/profile-modify.php">
									<input type="hidden" name="hidden_auth_number" id="hidden_auth_number" value="268651">
									<input type="hidden" name="hidden_auth_gubun" id="hidden_auth_gubun" value="m">
									<input type="hidden" name="auth_check" id="auth_check"> -->
									<div class="mypage-modifyWrap">
										<div class="lesson-title">
											<h2>내 정보</h2>
										</div>
										<div class="loginArea">
											<div class="loginBoxArea">
												<div class="userInfo">
													<h4>이름</h4>
													<div class="loginInput mb-20">
														<div class="fullInput disable">${member.name }</div>
													</div>

													<h4>아이디</h4>
													<div class="loginInput mb-20">
														<div class="fullInput disable">${member.userid }</div>
													</div>
													<h4>비밀번호</h4>
													<div class="loginInput2 mb-20">
														<input id="passwd" type="password" class="user_pw fullInput mb-5" name="passwd" placeholder="4-10자의 영문, 특수문자, 숫자">
														<!-- <input type="password" class="user_pw fullInput" name="pw_check" placeholder="비밀번호 확인"> -->
													</div>
													<h4>성별</h4>
													<div class="gender mb-20">
														<div class="radioArea">
															<c:if test="${member.gender eq 'M'}">
																<input type="radio" id="radioOne" name="gender" value="M" checked>
																<label for="radioOne" class="radio mr-20">남자</label>
																<input type="radio" id="radioTwo" name="gender" value="Fe" >
																<label for="radioTwo" class="radio mr-20">여자</label>
															</c:if>
															<c:if test="${member.gender eq 'Fe'}">
																<input type="radio" id="radioOne" name="gender" value="M">
																<label for="radioOne" class="radio mr-20">남자</label>
																<input type="radio" id="radioTwo" name="gender" value="Fe" checked>
																<label for="radioTwo" class="radio mr-20">여자</label>
															</c:if>
														</div>
													</div>
													<h4>생년월일</h4>
													<div class="birth mb-20">
														<div class="srchFilter">
												<select id="select" class="w160" name="b_year">
													<option value="${member.b_year }" selected>${member.b_year }</option>
													<c:forEach var="i" begin="1910" end="2023">
														<option value="${i}">${i}</option>
													</c:forEach>
												</select> 
												<select id="select1" class="w100" name="b_month">
													<option value="${member.b_month}" selected>${member.b_month }</option>
													<c:forEach var="i" begin="1" end="12">
														 <c:choose>
														      <c:when test="${i lt 10 }">
														          <option value="0${i}">0${i}</option>
														      </c:when>
														      <c:otherwise>
														          <option value="${i}">${i}</option>
														      </c:otherwise>
														  </c:choose>
													</c:forEach>  		
												</select> 
												<select id="select2" class="w100" name="b_day">
													<option value="${member.b_day}" selected>${member.b_day }</option>
													<c:forEach var="i" begin="1" end="31">
														<c:choose>
															<c:when test="${i lt 10 }">
																<option value="0${i}">0${i}</option>
															</c:when>
															<c:otherwise>
																<option value="${i}">${i}</option>
															</c:otherwise>
														</c:choose>
													</c:forEach>
												</select>
											</div>
													</div>

													<!--171110_추가-->
													<!-- <h4>인증수단 선택</h4>
													<div class="radioArea mb-10">
														<input type="radio" name="certificationSelect" id="radio3" checked onClick="certiSelect(1);"> 
														<label for="radio3" class="radio mr-20">휴대폰인증</label>
														<input type="radio" name="certificationSelect" id="radio4" onClick="certiSelect(2);"> 
														<label for="radio4" class="radio mr-20">이메일인증</label>
													</div> -->
													<h4>휴대폰</h4>
													<div class="number mb-20">
														<div class="srchFilter">
															<select class="w160" name="ph1" id="ph1">
																<option value="010" selected>010</option>
																<option value="011" >011</option>
																<option value="016" >016</option>
																<option value="017" >017</option>
																<option value="018" >018</option>
																<option value="019" >019</option>
															</select>
															<span>-</span>
															<input type="text" class="phone onlynum" name="ph2" id="ph2" maxlength="4" placeholder="" value="${member.ph2 }">
															<span>-</span>
															<input type="text" class="phone onlynum" name="ph3" id="ph3" maxlength="4" placeholder="" value="${member.ph3 }">
															<!-- <a href="javascript:authNumberSend();" class="roundBtn whiteBtn">인증번호 전송</a> -->
														</div>
														<!-- <div class="certification">
															<input type="text" class="fullInput" name="auth_number" id="auth_number" placeholder="">
															<a href="javascript:authNumberCheck();" class="roundBtn whiteBtn">인증번호 확인</a>
															<div id="authSend"></div>
														</div> -->
													</div>
													
													<div class="mail">
													<h4>이메일</h4>
														<div>
															<input type="text" class="mail1" name="email1" id="email1" value="${member.email1 }" placeholder="이메일 주소">
															<span>@</span>
															<input type="text" class="mail2" name="email2" id="email2" value="${member.email2 }" placeholder="">
														</div>
														<div class="srchFilter">
															<select class="w160" name="user_email3" onchange="selectEmail(this.value);">
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
															<!-- <a href="javascript:authNumberSend2();" class="roundBtn whiteBtn">인증번호 전송</a> -->
														</div>
														<!-- <div class="certification">
															<input type="text" class="fullInput" name="auth_number2" id="auth_number2" placeholder="">
															<a href="javascript:authNumberCheck2();" class="roundBtn whiteBtn">인증번호 확인</a>
														</div> -->
														<div class="color-gray">※다음메일(한메일)과 지메일은 메일수신이 원활하지 않을 수 있습니다.</div>
													</div>
												
													<!--//171110_추가-->

												</div>
											</div>
										</div>
										<div class="agreeBoxArea">
											<div class="userInfo pb-20">
												<!-- <h4>주소</h4>
												<div class="address"> -->
													<!-- <div class="addressSrch mb-5">
														<input type="text" class="fullInput" value="" name="postcode" id="postcode" placeholder="">
														<a href="javascript:execDaumPostcode();" class="roundBtn whiteBtn">우편번호 찾기</a>
													</div>
													<input type="text" class="fullInput mb-5" value="" name="addr1" id="addr1"/>
													<input type="text" class="fullInput" value="" name="addr2" id="addr2" /> -->
												</div>
											</div>
											
												<div class="uploadArea no-border">
													<h4>프로필 사진</h4>
													<div class="upload">
														<div class="upload-thumb">
															<span>
																<div class="ratio5 thumbnail-wrapper">
																	<div class="thumbnail">
																		<div class="centered">
																			<img src="/html/common/img/no-image-thumb.jpg" id="profileImg" width="122" height="122" class="landscape">																		</div>
																	</div> 
																</div>

																
															</span>
														</div>
														<a href="#" onClick="$('#profileImages').click();$('#noFile').html('');">파일 첨부</a><span id="noFile">첨부된 파일이 없습니다.</span>
														<!--  <input type="file" name="profile_images" id="profileImages" style="display:none"> -->
													</div>
													<div class="txt"><span class="blue">* 가로 200px*세로200px</span> 이상의 사진을 찍어 업로드 해주세요.</div>
												</div>
											<div class="joinAgree">
												<p class="title">마케팅 정보 수신동의</p>
													<p class="txt">중요한 알림 및 각종 혜택 알림을 수신합니다.
													주문내역 관련사항은 수신동의와 관련없이 보내드립니다. </p>
													<div class="checkArea mb-10">
														<c:choose>
															<c:when test="${member.sms eq 'Y' }">
																<input type="checkbox" id="check1" name="sms" value="Y" checked>
																<label for="check1" class="check">SMS 서비스동의(선택)</label>															
															</c:when>
															<c:otherwise>
																<input type="checkbox" id="check1" name="sms" value="Y">
																<label for="check1" class="check">SMS 서비스동의(선택)</label>															
															</c:otherwise>
														</c:choose>
													</div>
													<div class="checkArea">
														<c:choose>
															<c:when test="${member.mailing eq 'Y' }">
																<input type="checkbox" id="check2" name="mailing" value="Y" checked>
																<label for="check2" class="check">메일 수신 동의(선택)</label>															
															</c:when>
															<c:otherwise>
																<input type="checkbox" id="check2" name="mailing" value="Y">
																<label for="check2" class="check">메일 수신 동의(선택)</label>
															</c:otherwise>															
														</c:choose>
													</div>
												</div>
										</div>
										<div class="btn">
											<!-- <input type="submit" value="저장하기"> -->
											<a href="#" class="roundBtn blueBtn" onclick="return chk_form()">등록하기</a>
											<a href="#" class="roundBtn whiteBtn" onclick = "go_home();">취소하기</a>
											<a href="joinOut.php" class="joinOutBtn">회원 탈퇴신청</a>
										</div>
									</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
<%@ include file="../includes/footer.jsp" %>
</body>
<script>
	function go_home(){
		self.location = "/bodeum/mypage/main";
	}
	function chk_form() {
	if(document.getElementById("passwd").value.length==0){
		alert("비밀번호를 입력해 주십시오.");
		return false;
	}
	if(document.getElementById("ph2").value.length==0){
		alert("휴대폰 번호를 확인해 주십시오.");
		return false;
	}
	if(document.getElementById("ph3").value.length==0){
		alert("휴대폰 번호를 확인해 주십시오.");
		return false;
	}
	if(document.getElementById("email1").value.length==0){
		alert("이메일을 확인해 주십시오.");
		return false;
	}
	if(document.getElementById("email2").value.length==0){
		alert("이메일을 확인해 주십시오.");
		return false;
	}
	alert("회원정보 수정이 완료되었습니다.")
	document.getElementById('writeForm').submit();
	}
</script>
</html>