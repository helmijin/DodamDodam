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
								<div class="lesson-title">
									<h2>1:1 문의하기</h2>
								</div>

								<!-- 게시판 삽입 시작 -->
								

<script language="javascript">
<!--
function searchCheck( box) {
	if( box.checked == false ) {
		bbs_search_form.search_item.value = eval(bbs_search_form.search_item.value) - eval(box.value);
	} else {
		bbs_search_form.search_item.value = eval(bbs_search_form.search_item.value) +eval(box.value);
	}
}

function search(){
	if(bbs_search_form.selected == false)	{
		alert("검색을 체크해 주십시오.");
	} else if(bbs_search_form.search_order.value=="")	{
		alert("검색할 내용을 입력해 주십시오.");
		bbs_search_form.search_order.focus();
	} else {
		bbs_search_form.submit();
	}
}

//-->

function go_inqregister(){
	self.location = "/bodeum/mypage/inqregister"
}
</script>


<table class="list-table point-table myInqList">
	<colgroup>
		<col width="10%">
		<col width="18%">
		<!--<col width="25%">-->
		<col width="35%">
		<col width="17%">
		<col width="10%">
	 </colgroup>
	<thead>
		<tr>
			<th>문의유형</th>
			<th>주문번호</th>
			<!--<th>상품명</th>-->
			<th>내용</th>
			<th>등록일</th>
			<th>문의상태</th>
		</tr>
	</thead>
	<tbody>
			</tbody>
</table>

	<div class="paging">
		<ol>
				<li class="etc">…</li>
		<li><a href="?code=myInq&category=&PageNumber=0&goods_idx=&&search_order=">0</a></li>
		</ol>
		<p>
		<a href='#prev'class='arrow_l'>Prev</a>		</p>
		<p class="last">
		<a href='#next' class='arrow_r'>Next</a>		 </p>
	</div>
<div class="btn">
	<a class="roundBtn blueBtn" onclick = "go_inqregister();">글쓰기</a>
</div>


<!-- 검색 -->
<!-- <form class="board_search" name="bbs_search_form" method="post" action="/html/common_ui/bodeum/mypage/myInqLst.php?code=myInq&search_item='+this.value">
	<select name="search_item" title="게시판 검색 조건">
		<option value="1" selected>제목</option>
		<option value="2">내용</option>
	</select>
	<input type="text" name="search_order" title="검색어 입력">
	<input type="submit" value="검색" class="input_search">
</form> -->
<!-- 검색 -->
								<!-- 게시판 삽입 종료 -->
								
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
<%@ include file="../includes/footer.jsp" %>
</body>
</html>