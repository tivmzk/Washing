<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<!DOCTYPE html>
<html lang="ko">
<head>
	<title>워싱</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta charset="UTF-8">
	<script src="/re/js/jQuery.js"></script>
	
	<link rel="stylesheet" href="/re/css/define.css" />
	<link rel="stylesheet" href="/re/css/layout_main.css" />
	<link rel="stylesheet" href="/re/css/elements.css" />
	<link rel="shortcut icon" href="/re/img/logo.png" />
</head>
<body class="back-gray">
	<header id="header">
		<tiles:insertAttribute name="header" />
	</header>
	<main id="main">
		<tiles:insertAttribute name="main" />
	</main>
	<footer id="footer">
		<tiles:insertAttribute name="footer" />
	</footer>
</body>
</html>