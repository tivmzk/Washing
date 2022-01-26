<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<div class="bound">
	<form method="post" enctype="multipart/form-data">
		<input type="hidden" name="email" value="${sessionScope.user.email}"/>
		<textarea name="contents">리뷰를 작성하세요</textarea>
		
		<input type="file" />
		<button class="btn confirm-btn" type="submit">확인</button>
	</form>
</div>
