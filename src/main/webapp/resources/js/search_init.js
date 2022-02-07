$(function(){
	$('.search').change(function(){
		if($(this).val() == 0){
			location.href = `${init_path}`;
		}
	});
});