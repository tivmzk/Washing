/*
	levelList : 설정 가능한 권한 레벨을 저장한다
	prevValue : 수정하기 전의 레벨을 저장한다
*/
let levelList;
let prevValue;

$(function() {
	/*권한 레벨을 가져온다*/
	$.ajax(path,{
		method:'GET',
		success:function(result){
			levelList = result;
		}
	});
	
	/*클릭 시 select가 생기고 값을 변경할 수 있다*/
	$('body').on('click', '.selectable', function() {
		prevValue = $(this).text();
		const input = $(`<td>`).append(createSelect(prevValue));
		$(this).after(input);
		$(this).remove();
		$('#input').focus();
	});
	/*focus가 풀리면 값을 변경한다*/
	$('body').on('blur', '#input', function() {
		updateLevel();
	});
});

function createSelect(curr){
	const select = $('<select id="input">');
	
	for(num of levelList){
		select.append(`<option ${num == curr ? 'selected' : ''}>${num}</option>`);
	}
	
	return select;
}

function updateLevel() {
	const item = {
		email: $('#input').parent().prev().prev().prev().text(),
		level: $('#input').val()
	};
	
	if(prevValue == item.level) {
		applyLevel(prevValue);
		return;	
	}

	$.ajax(`${path}`, {
		method: 'PUT',
		data: JSON.stringify(item),
		dataType: 'json',
		contentType: 'application/json; charset=UTF-8',
		success: function(result) {
			applyLevel(result);
		},
		error: function(xhr, status, err) {
			alert('수정 실패 : ' + err);
		}
	});
}

function applyLevel(result) {
	$('#input').parent().after($(`<td class="selectable">${result}</td>`));
	$('#input').parent().remove();
}