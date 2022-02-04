/*
	#valid-form
	#submit
	#id
	#password
	#confirm-password
	.valid
	
	signup-validation.css
*/

$(function(){
	$('#valid-form #submit').click(function(){
		const inputs = $('#valid-form .valid');
		
		for(input of inputs){
			if(!$(input).data('confirm') ||
				$(input).data('confirm') == 'false'){
				alert('잘못된 입력 입니다.');
				$(input).focus();
				return false;
			}
		}
	});
	
	$('#valid-form #id').on('blur', function(){
		const id = $(this).val();
		$.ajax(`${path}?id=${id}`, {
			success:function(result){
				if(id != "" && result == "ok"){
					$('#valid-form #id').data('confirm', 'true');
					$('#valid-form #id').addClass('ok');
					$('#valid-form #id').removeClass('no');
				}
				else{
					$('#valid-form #id').data('confirm', 'false');
					$('#valid-form #id').addClass('no');
					$('#valid-form #id').removeClass('ok');
				}
			},
			error:function(xhr, status, err){
				console.log("아이디 검증 에러 : "+err);
			}
		});
	});
	
	$('#valid-form #confirm-password').blur(function(){
		const pass = $('#valid-form #password').val();
		const conpass = $('#valid-form #confirm-password').val();
		
		if(pass != "" && conpass != "" && pass == conpass){
			$('#valid-form #password').data('confirm', 'true');
			$('#valid-form #confirm-password').data('confirm', 'true');
			$('#valid-form #password').addClass('ok');
			$('#valid-form #confirm-password').addClass('ok');
			$('#valid-form #password').removeClass('no');
			$('#valid-form #confirm-password').removeClass('no');
		}
		else{
			$('#valid-form #password').data('confirm', 'false');
			$('#valid-form #confirm-password').data('confirm', 'false');
			$('#valid-form #password').addClass('no');
			$('#valid-form #confirm-password').addClass('no');
			$('#valid-form #password').removeClass('ok');
			$('#valid-form #confirm-password').removeClass('ok');
		}
	});
});