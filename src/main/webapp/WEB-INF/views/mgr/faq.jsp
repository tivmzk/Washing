<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
	const path = "/rest/faq";
	const init_path = "/mgr/faq";
</script>
<script src="/re/js/modal.js"></script>
<script src="/re/js/search_init.js"></script>
<div class="pos-center back-white p-20 radius-box">
	<div class="flex justify-between item-center pb-20">
		<h1 class="font-bold font-title pr-30">FAQ 정보</h1>
		<form class="b-1 p-10 radius-box">
			<select class="b-none outline-none search" name="search">
				<option value="0" ${pager.search == 0 ? "selected" : ''}>처음으로</option>
				<option value="1" ${pager.search == 1 ? "selected" : ''}>일련번호</option>
				<option value="2" ${pager.search == 2 ? "selected" : ''}>이메일</option>
				<option value="3" ${pager.search == 3 ? "selected" : ''}>제목</option>
				<option value="4" ${pager.search == 4 ? "selected" : ''}>내용</option>
			</select>
			<input class="b-none outline-none" type="text" name="keyword" value="${pager.keyword}"/>
		</form>
	</div>
	<div class="b-1 bb-none">
		<table class="table">
			<thead>
				<tr>
					<th>일련번호</th>
					<th>이메일</th>
					<th>제목</th>
					<th>날짜</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="item">
					<tr data-code="${item.fcode}">
						<td class="key" data-name="fcode">${item.fcode}</td>
						<td data-name="email">${item.email}</td>
						<td data-name="title">${item.title}</td>
						<td data-name="date"><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
						<td>
							<span class="btn update-btn mini-btn update-modal-btn copy-btn">수정</span>
							<a href="faq/delete/${item.fcode}?page=${pager.page}" class="btn delete-btn mini-btn">삭제</a>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="flex justify-center pt-20">
		<ul class="flex pagnation">
			<c:if test="${pager.page != 1}">
				<li><a href="?page=1&${pager.query}">&lt;&lt;</a></li>
			</c:if>
			<c:if test="${pager.page != 1}">
				<li><a href="?page=${pager.prev}&${pager.query}">&lt;</a></li>
			</c:if>
			<c:forEach var="page" items="${pager.list}">
				<li><a href="?page=${page}&${pager.query}"
					class="${pager.page==page?'active':''}">${page}</a></li>
			</c:forEach>
			<c:if test="${pager.page != pager.end}">
				<li><a href="?page=${pager.next}&${pager.query}">&gt;</a></li>
			</c:if>
			<c:if test="${pager.page != pager.end}">
				<li><a href="?page=${pager.end}&${pager.query}">&gt;&gt;</a></li>
			</c:if>
		</ul>
	</div>
	<div class="pt-15 flex justify-end">
		<span class="btn point-btn add-modal-btn">추가</span>
	</div>
</div>



<div class="modal add-modal">
	<ul class="w-800">
		<li class="hidden">
			<label>이메일</label>
			<input class="w-100p" name="email" type="email" disabled="disabled" value="${sessionScope.user.email}"/>
		</li>
		<li class="input-wrapper">
			<label>제목</label>
			<input class="w-100p" name="title" type="text"/>
		</li>
		<li class="input-wrapper">
			<label>내용</label>
			<input class="w-100p" name="contents" type="text" />
		</li>
		<li class="flex justify-end">
			<button class="btn confirm-btn">확인</button>
		</li>
	</ul>
</div>
<div class="modal update-modal">
	<ul class="w-800">
		<li class="hidden">
			<label>일련번호</label>
			<input class="w-100p" name="fcode" type="number"/>
		</li>
		<li class="input-wrapper">
			<label>제목</label>
			<input class="w-100p" name="title" type="text"/>
		</li>
		<li class="input-wrapper">
			<label>내용</label>
			<input class="w-100p" name="contents" type="text" />
		</li>
		<li class="flex justify-end">
			<button class="btn confirm-btn">확인</button>
		</li>
	</ul>
</div>
    