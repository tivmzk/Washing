/*
	path : 이동하는 경로
*/

$(function(){
	$('.block-link').click(function(){
		const code = $(this).attr('data-code');
		location.href = path+'/'+code;
	});
});