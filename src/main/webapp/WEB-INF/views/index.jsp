<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>

<script>
	const path = '/review';
	
	$(function(){
		const swiper = new Swiper('.swiper', {
			direction: 'horizontal',
			spaceBetween: 30,
			loop:true,
			loopAdditionalSlides:9
		});	
	})
</script>
<style>
	.swiper{
		width: 300px;
		height: 410px;
	}
</style>

<script src="/re/js/block_link.js"></script>
<div class="main_visual over-hidden">
	<img src="/re/img/main_visual.jpg"/>
</div>
<div class="sub-wrapper">
	<p class="font-black font-xxlarge">귀찮은 <span class="point-text">빨래</span> 고민 해결!</p>
	<p class="font-medium font-large">시간만 정하면<br>배달해 주니까!</p>
	<p class="font-bold font-xlarge">이제 <span class="confirm-text">세탁</span>도 <span class="sub-text">구독</span>하세요</p>
	<a href="sub" class="btn sub-btn">구독하러 가기</a>
</div>
<div class="p-20 back-white">
	<div class="bound p-20 flex">
		<div class="card flex">
			<div class="ratio-6"><img src="/re/img/truck.png"/></div>
			<div class="card-text flex dir-col justify-center ratio-4">
				<p class="comment-text font-reguler font-small">오직 구독으로 누리는 혜택</p>
				<p class="font-medium font-xlarge">빨래방에 갈 필요 없이<br>배달합니다</p>
			</div>
		</div>
	</div>
	<div class="bound p-20 flex justify-end">
		<div class="card flex">
			<div class="card-text flex dir-col justify-center ratio-4">
				<p class="comment-text font-reguler font-small">원하는 날짜를 선택</p>
				<p class="font-medium font-xlarge">원하는 날짜와 주기를<br>선택하세요</p>
			</div>
			<div class="text-right ratio-6"><img src="/re/img/calendar.png"/></div>
		</div>
	</div>
</div>
<div class="review-wrapper over-hidden">
	<p class="comment-text font-medium font-large text-center">고민하지 마세요</p>
	<p class="py-15 font-bold font-xlarge text-center">이미 많은 분들이<br>워싱을 시작했어요</p>
	<div class="swiper">
		<div class="swiper-wrapper">
			<c:forEach items="${list}" var="item">
				<div class="swiper-slide">
					<div class="review-card block-link" data-code="${item.rcode}">
						<div><img src="${item.thumbnail}" /></div>
						<div>
							<span class="font-large font-medium">${item.maskname}님</span>
							<div class="py-10 gray-text font-small font-medium h-95 over-hidden">${item.contents}</div>
							<div class="text-right">
								<span class="font-small font-medium gray-text"><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd"/></span>
							</div>
						</div>
					</div>
				</div>
			</c:forEach>
		</div>
	</div>
</div>