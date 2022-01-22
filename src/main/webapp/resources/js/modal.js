/*
	필요한 변수들
	path : ajax를 보내는 주소
	
	jsp에 필요한 요소들
	data-code : 기본키
	모달 input 태그의 class 속성에 VO 변수 이름 적기
*/


$(function(){
	$('#modal').click(function(e){
		$('#modal').hide();
	});
	$('#modal').children().click(function(e){
		e.stopPropagation();
	});
	
	$('body').on('click', '.modal-btn', function(){
		$('#modal').show();
	});
	
	$('body').on('click', '.copy-btn', function(){
		const code = $(this).parent().parent().attr('data-code');
		$.ajax(`${path}?code=${code}`, {
			success:function(result){
				for(key in result){
					const elem = $('#modal').find(`.${key}`);
					elem.attr('data-name', `${key}`);
					if(elem.hasClass('select')){
						const options = elem.find('option');
						for(option of options){
							if(option.value == result[key]){
								$(option).prop('selected', 'selected');
							}
						}
					}
					else{
						elem.val(result[key]);
					}
				}
			},
			error: function(xhr, status, error){
				console.log('에러 : ' + error);
			}
		});
	});
	
	$('#modal button').click(function(){
		$('#modal').hide();
		const elems = $('#modal label').next();
		const item = {};
		for(elem of elems){
			item[`${$(elem).attr('data-name')}`] = `${$(elem).val()}`;
		}
		
		$.ajax(`${path}`,{
			method:'PUT',
			dataType: 'json',
			contentType: 'application/json',
			data:JSON.stringify(item),
			success:function(result){
				const tds = $(`[data-code=${result}]`).find('td');
				let idx = 0;
				for(key in item){
					$(tds[idx++]).text(item[key]);
				}
			},
			error:function(xhr, state, error){
				console.log('에러 : ' + error);
			}
		});
	});
});