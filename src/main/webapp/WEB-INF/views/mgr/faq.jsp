<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
	const path = "/rest/faq"
</script>
<script src="/re/js/modal.js"></script>
<table>
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
<div>
	<span class="btn point-btn add-modal-btn">추가</span>
</div>
<div class="flex justify-center">
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

<div class="modal add-modal">
	<ul>
		<li class="hidden">
			<label>이메일</label>
			<input name="email" type="email" disabled="disabled" value="${sessionScope.user.email}"/>
		</li>
		<li>
			<label>제목</label>
			<input name="title" type="text"/>
		</li>
		<li>
			<label>내용</label>
			<input name="contents" type="text" />
		</li>
		<li>
			<button>확인</button>
		</li>
	</ul>
</div>
<div class="modal update-modal">
	<ul>
		<li class="hidden">
			<label>일련번호</label>
			<input name="fcode" type="number"/>
		</li>
		<li>
			<label>제목</label>
			<input name="title" type="text"/>
		</li>
		<li>
			<label>내용</label>
			<input name="contents" type="text" />
		</li>
		<li>
			<button>확인</button>
		</li>
	</ul>
</div>
    