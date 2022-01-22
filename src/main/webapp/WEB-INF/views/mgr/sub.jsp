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
				<td>${item.scode}</td>
				<td>${item.email}</td>
				<td>${item.week}</td>
				<td>${item.tel}</td>
				<td>${item.address}</td>
				<td>${item.request}</td>
				<td><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
				<td><span class="btn update-btn mini-btn modal-btn copy-btn">수정</span><span class="btn delete-btn mini-btn">삭제</span></td>
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

<div id="modal">
	<ul>
		<li>
			<label>일련번호</label>
			<input class="scode" type="number" disabled="disabled"/>
		</li>
		<li>
			<label>이메일</label>
			<input class="email" type="email" disabled="disabled"/>
		</li>
		<li>
			<label>서비스 주기</label>
			<select class="week select">
				<option value="1">1</option>
				<option value="2">2</option>
				<option value="3">3</option>
				<option value="4">4</option>
			</select>
		</li>
		<li>
			<label>전화번호</label>
			<input class="tel" type="tel" />
		</li>
		<li>
			<label>주소</label>
			<input class="address" type="text" />
		</li>
		<li>
			<label>요청사항</label>
			<input class="request" type="text" />
		</li>
		<li>
			<button>확인</button>
		</li>
	</ul>
</div>

