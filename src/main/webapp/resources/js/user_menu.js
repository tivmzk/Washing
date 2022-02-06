/*
	.user-btn
	.user-menu
*/

$(function() {
	$('.menu-btn').click(function(e) {
		$('.user-menu').css({
			left:`${e.pageX}px`,
			top:`${e.pageY + 15}px`
		});
		$('.user-menu').toggle();
	});
	
	$('.user-menu').hide();
});