<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<form method="post" class="login-form">
	<ul>
		<li class="title">로그인</li>
		<li class="pt-30"><input required type="email" placeholder="이메일" name="email" class="input"/></li>
		<li class="pb-20"><input required type="password" placeholder="비밀번호" name="password" class="input"/></li>
		<li class="pb-30"><button class="submit confirm-btn btn">로그인</button></li>
		<li class="flex justify-center">
			<a class="link-deco px-15" href="">이메일 찾기</a>
			<a class="link-deco px-15" href="">비밀번호 찾기</a>
			<a class="link-deco px-15" href="signup">회원가입</a>
		</li>
	</ul>
</form>