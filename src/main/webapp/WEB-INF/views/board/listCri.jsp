<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ include file="../common/header.jspf" %>
<%@ include file="../common/navigation.jspf" %>

<h1>
	게시물 리스트
</h1>
<script>
	var result = '${result}';
	
	if(result == 'success'){
		alert("처리가 완료되었습니다.");
	}
</script>

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
		<td><a href="/board/read?bno=${boardVO.bno}">${ boardVO.title}</a></td>
		<td>${ boardVO.writer}</td>
		<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${ boardVO.regdate}" /></td>
		<td>${ boardVO.viewcnt}</td>
	</tr>
	</c:forEach>
</table>


<%@ include file="../common/footer.jspf" %>

