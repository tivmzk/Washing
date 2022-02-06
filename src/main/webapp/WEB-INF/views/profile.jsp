<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="bound radius-box back-white p-20 pos-center">
	<h1 class="py-20">구독 상세</h1>

	<div class="b-1 bb-none">
		<table class="table">
			<thead>
				<tr>
					<th>받는 사람</th>
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
					<tr>
						<td class="font-small text-center">${item.recipient}</td>
						<td class="font-small text-center">${item.week}</td>
						<td class="font-small text-center">${item.tel}</td>
						<td class="font-small">${item.address}</td>
						<td class="font-small over-hidden">${item.request}</td>
						<td class="font-small text-center"><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd"/></td>
						<td class="text-center"><a class="btn delete-btn mini-btn" href="profile/${item.scode}">구독 취소</a></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="flex justify-center py-30">
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