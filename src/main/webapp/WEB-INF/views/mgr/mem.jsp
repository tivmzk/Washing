<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
	const max = 1;
	const min = 0;
	const path = '/rest/mem';
</script>
<script src="/re/js/member_alt.js"></script>
<table>
	<thead>
		<tr>
			<th>이메일</th>
			<th>비밀번호</th>
			<th>이름</th>
			<th>관리 레벨</th>
			<th>관리</th>
		</tr>
	</thead>
	<tbody>
		<c:forEach items="${list}" var="item">
			<tr>
				<td class="key">${item.email}</td>
				<td>${item.password}</td>
				<td>${item.name}</td>
				<td class="selectable">${item.level}</td>
				<td><a href="mem/delete/${item.email}?page=${pager.page}" class="btn delete-btn mini-btn">탈퇴</a></td>
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

