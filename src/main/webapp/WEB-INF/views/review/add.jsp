<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/re/js/input_append.js"></script>
    
<div class="bound">
	<form method="post" enctype="multipart/form-data">
		<h1>리뷰</h1>
		<input type="hidden" name="email" value="${sessionScope.user.email}"/>
		<textarea required name="contents" placeholder="리뷰를 입력해주세요"></textarea>
		
		<div class="hidden input-box">
		</div>
		<div>
			<button type="button" class="btn point-btn mini-btn input-btn">내 PC</button>
			<button type="button" class="btn delete-btn mini-btn">삭제</button>
		</div>
		<table class="input-table">
			<thead>
				<tr>
					<th><input type="checkbox" /></th>
					<th>파일명</th>
				</tr>
			</thead>
			<tbody>
			</tbody>
		</table>
		
		<button class="btn confirm-btn" type="submit">확인</button>
	</form>
</div>
