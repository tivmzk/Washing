/*
	클래스
	delete-btn
	input-btn
	input-box
	input-table
	
	태그
	tbody
	thead input
*/

$(function(){
	/*input 태그 추가*/
	$('.input-btn').click(function(){
		const input = $('<input type="file" name="reviewImages">');
		
		$('.input-box').append(input);
		input.click();
	});
	
	/*사용자에게 추가한 파일 이름 보여주기*/
	$('.input-box').on('change', 'input', function(){
		const file = this.files[0];
		if(file){
			$(this).data('name', file.name);
			const tr = createTr(file);
			
			$('.input-table tbody').append(tr);
		}
		else{
			$(this).remove();	
		}
	});
	
	/*전체 선택*/
	$('.input-table thead input').click(function(){
		$('.input-table tbody input').prop('checked', $(this).prop('checked'));
	});
	
	/*선택한 파일 지우기*/
	$('.delete-btn').click(function(){
		const trList = $('.input-table tbody input:checked').closest('tr');
		const inputList = $('.input-box input');
		
		for(tr of trList){
			for(input of inputList){
				if($(input).data('name') == $(tr).data('name')){
					$(input).remove();
				}	
			}
		}
		
		trList.remove();
	});
});

function createTr(file){
	const tr = $('<tr>')
	.append($('<td><input type="checkbox"></td>'))
	.append($(`<td>${file.name}</td>`));
	
	tr.data('name', file.name);
	
	return tr;
}