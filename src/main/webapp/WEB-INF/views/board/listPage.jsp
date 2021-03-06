<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

<h1>
	게시물 리스트
</h1>

<form id="jobForm">
	<input type="hidden" name="page" value="${pageMaker.cri.page}" />
	<input type="hidden" name="perPageNum" value="${pageMaker.cri.perPageNum}" />
</form>

<table class="table">
	<tr>
		<th>BNO</th>
		<th>TITLE</th>
		<th>WRITER</th>
		<th>REGDATE</th>
		<th style="width:40px">VIEWCNT</th>
	</tr>
	<c:forEach items="${list}" var = "boardVO">
	<tr>
		<td>${ boardVO.bno}</td>
		<td><a href="/board/read?bno=${boardVO.bno}&page=${pageMaker.cri.page}&perPageNum=${pageMaker.cri.perPageNum}">${ boardVO.title}</a></td>
		<td>${ boardVO.writer}</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${ boardVO.regdate}" /></td>
		<td>${ boardVO.viewcnt}</td>
	</tr>
	</c:forEach>
</table>

<div class="text-center">
	<ul class="pagination">	
	<c:if test="${pageMaker.prev}">
		<li><a href="listPage?page=${pageMaker.startPage - 1}">&laquo;</a></li>
	</c:if>
		<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
			<li 
			class="page-item"
			<c:out value="${pageMaker.cri.page == idx ? 'class=active' : ''}"/>><!-- li -->
			<a href="listPage?page=${idx}&perPageNum=${pageMaker.cri.perPageNum}">${idx}</a></li>
		</c:forEach>

	<c:if test="${pageMaker.next}">
		<li><a href="listPage?page=${pageMaker.endPage + 1}">&raquo;</a></li>
	</c:if>
	</ul>
</div>

<script>
	var result ='${result}';
	
	if(result == 'success'){
		alert("처리가 완료");
	}
	
</script>

<%@ include file="../common/footer.jspf" %>

