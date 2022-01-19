<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<form method="post">
	<ul>
		<li>회원가입</li>
		<li>
			<label>이메일</label>
			<input type="email" placeholder="이메일을 입력하세요" name="email"/>
		</li>
		<li>
			<label>비밀번호</label>
			<input type="password" placeholder="비밀번호를 입력하세요" name="password"/>
			<input type="password" placeholder="비밀번호를 다시 입력하세요"/>
		</li>
		<li>
			<label>이름</label>
			<input type="text" placeholder="이름을 입력하세요" name="name"/>
		</li>
		<li>
			<button>가입완료</button>
		</li>
	</ul>
</form>