/*
	필요한 변수들
	path : ajax를 보내는 주소
	
	jsp에 필요한 요소들
	data-code : 기본키
	모달 input 태그의 name 속성에 VO 변수 이름 적기
	
	테이블의 td에 data-name에 VO 변수 이름 적기
	
	class들
	modal, update-modal, add-modal, copy-btn, update-modal-btn, add-modal-btn
*/

$(function() {
	$('.modal').click(function(e) {
		$('.modal').hide();
	});
	$('.modal').children().click(function(e) {
		e.stopPropagation();
	});

	$('.add-modal-btn').click(function() {
		$('.modal.add-modal').show();
	});

	$('.update-modal-btn').click(function() {
		$('.modal.update-modal').show();
	});

	$('body').on('click', '.copy-btn', function() {
		const code = $(this).parent().parent().attr('data-code');
		$.ajax(`${path}?code=${code}`, {
			success: function(result) {
				for (key in result) {
					const elem = $('.modal.update-modal').find(`[name='${key}']`);
					
					if (!elem) continue;
					
					if (elem.hasClass('select')) {
						const options = elem.find('option');
						for (option of options) {
							if (option.value == result[key]) {
								$(option).prop('selected', 'selected');
							}
						}
					}
					else {
						elem.val(result[key]);
					}
				}
			},
			error: function(xhr, status, error) {
				console.log('에러 : ' + error);
			}
		});
	});

	$('.modal.update-modal button').click(function() {
		$('.modal.update-modal').hide();
		const elems = $('.modal.update-modal label').next();
		const item = {};
		for (elem of elems) {
			item[`${$(elem).attr('name')}`] = `${$(elem).val()}`;
		}

		$.ajax(`${path}`, {
			method: `PUT`,
			dataType: 'json',
			contentType: 'application/json',
			data: JSON.stringify(item),
			success: function(result) {
				const tds = $(`[data-code=${result}]`).find('td');
				for (key in item) {
					for(td of tds){
						if($(td).attr('data-name') == key)
							$(td).text(item[key]);	
					}
				}
			},
			error: function(xhr, state, error) {
				console.log('에러 : ' + error);
			}
		});
	});
	
	$('.modal.add-modal button').click(function(){
		$('.modal.add-modal').hide();
		const elems = $('.modal.add-modal label').next();
		const item = {};
		for (elem of elems) {
			item[`${$(elem).attr('name')}`] = `${$(elem).val()}`;
		}
		
		$.ajax(`${path}`, {
			method:'POST',
			dataType:'json',
			contentType:'application/json',
			data:JSON.stringify(item),
			success:function(result){
				location.reload();
			},
			error:function(xhr, status, err){
				console.log('에러 : ' + err);
			}
		});
	});
});