<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="/re/js/jquery-animate-css-rotate-scale.js"></script>
<script src="/re/js/faq_slider_anim.js"></script>
<div class="bound p-15">
	<div class="radius-box back-white text-center py-50">
		<span class="font-small gray-text py-20">자주 묻는 질문</span>
		<h1 class="font-title font-bold pt-10">무엇을 도와드릴까요?</h1>
		<div class="flex justify-center py-20">
			<div class="search-wrapper ratio-7">
				<input class="w-100p" type="text" placeholder="검색어를 입력하세요" />
				<img class="no-drag" src="/re/svg/search.svg"/>
			</div>
		</div>
	</div>
</div>
<div class="back-white pb-50">
	<div class="bound">
		<h2 class="font-xlarge font-bold py-20">정보</h2>
		<ul class="pb-20">
			<c:forEach items="${list}" var="item">
				<li class="bb-1 slider-wrapper">
					<div class="flex justify-between px-10 item-center slider-btn hover-pointer">
						<h3 class="font-large gray-text font-reguler py-15 hover-text">${item.title}</h3>
						<img class="slider-icon" src="/re/svg/drop_down.svg"/>
					</div>
					<div class="back-gray">
						<p class="slider-content p-10 font-small bt-1">${item.contents}</p>
					</div>
				</li>	
			</c:forEach>		
		</ul>
	</div>
</div>