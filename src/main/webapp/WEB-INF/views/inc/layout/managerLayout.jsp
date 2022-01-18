<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>워싱 관리</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	
	<script src="/re/js/jQuery.js"></script>
	<script src="/re/js/uri_search.js"></script>
	
	<link rel="stylesheet" href="/re/css/define.css" />
	<link rel="stylesheet" href="/re/css/layout_mgr.css" />
	<link rel="stylesheet" href="/re/css/elements.css" />
	<link rel="shortcut icon" href="/re/img/logo.png" />
</head>
<body>
	<header id="header" class="flex item-center">
		<tiles:insertAttribute name="header" />
	</header>
	<section class="flex wrapper">
		<aside id="aside" class="ratio-1">
			<tiles:insertAttribute name="aside" />
		</aside>
		<main id="main" class="ratio-9">
			<tiles:insertAttribute name="main" />
		</main>
	</section>
</body>
</html>