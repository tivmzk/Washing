<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.css">
<script src="https://cdn.jsdelivr.net/bxslider/4.2.12/jquery.bxslider.min.js"></script>

<script>
	$(function(){
		$('.slider').bxSlider();
	});
</script>
  
<div class="bound pb-50">
	<h1 class="text-center font-title font-bold py-30">워싱한 후기</h1>
	<div class="radius-box back-white p-30 pos-re">
		<div class="text-right pb-10">
			<span class="font-small font-medium gray-text"><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd"/></span>
		</div>
		<div>
			<ul class="slider">
				<c:choose>
					 <c:when test="${item.images.size() == 0}">
					 	<img src="${item.thumbnail}" alt="이미지" />
					 </c:when>
					 <c:otherwise>
						<c:forEach items="${item.images}" var="image">
							<img src="/upload/${image.fullname}" alt="${image.filename}" />
						</c:forEach> 
					 </c:otherwise>
				</c:choose>
			</ul>
		</div>
		<div class="pb-15"><span class="font-small font-medium gray-text">${item.maskname}님</span></div>
		<div>${item.contents}</div>
	</div>
</div>
