<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<div class="bound flex justify-between">
	<div class="ratio-2">
		<a href="/"><img src="/re/img/logo.png" alt="워싱" /></a>
	</div>
	<div class="ratio-8 flex item-center">
		<ul class="nav">
			<li><a href="/sub">구독하기</a></li>
			<li><a href="/review/list">리뷰</a></li>
			<li><a href="/faq">FAQ</a></li>
		</ul>
	</div>
	<div class="ratio-2 text-right item-center">
		<c:choose>
			<c:when test="${sessionScope.user != null}">
				<span>${sessionScope.user.name}</span>님
			</c:when>
			<c:otherwise>
				<a href="/ac/select" class="btn point-btn">로그인</a>
			</c:otherwise>
		</c:choose>
	</div>
</div>