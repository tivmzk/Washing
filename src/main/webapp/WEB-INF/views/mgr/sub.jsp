<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script>
	const path = "/rest/sub"
</script>
<script src="/re/js/modal.js"></script>
<table>
	<thead>
		<tr>
			<th>일련번호</th>
			<th>이메일</th>
			<th>서비스 주기</th>
			<th>전화번호</th>
			<th>주소</th>
			<th>요청사항</th>
			<th>신청날짜</th>
			<th>관리</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="item">
			<tr data-code="${item.scode}">
				<td data-name="scode">${item.scode}</td>
				<td data-name="email">${item.email}</td>
				<td data-name="week">${item.week}</td>
				<td data-name="tel">${item.tel}</td>
				<td data-name="address">${item.address}</td>
				<td data-name="request">${item.request}</td>
				<td data-name="date"><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
				<td>
					<span class="btn update-btn mini-btn update-modal-btn copy-btn">수정</span>
					<a href="sub/delete/${item.scode}?page=${pager.page}" class="btn delete-btn mini-btn">삭제</a>
				</td>
			</tr>
		</c:forEach>
	</tbody>
</table>
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

<div class="modal update-modal">
	<ul>
		<li class="hidden">
			<label>일련번호</label>
			<input name="scode" type="number" disabled="disabled"/>
		</li>
		<li>
			<label>서비스 주기</label>
			<select name="week" class="select">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
			</select>
		</li>
		<li>
			<label>전화번호</label>
			<input name="tel" type="tel" />
		</li>
		<li>
			<label>주소</label>
			<input name="address" type="text" />
		</li>
		<li>
			<label>요청사항</label>
			<input name="request" type="text" />
		</li>
		<li>
			<button>확인</button>
		</li>
	</ul>
</div>

