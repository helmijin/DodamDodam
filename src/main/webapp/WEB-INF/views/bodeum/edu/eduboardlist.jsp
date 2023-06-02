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

<title>교육후기</title>
</head>
<body>
	<header>
		<%@include file="../includes/header2.jsp"%>
	</header>

	<div id="wrapper">
		<div class="containerWrap">
			<div class="page-title-top community-page-title">
				<h2 class="page-title">교육 후기</h2>
			</div>
			<div class="page-title-menu  education-page-menu">
				<ul>
					<li class="on"><div onclick="eduboardlist()">
							<a>교육 후기</a>
						</div></li>
				</ul>
			</div>


			<div class="content">
				<div class="inner-contents bg_gray">
					<div class="section columnList">

						<!-- 게시판 삽입 시작 -->


						<script language="javascript">
					
						</script>

						<form class="board_search" name="bbs_search_form" method="post"
							action="/html/edu_movie/community/community_list.php?code=community_column&amp;search_item='+this.value">
							<div class="srchFilter mb-40 pc-tabletVer">
								<select id="select" class="w145" name="search_item">
									<option value="1" selected="">제목</option>
									<option value="2">내용</option>
								</select> <input type="text" name="search_order">
								<div class="srchBtn">
									<a href="javascript:search();">검색</a>
								</div>
								<c:if test="${user ne null}">
									<div class="srchBtn" onclick="eduregistert()">
										<a href="#">글쓰기</a>
									</div>
								</c:if>
							</div>
						</form>


						<div class="communityList media-list">
							<div class="container">
								<div class="row">

									<c:forEach items="${list }" var="list">
										<div class="col-25">
											<div class="white-pannel"
												onclick="${path}/bodeum/edu/eduboardview?boardnum=${list.boardnum}">
												<div class="ratio3 thumbnail-wrapper">
													<div class="thumbnail">

														<a
															href="${path}/bodeum/edu/eduboardview?boardnum=${list.boardnum}"
															class="img-thum"> <img src=""></a>
													</div>
												</div>

												<div class="title">
													<a
														href="${path}/bodeum/edu/eduboardview?boardnum=${list.boardnum}">

														<span class="titleSpan">${list.title }</span>
													</a>
												</div>
												<div class="count">조회수: ${list.cnt }</div>
											</div>
										</div>
									</c:forEach>
								</div>
							</div>
							<form id="actionForm" action="/bodeum/edu/eduboardlist"
								method="get">
								<input type="hidden" name="pageNum"
									value="${pageMaker.cri.pageNum}"> <input type="hidden"
									name="amount" value="${pageMaker.cri.amount}"> <input
									type="hidden" name="type" value="${pageMaker.cri.type}">
								<input type="hidden" name="keyword"
									value="${pageMaker.cri.keyword}">
							</form>

							<!-- 페이징 처리 시작 -->
							<div class="paging">
								<ul class="pagination">

									<c:if test="${pageMaker.prev}">
										<li class="paginate_button previous"><a
											href="?PageNum=${pageMaker.startPage-1 }">이전</a></li>
									</c:if>

									<c:forEach var="num" begin="${pageMaker.startPage }"
										end="${pageMaker.endPage }">

										<li class="paginate_button ${pageMaker.cri.pageNum == num? "active":"" }" ><a
											href="?PageNum=${num}">${num}</a></li>
									</c:forEach>

									<c:if test="${pageMaker.next}">
										<li class="paginate_button next"><a
											href="?PageNum=${pageMaker.endPage+1 }">다음</a></li>
									</c:if>
								</ul>
							</div>
							<!-- 게시판 삽입 종료 -->


						</div>
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

function edulist(){
	self.location="/bodeum/edu/edulist";
}


function edugroup(){
	self.location="/bodeum/edu/edugroup";
}


function edusingle(){
	self.location="/bodeum/edu/edusingle";
}



function eduitem(itemnum){
	
	
	self.location="/bodeum/edu/eduitem?itemnum="+itemnum;
}

function eduregistert(){
	
	self.location="/bodeum/edu/eduregistert";
	
}

function eduboardlist(){
	self.location="/bodeum/edu/eduboardlist";
}

</script>
</html>