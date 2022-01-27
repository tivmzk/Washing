<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script>
	const path = "/review";
</script>
<script src="/re/js/block_link.js"></script>
<div>
	<div>
		<div>
			<span>고민하지 마세요!</span>
			<h1>이미 많은 사람들이 <br>시작했어요!</h1>
			<a href="add">리뷰하러 가기</a>
		</div>
		<div>
			<img src="/re/img/review_visual.jpg" alt="이미지" />
		</div>
	</div>
</div>
<ul class="bound">
	<c:forEach items="${list}" var="item">
		
		<li class="block-link" data-code="${item.rcode}">
			<div>
				<img src="${item.thumbnail}"/>
			</div>
			<div>
				<strong>${item.name}</strong>
				<p>${item.contents}</p>
				<span><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd" /></span>
			</div>
		</li>
	</c:forEach>
</ul>