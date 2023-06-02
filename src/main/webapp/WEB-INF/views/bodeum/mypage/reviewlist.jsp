<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
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
									<h2>상품후기</h2>
								</div>
								
								<table class="list-table review-table payment-table">
									<colgroup>
										<col width="85%">
										<col width="15%">
									 </colgroup>
									<tbody>
																				
									</tbody>
								</table>

																<table class="list-table order-table payment-table mb-50">
									<colgroup>
										<col width="60%">
										<col width="20%">
										<col width="20%">
									 </colgroup>
									<tbody>
										<tr class="no-data">
											<td colspan="3">
												<img src="../resources/dist/img/no_data_img.png">
												<p class="txt">작성한 후기내역이 없습니다.</p>
											</td>
										</tr>
									</tbody>
								</table>
																
															</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		
		
<%@ include file="../includes/footer.jsp" %>
</body>
</html>