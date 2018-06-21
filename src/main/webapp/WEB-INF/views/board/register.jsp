<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

<h1>
	게시물등록
</h1>

<form action="/board/register" method="post">
	<div class="box-body">
		<div class="form-group">
			<label for="">Title</label>
			<input type="text" name="title" class="form-control" placeholder="Enter Title"/>
		</div>
		
		<div class="form-group">
			<label for="">Content</label>
			<textarea name="content" class="form-control" rows="3" placeholder="Enter Content"></textarea>
		</div>
		
		<div class="form-group">
			<label for="">Writer</label>
			<input type="text" name="writer" class="form-control" placeholder="Enter Writer"/>
		</div>
		
		<div class="box-footer">
			<button type="submit" class="btn btn-primary">Submit</button>
		</div>
	</div>
</form>

<%@ include file="../common/footer.jspf" %>
