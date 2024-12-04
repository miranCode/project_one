<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>
	<script type="text/javascript">
		$(document).ready(function() {
		    var formObj = $("form");
		    $('button').on("click", function(e) {
		        e.preventDefault(); // preventDefault() 메소드 이름 수정

		        var operation = $(this).data("oper");
		        console.log(operation); // 콘솔에 클릭된 버튼의 데이터 출력

		        if (operation === 'remove') {
		            formObj.attr("action", "/board/remove"); // 'remove' 작업 처리
		        } else if (operation === 'list') {
		            formObj.attr("action", "/board/list").attr("method", "get"); // 'list' 작업 처리
		            // formObj.empty(); // 폼을 비우는 부분은 필요 없다면 주석 처리
		        }

		        formObj.submit(); // 폼 제출
		    });
		});
	</script>
	<div class="row">
        <div class="col-lg-12">
            <h1 class="page-header">Board Register</h1>
        </div>
        <!-- /.col-lg-12 -->
    </div>
    <!-- /.row -->
    <div class="row">
		<div class="col-lg-12">
		    <div class="panel panel-default">
		        <div class="panel-heading">
		            Board List Page
		        </div>
		        <!-- /.panel-heading -->
		        <div class="panel-body">
		        	<form action="/board/modify" role="form" method="post">
		        		<div class="form-group">
		        			<label for="bno">Bno</label>
		        			<input class="form-control" id="bno" name="bno" value='<c:out value="${board.bno}" />' readonly="readonly" />
		        		</div>
		        		<div class="form-group">
		        			<label for="title">Title</label>
		        			<input class="form-control" id="title" name="title" value='<c:out value="${board.title}" />'  />
		        		</div>
		        		<div class="form-group">
		        			<label for="content">Text Area</label>
		        			<textarea name="content" id="content" rows="3" class="form-control" >
		        				<c:out value="${board.content}" />
		        			</textarea>
		        		</div>
		        		<div class="form-group">
		        			<label for="Writer">Writer</label>
		        			<input class="form-control" id="writer" name="writer" value='<c:out value="${board.writer}" />' readonly="readonly"  />
		        		</div>
		        		<div class="form-group">
		        			<label for="regDate"></label>
		        			<input class="form-control" name="regDate" id="regDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.regdate}"  />' readonly="readonly" />
		        		</div>
		        		<div class="form-group">
		        			<label for="updatedate"></label>
		        			<input class="form-control" name="updateDate" id="updateDate" value='<fmt:formatDate pattern="yyyy/MM/dd" value="${board.updatedate}"  />' readonly="readonly" />
		        		</div>
		        		<button type="submit" data-oper='modify' class="btn btn-default" >Modify</button>
		        		<button type="submit" data-oper='remove' class="btn btn-danger" >Remove</button>
		        		<button type="submit" data-oper='list' class="btn btn-info" >list</button>
	        		</form>
		        </div>
		    </div>
		</div>
	</div>

<%@include file="../includes/footer.jsp"%>