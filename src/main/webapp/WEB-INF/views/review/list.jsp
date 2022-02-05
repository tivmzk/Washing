<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<script>
	const path = "/review";
</script>
<script src="/re/js/block_link.js"></script>
<div class="back-blue">
	<div class="bound py-20">
		<div class="radius-box back-white bound flex justify-between">
			<div class="ratio-4 flex dir-col justify-center pl-50">
				<span class="font-small gray-text">고민하지 마세요!</span>
				<h1 class="font-title font-bold">이미 많은 사람들이 <br>시작했어요!</h1>
				<div class="pt-30">
					<a class="btn sub-btn" href="add">리뷰하러 가기</a>
				</div>
			</div>
			<div class="ratio-6 p-20">
				<div class="over-hidden radius-box">
					<img class="contain-img" src="/re/img/review_visual.jpg" alt="이미지" />
				</div>
			</div>
		</div>
	</div>
</div>
<div class="back-white">
	<ul class="flex bound justify-center">
		<c:forEach items="${list}" var="item">
			
			<li class="block-link review-card" data-code="${item.rcode}">
				<div>
					<img src="${item.thumbnail}"/>
				</div>
				<div>
					<span class="font-large font-medium">${item.maskname}</span>
					<p  class="py-10 gray-text font-small font-medium">${item.contents}</p>
					<div class="text-right">
							<span class="font-small font-medium gray-text"><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd"/></span>
						</div>
				</div>
			</li>
		</c:forEach>
	</ul>
</div>
