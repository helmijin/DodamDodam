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
                 
                           <div class="form-group">
                           <label>Bno</label><input class="form-control" name="bno" value="${board.bno}" readonly>
                           </div>
                           <div class="form-group">
                           <label>Title</label><input class="form-control" name="title" value="${board.title}" readonly>
                           </div>
                           <div class="form-group">
                           		<label>Text Area</label>
                           		<textarea rows="3" class="form-control" name="content" readonly>${board.content}</textarea>
                           </div>
                           <div class="form-group">
                           		<label>Writer</label><input class="form-control" name="writer" value="${board.writer}" readonly></input>
                           </div>
                           <button data-oper='modify' class="btn btn-info">Modify</button>
                           <button data-oper="list" class="btn btn-info">List</button>
                          
                          <form id="operForm" action="/bodeum/manager_modify" method="get">
                          <input type="hidden" id="'bno" name="bno" value="${board.bno }"><input type="hidden" name="pageNum" value="${cri.pageNum }">
                          <input type="hidden" name="amount" value="${cri.amount }">
                          <input type="hidden" name="type" value="${pageMaker.cri.type}">
                          <input type="hidden" name="keyword" value="${pageMaker.cri.keyword}">
                          
                          </form>
                          
                        </div>
                    </div>  
                </div>
            </div>

</script>
            
            <%@ include file="../includes/footer.jsp" %>
    