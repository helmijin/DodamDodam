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
									<form name="searchForm" method="get" action="?">
									<input type="hidden" name="search_day" value="" id="search_day">
									<div class="mypageGrayBox mypage-srchFilter mb-10">
										<select id="all" class="w145" name="search_gubun">
										  <option value="">구분전체</option>
										  <option value="1" >적립</option>
										  <option value="2" >차감</option>
										</select>
										<div class="dateBtn">
											<a href="#" onClick="selectSearchday(1); $('#search_day').val(1); $(this).addClass('on');" >오늘</a>
											<a href="#" onClick="selectSearchday(2); $('#search_day').val(2); $(this).addClass('on');" >1주일</a>
											<a href="#" onClick="selectSearchday(3); $('#search_day').val(3); $(this).addClass('on');" >1개월</a>
											<a href="#" onClick="selectSearchday(4); $('#search_day').val(4); $(this).addClass('on');" >3개월</a>
											<a href="#" onClick="selectSearchday(5); $('#search_day').val(5); $(this).addClass('on');" >6개월</a>
										</div>
										<div class="divWrap">
											<div class="datePick">
												<input type="text" class="datepicker-here" id="minDatePick" data-language="en" name="s_day" value="2022-11-09"/>
												<span>~</span>
												<input type="text" class="datepicker-here" id="maxDatePick" data-language="en" name="e_day" value="2023-02-07"/>
											</div>
											<div class="srchBtn">
												<a href="javascript:searchForm.submit();">조회</a>
											</div>
										</div>
									</div>
									</form>

								<div class="point-txt">
									<p>- 기본적으로 최근 3개월간의 자료가 조회되며, 기간 검색시 지난 주문내역을 조회하실 수 있습니다.</p>
									<p>- 주문번호를 클릭하시면 해당 주문에 대한 상세내역을 확인하실 수 있습니다.</p>
								</div>
								<div class="lesson-title">
									<h2>적립금내역</h2>
									<div class="total-point">총 적립금 <strong>3,000</strong></div>
								</div>
								<table class="list-table point-table">
									<colgroup>
										<col width="15%">
										<col width="40%">
										<col width="15%">
										<col width="15%">
										<!--<col width="15%">-->
									 </colgroup>
									<thead>
										<tr>
											<th>날짜</th>
											<th>내용</th>
											<th>구분</th>
											<th>적립금</th>
											<!--<th>잔여 포인트</th>-->
										</tr>
									</thead>
									<tbody>
																				<tr>
											<td>2023.01.07</td>
											<td>신규회원가입축하금</td>
											<td class="state"><span >적립</span></td>
											<td>3,000</td>
											<!--<td>3,000</td>-->
										</tr>
																													</tbody>
								</table>
																	<div class="paging">
		<ol>
		<li class='active'><a href='#'>1</a></li>		<li class="etc">…</li>
		<li><a href="?code=&category=&PageNumber=1&goods_idx=&&search_order=">1</a></li>
		</ol>
		<p>
		<a href='#prev'class='arrow_l'>Prev</a>		</p>
		<p class="last">
		<a href='#next' class='arrow_r'>Next</a>		 </p>
	</div>															</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<%@ include file="../includes/footer.jsp" %>
</body>
</html>