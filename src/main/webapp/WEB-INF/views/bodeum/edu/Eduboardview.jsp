<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="../../../../resources/css/main.css" rel="stylesheet"
	type="text/css">
<link href="../../../../resources/css/common.css" rel="stylesheet"
	type="text/css">
<link href="../../../../resources/css/slick.css" rel="stylesheet"
	type="text/css">
<link href="../../../../resources/css/slick-theme.css" rel="stylesheet"
	type="text/css">
<link href="../../../../resources/css/slider.css" rel="stylesheet"
	type="text/css">
	<link href="../../../../resources/css/layout.css" rel="stylesheet"
	type="text/css">

<title>커뮤니티</title>
</head>
<body>
<header>
				<%@include file="../includes/header2.jsp"%>
		</header>
	<div id="wrapper">
		<div class="containerWrap">
			<div class="page-title-top community-page-title">
				<h2 class="page-title">교육후기</h2>
			</div>
			<div class="page-title-menu  education-page-menu">
				
			</div>


			<div class="content">
				<div class="inner-contents bg_gray">
					<div class="section columnList">
					
					
					<form role="form" method="get">
						<!-- 게시판 삽입 시작 -->
						<div class="communityDetail">
							<div class="listDetail">
								<div class="listTitle">
									<div class="lecture_info">
									<div class="title">${list.title }</div>
										<div class="date-view"><span class="date">등록일 : ${list.bdate }</span>
										<span class="viewCount">조회수 : ${list.cnt }</span>  
									</div>
									<div>
										<div onclick="eduboarddelete(${list.boardnum})"><span style="float:right; width:10%;"><a href="#">삭제</a></span></div>
										<div onclick="eduboardmodify(${list.boardnum})"><span style="float:right; width:1%;"><a href="#">수정</a></span></div>
									</div>
									
								</div>
								<div class="listEditor">
			
									<div></div>
									<span > ${list.content }</span>					
									<div></div>
								</div>
								<div class="inputArea">
									
								
								</div>
								<!-- 이전글,다음글 -->


								<div class="list-movement">
									<ul>
										<li class="prev"><a href="?boardnum=${list.boardnum-1} ">이전글 보기</a></li>
										<li class="next"><a href="?boardnum=${list.boardnum+1} ">다음글 보기</a></li>
											
									</ul>
								</div>
							
								<!-- 이전글,다음글 //-->
								<div class="btn">
								<!-- <a class="roundBtn whiteBtn">게시글 등록 </a> -->
									<div onclick="eduboardlist()"><a class="roundBtn whiteBtn">목록으로</a></div>
								</div>
								

							</div>
							<!-- 게시판 삽입 종료 -->
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

<script type="text/javascript">

function eduboardlist(){
	self.location="/bodeum/edu/eduboardlist";
}
function eduboardmodify(boardnum){
	if(confirm("수정하시겠습니까?")){
		self.location="/bodeum/edu/eduboardmodify?boardnum="+boardnum;
	}
}
	
function eduboarddelete(boardnum){
	if(confirm("삭제하시겠습니까?")){
		self.location="/bodeum/edu/eduboarddelete?boardnum="+boardnum;
	}
	
}







</script>
</html>