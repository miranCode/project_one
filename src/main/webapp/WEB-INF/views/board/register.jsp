<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ include file="../includes/header.jsp" %>
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
		        	<form action="/board/register" role="form" method="post">
		        		<div class="form-group">
		        			<label for="title">Title</label>
		        			<input class="form-control" id="title" name="title" />
		        		</div>
		        		<div class="form-group">
		        			<label for="content">Text Area</label>
		        			<textarea name="content" id="content" rows="3" class="form-control" ></textarea>
		        		</div>
		        		<div class="form-group">
		        			<label for="Writer">Writer</label>
		        			<input class="form-control" id="writer" name="writer" />
		        		</div>
		        		<button type="submit" class="btn btn-default">Submit Button</button>
		        		<button type="reset" class="btn btn-default">Reset Button</button>
		        	</form>
		        </div>
		    </div>
		</div>
	</div>

<%@include file="../includes/footer.jsp"%>