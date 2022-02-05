<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<div class="back-white">
	<form method="post" class="bound">
		<input type="hidden" name="email" value="${sessionScope.user.email}"/>
		<div>
			<h1 class="font-title font-bold text-center py-50">구독 정보 입력</h1>
		</div>
		<div class="pb-30">
			<h2 class="font-bold font-xlarge py-20">서비스 주기</h2>
			<ul class="flex pt-20">
				<li class="radio-wrapper px-15"><input id="1" type="radio" value="1" name="week" checked/><label for="1" class="font-large hover-pointer">1주일</label></li>
				<li class="radio-wrapper px-15"><input id="2" type="radio" value="2" name="week"/><label for="2" class="font-large hover-pointer">2주일</label></li>
				<li class="radio-wrapper px-15"><input id="3" type="radio" value="3" name="week"/><label for="3" class="font-large hover-pointer">3주일</label></li>
				<li class="radio-wrapper px-15"><input id="4" type="radio" value="4" name="week"/><label for="4" class="font-large hover-pointer">4주일</label></li>
			</ul>
		</div>
		<div>
			<h2 class="font-bold font-xlarge py-20">정보 입력</h2>
			<ul>
				<li class="input-wrapper">
					<label>받는 사람</label>
					<input class="w-100p" type="text" placeholder="이름을 입력하세요" name="recipient"/>
				</li>
				<li class="input-wrapper">
					<label>휴대폰 번호</label>
					<input class="w-100p" type="tel" placeholder="휴대폰 번호(-포함 입력하세요)" name="tel"/>
				</li>
				<li class="input-wrapper">
					<label>주소</label>
					<input class="w-100p" type="text" placeholder="주소를 입력하세요" name="address"/>
				</li>
				<li class="input-wrapper">
					<label>요청사항</label>
					<input class="w-100p" type="text" placeholder="예)문앞에 놔두세요" name="request"/>
				</li>
			</ul>
		</div>
		<div class="py-50 flex justify-center">
			<button class="btn confirm-btn ratio-4 py-15 font-large">확인</button>
		</div>
	</form>
</div>