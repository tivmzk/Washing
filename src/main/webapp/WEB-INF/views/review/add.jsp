<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script src="/re/js/input_append.js"></script>
    
<div class="py-50">
	<form class="bound radius-box back-white p-20" method="post" enctype="multipart/form-data">
		<h1 class="font-title font-bold text-center py-20">리뷰 작성</h1>
		<input type="hidden" name="email" value="${sessionScope.user.email}"/>
		<div class="py-20">
			<textarea class="w-100p p-5 mh-600" required name="contents" placeholder="리뷰를 입력해주세요"></textarea>
		</div>
		<div class="hidden input-box">
		</div>
		<div class="flex justify-end pb-10">
			<div class="pr-10">
				<button type="button" class="btn point-btn mini-btn input-btn">내 PC</button>
			</div>
			<div>
				<button type="button" class="btn delete-btn mini-btn">삭제</button>
			</div>
		</div>
		<div class="b-1 h-200 over-auto pos-re">
			<table class="input-table table">
				<thead class="pos-top">
					<tr>
						<th class="w-50"><input type="checkbox" /></th>
						<th>파일명</th>
					</tr>
				</thead>
				<tbody>
				</tbody>
			</table>
		</div>
		
		
		<div class="pt-15 flex justify-end">
			<button class="btn confirm-btn" type="submit">확인</button>
		</div>
	</form>
</div>
