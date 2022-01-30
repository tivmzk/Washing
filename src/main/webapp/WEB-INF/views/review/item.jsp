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
  
<div class="bound">
	<h1>워싱한 후기</h1>
	<div>
		<div><span><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd"/></span></div>
		<div>
			<ul class="slider">
				<c:forEach items="${item.images}" var="image">
					<img src="/upload/${image.fullname}" alt="${image.filename}" />
				</c:forEach>
			</ul>
		</div>
		<div><span>${item.name}</span></div>
		<div><p>${item.contents}</p></div>
	</div>
</div>
