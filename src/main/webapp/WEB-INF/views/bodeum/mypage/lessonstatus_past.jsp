<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
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
								<div class="lessonStatusList">
									<div class="lesson-title">
										<h2>레슨현황</h2>
									</div>
									<div id="divTab">
									    <ul class="m-tabs">
										  <li rel="tab1" onClick="go_lessonstatus();">다가오는 레슨</li>
										  <li class="active" rel="tab2" onClick="go_lessonstatus_past();">지난 레슨</li>
									    </ul>
									</div>
									<select id="all" class="w145 mt-20 mb-20" name="SearchApproval" onChange="location.href='?SearchApproval='+this.value">
										<option value="">전체</option>
										<option value="0" >승인대기</option>
										<option value="1" >대기</option>
										<option value="2" >승인</option>
										<option value="3" >마감</option>
										<option value="4" >취소</option>
									</select>
									<table>
										<tbody>
																																	<tr class="no-data">
												<td colspan="3">
													<img src="../resources/dist/img/no_data_img.png">
													<p class="txt">검색결과가 없습니다.</p>
													<div class="btn">
														<a href="/html/edu_movie/teach/edu_request_list.php" class="whiteBtn">영상교육 둘러보기</a>
													</div>
												</td>
											</tr>
																					</tbody>
									</table>

									
																	</div>
								<div class="lesson-bottom">
									<div class="lesson-box">
										<h4>오프라인 교육 신청</h4>
										<div class="txt">솔루션(풀패키지) 회원을 위한 오프라인 교육 입니다. 
										솔루션(풀패키지) 기간 동안 보듬에서 운영하는 여러가지 레슨을 신청하실 수 있습니다.</div>
										<div class="btn">
											<a href="../../edu_movie/teach/groupLesson.php">그룹 레슨 신청</a>
											<a href="../../edu_movie/teach/personalLesson.php">개인 레슨 신청</a>
											<a href="../../edu_movie/teach/seminar.php">비회원 수업 신청</a>
										</div>
									</div>
									<div class="lesson-box">
										<h4>보듬 회원 카페</h4>
										<div class="txt">솔루션(풀패키지) 회원님을 위한 공간입니다. 
										교육하며 생기는 궁금증에 관하여 보듬 훈련사에게 자세한 피드백을 받을 수 있습니다. 
										또한 같은 지역 내의 보듬 멤버와 소통하고 산책 모임을 하며 더 좋은 교육 효과를 보실 수 있도록 도와드립니다.</div>
										<div class="btn">
											<a href="http://cafe.naver.com/bodeumedu" target="_blank"><img src="../../common/img/cafe-icon.png">보듬 회원 카페 바로가기</a>
										</div>
									</div>
									<div class="lesson-box">
										<h4>솔루션(풀패키지) 중요 안내사항</h4>
										<div class="txt">솔루션(풀패키지) 환불 약관 "제13조 4항"을 확인해 주시기 바랍니다.<br>
										<span>가입일로 부터 3개월이내 환불 가능합니다.<br>실제 참여 및 수강한 온오프 레슨, 사은품(적립금포함) 공제되며 위약금 10%가 발생합니다.</span>
										솔루션(풀패키지)는 1년 단위로 연장이 가능합니다.
										</div>
										<div class="btn">
											<a href="/html/common_ui/content/check_agreement.php">이용약관</a>
											<a href="/html/common_ui/customer/notice.php?mode=v&bbs_data=aWR4PTQ0NjcmUGFnZU51bWJlcj0yJmxpc3RObz0mdGFibGU9aWRfYmJzX2RhdGEmY29kZT1ub3RpY2Umc2VhcmNoX2l0ZW09JnNlYXJjaF9vcmRlcj0=||">솔루션 연장 안내</a>
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
function viewAll(){
	$(".trview").removeClass("blind");
	$(".moreBtn").addClass("blind");
}
function go_lessonstatus(){
	self.location = "/bodeum/mypage/lessonstatus"
}
function go_lessonstatus_past(){
	self.location = "/bodeum/mypage/lessonstatus_past"
}
</script>		
<%@ include file="../includes/footer.jsp" %>
</body>
</html>