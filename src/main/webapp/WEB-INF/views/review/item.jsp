<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<div class="bound">
	<h1>워싱한 후기</h1>
	<div>
		<div><span><fmt:formatDate value="${item.date}" pattern="yyyy-MM-dd"/></span></div>
		<div><img src="" alt="" /></div>
		<div><span>${item.name}</span></div>
		<div><p>${item.contents}</p></div>
	</div>
</div>
