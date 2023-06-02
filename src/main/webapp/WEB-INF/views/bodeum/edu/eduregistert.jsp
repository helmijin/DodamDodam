<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>



<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<link href="../../../resources/css/main.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/common.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/slick.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/slick-theme.css" rel="stylesheet"
	type="text/css">
<link href="../../../resources/css/slider.css" rel="stylesheet"
	type="text/css">
	 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
  
	
	<script src="../../../resources/summernote/summernote-lite.js"></script>
  <script src="../../../resources/summernote/summernote-ko-KR.js"></script>
  <link rel="stylesheet" href="../../../resources/summernote/summernote-lite.css">

<style>
        table.table2{
                border-collapse: separate;
                border-spacing: 1px;
                text-align: left;
                border-top: 1px solid #ccc;
                margin : 20px 10px;
        }
        table.table2 tr {
                 width: 50px;
                 padding: 10px;
                font-weight: bold;
                vertical-align: top;
                border-bottom: 1px solid #ccc;
        }
        table.table2 td {
                 width: 100px;
                 padding: 10px;
                 border-bottom: 1px solid #ccc;
        }
 
</style>

<title>후기작성</title>
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
				<ul>
					<li class="on"><a href="community_list.php">교육후기</a></li>
				</ul>
			</div>


			<div class="content">
				<div class="inner-contents bg_gray">
					<div class="section columnList">
					
					
					<form role="form" method="post" action="/bodeum/edu/eduinsert" id="frm">
						<!-- 게시판 삽입 시작 -->
						<div class="communityDetail">
							<div class="listDetail">
								<div class="listTitle">
								
								 <table class = "table2">
			                        <tr>
			                        <td>훈련사</td>
			                        <td><input type="text" name="dogtrainer" size=20></td>
			                        </tr>
			                        
									<tr>
									 <td>강의종류</td>
			                        <td><input type="text" name="type" size=20></td>
			                        </tr>
			                        
			                        <tr> 
			                        <td>제  목</td>
			                        <td><input type="text" name="title" id="title" size="140" placeholder="제목을 입력해주세요." style="outline:2px;"></td>
			                        </tr></table>
									
							

								<div class="listEditor">
								  <textarea class="summernote" name="content"></textarea>    
								</div>
								<script>
								$('.summernote').summernote({
									  height: 450,
									  lang: "ko-KR"
									});
								</script>


								<div class="list-movement">
									<ul>
									</ul>
								</div>

								<!-- 이전글,다음글 //-->
								<div class="btn">
								<!-- <a class="roundBtn whiteBtn">게시글 등록 </a> -->
								 	<input type="hidden" name="userid" value="${userid}">
									<div><a class="roundBtn whiteBtn" onclick="document.getElementById('frm').submit();">작성</a></div>
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


</script>
</html>