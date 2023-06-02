<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript">
function chk_form() {
if(document.getElementById("pet_name").value.length==0){
	alert("반려견 이름을 입력해 주십시오.");
	return false;
}
if(document.getElementById("pet_b_year").value==""){
	alert("반려견 생일을 입력해 주십시오.");
	return false;
}
if(document.getElementById("pet_b_month").value==""){
	alert("반려견 생일을 입력해 주십시오.");
	return false;
}
if(document.getElementById("pet_b_day").value==""){
	alert("반려견 생일을 입력해 주십시오.");
	return false;
}
alert("반려견 등록이 완료되었습니다.")
document.getElementById('dog_add').submit();
}
$(document).ready(function(){
	 
    // 라디오버튼 클릭시 이벤트 발생
    $("input:radio[name=neutralization]").click(function(){
 
        if($("input[name=neutralization]:checked").val() == "1"){
            $("input:text[name=surgery_date]").attr("disabled",false);
            // radio 버튼의 value 값이 1이라면 활성화
 
        }else if($("input[name=neutralization]:checked").val() == "2"){
              $("input:text[name=surgery_date]").attr("disabled",true);
            // radio 버튼의 value 값이 2라면 비활성화
        }
    });
});

</script> 
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
									<div class="lesson-title">
										<h2>반려견 추가하기</h2>
									</div>
									<div class="add-dogInfo">
										<!-- <!-- <ul>
																						<li><a href="#">다롱이</a></li>
										</ul>
										<a href="dog_add.php" class="addDog">+ 반려견 추가하기</a> --> -->
									</div>
									<div class="mypage-modifyWrap">
											<form action="/bodeum/mypage/pet_register" method="post" name="writeForm" id ="dog_add">
											<div class="loginArea">
												<div class="loginBoxArea">
													<div class="userInfo no-border">
														<h4>반려견 이름</h4>
														<div class="loginInput mb-20">
															<input type="text" class="fullInput" name="pet_name" id="pet_name">
														</div>
														<h4>반려견 생일</h4>
														<div class="loginInput mb-20">
															<div class="srchFilter">
																<select class="w160" name="pet_b_year" id="pet_b_year">
																  <option value="">년도 선택</option>
																  	<c:forEach var="i" begin="1995" end="2023">
																		<option value="${i}">${i}</option>
																	</c:forEach>
																</select>
																<select class="w100" name="pet_b_month" id="pet_b_month">
																  <option value="">월 선택</option>
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
																<select class="w100" name="pet_b_day" id="pet_b_day">
																  <option value="">일 선택</option>
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
														<h4>성별</h4>
														<div class="gender mb-20">
															<div class="radioArea">
																<input type="radio" name="pet_gender" id="radioOne" value="M"> 
																<label for="radioOne" class="radio mr-20">남아</label>
																<input type="radio" name="pet_gender" id="radioTwo" value="Fe"> 
																<label for="radioTwo" class="radio mr-20">여아</label>
															</div>
														</div>
														<h4>견종</h4>
														<div class="loginInput mb-20">
															<input type="text" class="fullInput" name="pet_kind">
														</div>
														<h4>몸무게</h4>
														<div class="loginInput mb-20">
															<input type="text" class="fullInput" name="pet_weight">
														</div>
													</div>
													<div class="userInfo no-border" >
														<div class="operation">
															<h4>중성화 수술여부</h4>
															<div class="gender">
																<div class="radioArea2">
																	<input type="radio" name="neutralization" id="radioThree" value="1"> 
																	<label for="radioThree" class="radio mr-20">했음</label>
																	<input type="text" class="smallInput" name="surgery_date" placeholder="수술날짜" disabled>
																</div>
																<div class="radioArea2">
																	<input type="radio" name="neutralization" id="radioFour" value="2"> 
																	<label for="radioFour" class="radio mr-20">안했음</label>
																</div>
															</div>
														</div>
													</div>
												</div>
											</div>
											<div class="agreeBoxArea">
												<!-- <div class="uploadArea pt-20">
													<h4>항체 검사 결과서</h4>
													<div class="upload mb-20">
														<div class="input" id="report_file_name"></div>
														<a href="#" onClick="$('#report_file').click();$('#report_file_name').html($('#report_file').val());">파일 첨부</a>
														<input type="file" name="report_file" id="report_file" style="display:none"> 
													</div>

													<h4>반려견 사진</h4>
													<div class="upload">
														<div class="upload-thumb"><span><img src="/html/common/img/pet_img.png" id="petImg" width="122" height="122"></span></div>
														<a href="#" onClick="$('#petImages').click();$('#noFile').html('');">파일 첨부</a><span id="noFile">첨부된 파일이 없습니다.</span>
														 <input type="file" name="pet_images" id="petImages" style="display:none">
													</div>
													<div class="txt"><span class="blue">* 가로 200px*세로200px</span> 이상의 반려견 사진을 찍어 업로드 해주세요.
													* 오프라인 교육 참가 전까지 필수로 업로드 해 주셔야 합니다
													* 반려견 추가는 가입 후 회원정보 수정화면에서 하실 수 있습니다.</div>
												</div> -->
											</div>
											<div class="btn">
												<!-- <input type="submit" value="등록하기" onclick="return chk_form()">
												<input type="button" onclick = "chk_form();" value="등록하기">
												<a type="submit" onclick = "chk_form();"  class="roundBtn whiteBtn">등록하기</a> --> -->
												<a href="#" class="roundBtn blueBtn" onclick="return chk_form()">등록하기</a>
												<a href="javascript:history.go(-1);" class="roundBtn whiteBtn">취소하기</a>
											</div>
											</form>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<%@ include file="../includes/footer.jsp" %>
</body>	
</html>