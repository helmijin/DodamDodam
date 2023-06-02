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
<script type="text/javascript">
function couponRegist(){
	var form = document.writeForm;
	if(form.coupon_no.value==""){
		alert("등록하실 쿠폰번호를 입력해주세요.");
		form.coupon_no.focus();
	} else {
		form.submit();
	}
}
</script>
							<div class="rightBlock">
								<div class="mypageGrayBox mb-50">
									<div class="couponDivLeft">
										<h4>쿠폰 등록</h4>
										<form name="writeForm" action="coupon_regist_ok.php" method="post">
										<input type="hidden" name="userid" value="yj4249" />
										<div class="divWrap">
											<input type="text" name="coupon_no" class="fullInput" placeholder="발급받은 쿠폰을 등록하시면 사용하실 수 있습니다. "/>
											<div class="srchBtn">
												<a href="javascript:couponRegist();">등록</a>
											</div>
										</div>
										</form>
									</div>
									<div class="couponDivRight">
										<h4>사용가능 쿠폰</h4>
										<div class="available">
											<strong>0</strong><span>장</span>
										</div>
									</div>
								</div>

								<div id="divTab">
									<ul class="m-tabs">
										<li class="active" rel="tab1">사용가능</li>
										<li rel="tab2">사용완료/기간만료</li>
									</ul>
								</div>
								<!-- tab 1 -->
								<div id="tab1" class="tab_content">
									<table class="coupon-table point-table">
										<colgroup>
											<col width="30%">
											<col width="30%">
											<col width="20%">
											<col width="20%">
										 </colgroup>
										<thead>
											<tr>
												<th>쿠폰명</th>
												<th>사용가능처</th>
												<th>할인</th>
												<th>사용기간</th>
											</tr>
										</thead>
										<tbody>
																																	<tr class="no-data">
												<td colspan="4">
													<img src="../../common/img/no_data_img.png">
													<p class="txt">사용가능한 쿠폰이 없습니다.</p>
												</td>
											</tr>
																					</tbody>
									</table>
									<script type="text/javascript">
function Paging(tab,pnum){
	$.ajax({
			url:'./more_coupon.php',
			type:'GET',
			data:'tab='+tab+'&PageNumber='+pnum,
			success:function(data){
				$('#tab'+tab).html(data);
			}
		});
	}
</script>

	<div class="paging">
		<ol>
				<li class="etc">…</li>
		<li><a href="javascript:Paging('1','0');">0</a></li>
		</ol>
		<p>
		<a href='#prev'class='arrow_l'>Prev</a>		</p>
		<p class="last">
		<a href='#next' class='arrow_r'>Next</a>		 </p>
	</div>								</div>
								<!-- //tab 1 -->
							
								<!-- tab 2 -->
								<div id="tab2" class="tab_content">
									<table class="coupon-table point-table">
										<colgroup>
											<col width="30%">
											<col width="30%">
											<col width="10%">
											<col width="15%">
											<col width="15%">
										 </colgroup>
										<thead>
											<tr>
												<th>쿠폰명</th>
												<th>사용처</th>
												<th>할인</th>
												<th>사용기간</th>
												<th>사용일</th>
											</tr>
										</thead>
										<tbody>
											
																																	<tr class="no-data">
												<td colspan="5">
													<img src="../../common/img/no_data_img.png">
													<p class="txt">사용완료/기간만료된 쿠폰이 없습니다.</p>
												</td>
											</tr>
																					</tbody>
									</table>
									<script type="text/javascript">
function Paging(tab,pnum){
	$.ajax({
			url:'./more_coupon.php',
			type:'GET',
			data:'tab='+tab+'&PageNumber='+pnum,
			success:function(data){
				$('#tab'+tab).html(data);
			}
		});
	}
</script>

	<div class="paging">
		<ol>
				<li class="etc">…</li>
		<li><a href="javascript:Paging('2','0');">0</a></li>
		</ol>
		<p>
		<a href='#prev'class='arrow_l'>Prev</a>		</p>
		<p class="last">
		<a href='#next' class='arrow_r'>Next</a>		 </p>
	</div>								</div>

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
				</div>
			</div>
		</div>
		<%@ include file="../includes/footer.jsp" %>
</body>
</html>