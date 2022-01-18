$(function(){
	const uri = $(location).attr('pathname');
	const list = uri.split('/');
	const local = list[list.length - 1];
	
	$(`[data-path='${local}']`).addClass('here');
});