/*
	.slider-wrapper
	.slider-btn
	.slider-content
	.slider-icon
*/

$(function(){
	$('.slider-content').css('display', 'none');
	$('.slider-wrapper .slider-btn').click(function(){
		const content = $(this).closest('.slider-wrapper')
		.find('.slider-content');
		
		content.slideToggle('fast', 'linear', null);
		
		$(this).find('.slider-icon').animate({
			rotate:'+=180deg'
		}, 200);
	});
});