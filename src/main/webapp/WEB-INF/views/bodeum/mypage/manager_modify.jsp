<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ include file="../includes/header.jsp" %>
     <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Board Read</h1>
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
                 	<form role="form" action="/board/manager_modify" method="post">
                 		<input type="hidden" name="pageNum" value="${cri.pageNum}">
                 		<input type="hidden" name="amount" value="${cri.amount}">
                 		<input type="hidden" name="type" value="${pageMaker.cri.type}">
                        <input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                 		
                           <div class="form-group">
                           <label>Bno</label><input class="form-control" name="bno" value="${board.bno}" readonly>
                           </div>
                           <div class="form-group">
                           <label>Title</label><input class="form-control" name="title" value="${board.title}" >
                           </div>
                           <div class="form-group">
                           		<label>Text Area</label>
                           		<textarea rows="3" class="form-control" name="content" >${board.content}</textarea>
                           </div>
                           <div class="form-group">
                           		<label>Writer</label><input class="form-control" name="writer" value="${board.writer}" ></input>
                           </div>
    
                           <button type="submit" data-oper='modify' class="btn btn-info">Modify</button>
                           <button type="submit" data-oper='remove' class="btn btn-info">Remove</button>
                           <button type="submit" data-oper="list" class="btn btn-info">List</button>
                          </form>
                        </div>
                    </div>  
                </div>
            </div>
            
 <script type="text/javascript">
 
 $(document).ready(function(){

	 var formObj=$("form");
	 
	 $('button').on("click", function(e){
	
		 e.preventDefault();
	 
		 var operation = $ (this).data("oper");
		 
		 console.log(operation);
		 
		 if(operation==='remove'){
			 formObj.attr("action", "/board/remove");
		 }else if (operation==='list'){
			 //move to list
			formObj.attr("action", "/board/list").attr("method", "get");
			 var pageNumTag=$("input[name='pageNum']").clone();
			 var amountTag=$("input[name='amount']").clone();
			 var typeTag=$("input[name='type']").clone();
			 var keywordTag=$("input[name='keyword']").clone();
			 
			 formObj.empty();
			 formObj.append(pageNumTag);
			 formObj.append(amountTag);
			 formObj.append(typeTag);
			 formObj.append(keywordTag);
		 }
	 	formObj.submit();
	 
	 }); 
 });
 
 

 </script>   
         
    <%@ include file="../includes/footer.jsp" %>