<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Tables</h1>
                </div>
                <!-- /.col-lg-12 -->
            </div>
            <!-- /.row -->
            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            Board Register
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                           <form role="form" action="/bodeum/manager_register" method="post">
                           <div class="form-group">
                           <label>상품 번호</label><input class="form-control" name="itemnum">
                           </div>
                           <div class="form-group">
                           		<label>상품 카테고리</label><input class="form-control" name="itemcat"></input>
                           </div>
                            <div class="form-group">
                           		<label>상품 사진</label><input class="form-control" name="itempic"></input>
                           </div>
                            <div class="form-group">
                           		<label>상품 이름</label><input class="form-control" name="item"></input>
                           </div>
                            <div class="form-group">
                           		<label>옵션 1</label><input class="form-control" name="opt1"></input>
                           </div>
                            <div class="form-group">
                           		<label>옵션 2</label><input class="form-control" name="opt2"></input>
                           </div>
                            <div class="form-group">
                           		<label>옵션 3</label><input class="form-control" name="opt3"></input>
                           </div>
                            <div class="form-group">
                           		<label>옵션 4</label><input class="form-control" name="opt4"></input>
                           </div>
                            <div class="form-group">
                           		<label>옵션 5</label><input class="form-control" name="opt5"></input>
                           </div>
                            <div class="form-group">
                           		<label>옵션 6</label><input class="form-control" name="opt6"></input>
                           </div>
                            <div class="form-group">
                           		<label>옵션 7</label><input class="form-control" name="opt7"></input>
                           </div>
                           <div class="form-group">
                           		<label>상품 가격</label><input class="form-control" name="itemdisco"></input>
                           </div>
                           <div class="form-group">
                           		<label>공개 여부</label><input class="form-control" name="displaystatus"></input>
                           </div>
                           <div class="form-group">
                           		<label>판매 여부</label><input class="form-control" name="salesstatus"></input>
                           </div>
                           <div class="form-group">
                           		<label>상품 수량</label><input class="form-control" name="itemcnt"></input>
                           </div>
                           
                           <button type="submit" class="btn btn-default">Submit Button</button>
                           <button type="reset" class="btn btn-default">Reset Button</button>
                           </form>
                        </div>
                    </div>  
                </div>
            </div>
</body>
</html>