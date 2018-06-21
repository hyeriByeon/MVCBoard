<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>
<h1>
	게시물 수정
</h1>
	<form method="post" role="form">
		<input type="hidden" name="page" value="${cri.page}" />
		<input type="hidden" name="perPageNum" value="${cri.perPageNum}" />
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">BNO</label>
			<input type="text" name="bno" value="${boardVO.bno}" class="form-control" readonly />
		</div>
		
		<div class="form-group">
			<label for="exampleInputEmail1">Title</label>
			<input type="text" name="title" value="${boardVO.title}" class="form-control" />
		</div>

	
		<div class="form-group">
			<label for="exampleInputEmail1">Content</label>
			<textarea name="content" rows="3">${boardVO.content}</textarea>
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label>
			<input type="text" name="writer" value="${boardVO.writer}" class="form-control" />
		</div>
	</div><!-- box -->	
	
	</form>
	
	<div class="box-footer">
		<button type="submit" class="btn btn-primary">save</button>
		<button type="submit" class="btn btn-warning">cancel</button>
	</div>
	
<%@ include file="../common/footer.jspf" %>

<script>
	$(document).ready(function(){
		var formObj = $("form[role='form']");
		
		$(".btn-primary").on('click', function(){
			formObj.attr("action", "/board/modify");
			
			formObj.submit();
		});
		
		$(".btn-warning").on('click', function(){
			self.location = "/board/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}";
		});
	});
</script>