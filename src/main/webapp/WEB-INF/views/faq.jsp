<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<div>
	<div class="bound">
		<h5>자주 묻는 질문</h5>
		<h1>무엇을 도와드릴까요?</h1>
		<div>
			<input type="text" />
			<img src="/re/svg/search.svg"/>
		</div>
	</div>
	<div class="bound">
		<h2>정보</h2>
		<ul>
			<c:forEach items="${list}" var="item">
				<li>
					<div>
						<h3>${item.title}</h3>
						<img src="/re/svg/drop_down.svg"/>
					</div>
					<div>
						<p>${item.contents}</p>
					</div>
				</li>	
			</c:forEach>		
		</ul>
	</div>
</div>