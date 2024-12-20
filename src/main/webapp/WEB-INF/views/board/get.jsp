<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){
			var operForm = $("#operForm");
			
			$("button[data-oper='modify']").on("click", function(e){
				operForm.attr("action", "/board/modify").submit();
			})
			
			$("button[data-oper='list']").on("click", function(e){
				operForm.find("#bno").remove();
				operForm.attr("action", "/board/list");
				operForm.submit();
			})
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
	        		<div class="form-group">
	        			<label for="bno">Bno</label>
	        			<input class="form-control" id="bno" name="bno" value='<c:out value="${board.bno}" />' readonly="readonly" />
	        		</div>
	        		<div class="form-group">
	        			<label for="title">Title</label>
	        			<input class="form-control" id="title" name="title" value='<c:out value="${board.title}" />' readonly="readonly"  />
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
	        		<button data-oper='modify' class="btn btn-default" onclick="location.href='/board/modify?bno=<c:out value="${board.bno}" />'">Modify</button>
	        		<button data-oper='list' class="btn btn-info" onclick="location.href='/board/list'">List</button>
	        		
	        		<form id="operForm" action="/board/modify" method="get">
	        			<input type="hidden" id="bno" name="bno" value='<c:out value="${ board.bno }" />' />
	        		</form>
		        </div>
		    </div>
		</div>
	</div>

<%@include file="../includes/footer.jsp"%>