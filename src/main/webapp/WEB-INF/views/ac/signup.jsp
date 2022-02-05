<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="/re/css/signup_validation.css" />
<script>
	const path = '/rest/mem/email';
</script>
<script src="/re/js/signup_validation.js"></script>
<form method="post" class="signup-form" id="valid-form">
	<ul>
		<li class="title">회원가입</li>
		<li class="pt-20">
			<label>이메일</label>
			<input class="valid" id="id" type="email" placeholder="이메일을 입력하세요" name="email"/>
		</li>
		<li>
			<label>비밀번호</label>
			<input class="valid" id="password" type="password" placeholder="비밀번호를 입력하세요" name="password"/>
			<input class="valid" id="confirm-password" type="password" placeholder="비밀번호를 다시 입력하세요"/>
		</li>
		<li class="pb-20">
			<label>이름</label>
			<input type="text" placeholder="이름을 입력하세요" name="name"/>
		</li>
		<li>
			<button class="confirm-btn btn w-100p font-normal py-15" id="submit">가입완료</button>
		</li>
	</ul>
</form>