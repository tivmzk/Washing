<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="bound">
	<form method="post">
		<input type="hidden" name="email" value="${sessionScope.user.email}"/>
		<div>
			<h1>구독 정보 입력</h1>
		</div>
		<div>
			<h2>서비스 주기</h2>
			<ul>
				<li><label>1주일<input type="radio" value="1" name="week" checked/></label></li>
				<li><label>2주일<input type="radio" value="2" name="week"/></label></li>
				<li><label>3주일<input type="radio" value="3" name="week"/></label></li>
				<li><label>4주일<input type="radio" value="4" name="week"/></label></li>
			</ul>
		</div>
		<div>
			<h2>정보 입력</h2>
			<ul>
				<li>
					<h3>받는 사람</h3>
					<input type="text" placeholder="이름을 입력하세요" name="recipient"/>
				</li>
				<li>
					<h3>휴대폰 번호</h3>
					<input type="tel" placeholder="휴대폰 번호(-포함 입력하세요)" name="tel"/>
				</li>
				<li>
					<h3>주소</h3>
					<input type="text" placeholder="주소를 입력하세요" name="address"/>
				</li>
				<li>
					<h3>요청사항</h3>
					<input type="text" placeholder="예)문앞에 놔두세요" name="request"/>
				</li>
			</ul>
		</div>
		<div>
			<button class="btn confirm-btn">확인</button>
		</div>
	</form>
</div>