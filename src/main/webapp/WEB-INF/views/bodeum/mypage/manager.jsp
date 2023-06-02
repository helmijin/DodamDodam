<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">No</th>
      <th scope="col">상품 카테고리</th>
      <th scope="col">상품 사진</th>
      <th scope="col">상품 명</th>
      <th scope="col">상품 옵션1</th>
      <th scope="col">상품 옵션2</th>
      <th scope="col">상품 옵션3</th>
      <th scope="col">상품 옵션4</th>
      <th scope="col">상품 옵션5</th>
      <th scope="col">상품 옵션6</th>
      <th scope="col">상품 옵션7</th>
      <th scope="col">상품 수량</th>
      <th scope="col">진열 상태</th>
      <th scope="col">판매 상태</th>
      <th scope="col">제품 수량</th>
    </tr>
  </thead>
  <tbody>
  <c:forEach var="product" items="${product}">
    <tr>
      <th scope="row">${product.itemnum}</th>
      <td>${product.itemcat}</td>
      <td>${product.itempic}</td>
      <td>${product.item}</td>
      <td>${product.opt1}</td>
      <td>${product.opt2}</td>
      <td>${product.opt3}</td>
      <td>${product.opt4}</td>
      <td>${product.opt5}</td>
      <td>${product.opt6}</td>
      <td>${product.opt7}</td>
      <td>${product.itemdisco}</td>
      <td>${product.displaystatus}</td>
      <td>${product.salesstatus}</td>
      <td>${product.itemcnt}</td>
    </tr>
	</c:forEach>
  </tbody>
</table>
</body>
</html>