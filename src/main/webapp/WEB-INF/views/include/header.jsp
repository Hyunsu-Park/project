<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/header.css" />
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 	<script src="/resources/js/header.js"></script> -->
</head>
<body>
	<div class="headerBox">
		<div class="headerNav">
			<div><a href="/">메인</a></div>
			<div><a href="/category/shopBoard">shop</a></div>
			<div><a href="/category/freeBoard">자유게시판</a></div>
			<div><a href="/category/exerciseBoard">운동일지</a></div>
			<div><a href="/category/noticeBoard">공지사항</a></div>
			<div><a href="/category/QnABoard">문의사항</a></div>
		</div>
		<div class="searchBox">
			<input type="text" />
			<button>검색</button>
		</div>
		<div class="userBox">
			<span>${user}님 환영합니다.</span>
			<a href="/user/logout">로그아웃</a>
		</div>
	</div>
</body>
</html>