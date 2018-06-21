<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

	<form method="post" role="form">
		<input type="hidden" name ="bno" value="${boardVO.bno}" />
		<input type="hidden" name="page" value="${cri.page}"/>
	</form>
	
	<div class="box-body">
		<div class="form-group">
			<label for="exampleInputEmail1">Title</label>
			<input type="text" name="title" value="${boardVO.title}" readonly class="form-control" />
		</div>

	
		<div class="form-group">
			<label for="exampleInputEmail1">Content</label>
			<textarea name="content" rows="3" readonly>${boardVO.content}</textarea>
		</div>

		<div class="form-group">
			<label for="exampleInputEmail1">Writer</label>
			<input type="text" name="writer" value="${boardVO.writer}" readonly class="form-control" />
		</div>
	</div>	
	<div class="box-footer">
		<button type="submit" class="btn btn-warning">modify</button>
		<button type="submit" class="btn btn-danger">remove</button>
		<button type="submit" class="btn btn-primary">List...</button>
	</div>
	
	<script>
		var formObj = $("form[role='form']");
		
		$(".btn-warning").on("click", function(){
			formObj.attr("action", "/board/modify");
			formObj.attr("method", "get");
			formObj.submit();
		});
		
		$(".btn-danger").on("click", function(){
			formObj.attr("action", "/board/remove");

			formObj.submit();
		});
		
		$(".btn-primary").on("click", function(){
			self.location = "/board/listPage?page=${cri.page}&perPageNum=${cri.perPageNum}";
		});
	</script>
	
<%@ include file="../common/footer.jspf" %>