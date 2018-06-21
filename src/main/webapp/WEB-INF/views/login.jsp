<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="common/header.jspf" %>
<%@ include file="common/navigation.jspf" %>

 <section id="container">
		<div class="wrap">
	    	<div class="login">
	        	<div class="con_tit">
	            	<h2>로그인</h2>
	                <p>로그인 페이지</p>
	            </div><!--con_tit-->
            <div class="login_form">
            <p style="color:red">${error}</p>
	            <form action="/login" name="loginForm" Method="POST">
	            
	            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
	            <table class="table">
	            	<tr>
	            		<td><label for="userId">User</label></td>
	            		<td><input name="userId" type="text" id="userId" placeholder="아이디를 입력해주세요" class="txt" required /></td>
	            	</tr>
	            	<tr>
	            		<td><label for="userPw">Password</label></td>
	            		<td><input name="userPw"  type="password" id="userPw" placeholder="비밀번호를 입력해주세요" class="txt pw" required /></td>
	            	</tr>
	            	<tr>
	            		<td>
	            			<input type="submit" value="login" class="btn" />
	            		</td>
	            		<td>
	                        <input type="reset" value="reset" class="btn" />
	            		</td>
	            	</tr>
	            </table>
            	</form>
            	<P>  The time on the server is ${serverTime}. </P>
         
            </div><!--loginform-->
            <div class="find_id">
            	<div>
            	<h3>일정관리 서비스에 가입 하시겠습니까?</h3>
                	<a href="/JoinUser">회원 가입 바로가기</a>
                </div>
            </div><!--find_id-->
</section><!--login-->
<%@ include file="common/footer.jspf" %>
