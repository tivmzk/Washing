<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
	const path = "/review";
</script>
<script src="/re/js/block_link.js"></script>

<div class="pos-center back-white p-20 radius-box">
	<h1 class="font-bold font-title pb-20">리뷰 정보</h1>
	<div class="b-1 bb-none">
		<table class="table">
			<thead>
				<tr>
					<th>일련번호</th>
					<th>이메일</th>
					<th>작성자</th>
					<th>내용</th>
					<th>날짜</th>
					<th>관리</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="item">
					<tr class="block-link hover-pointer" data-code="${item.rcode}">
						<td class="key">${item.rcode}</td>
						<td>${item.email}</td>
						<td>${item.name}</td>
						<td><div class="w-400 h-20 over-auto">${item.contents}</div></td>
						<td><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd hh:mm:ss"/></td>
						<td><a href="rev/delete/${item.rcode}?page=${pager.page}" class="btn delete-btn mini-btn">삭제</a></td>
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
</div>



    