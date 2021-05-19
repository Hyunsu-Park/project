<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>공지사항</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/noticeBoard.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="noticeBoard">
		<h1> 공지사항 </h1>
		<div class="titleArea">
			<div>번호</div>
			<div>제목</div>
			<div>작성자</div>
			<div>날짜</div>
<!-- 			<div>조회수</div> -->
		</div>
		<c:forEach items="${noticeList}" var="item">
			<div class="contentArea">
				<div>${item.np_seq}</div>
				<div><a href="">${item.np_title}</a></div>
				<div>${item.np_owner}</div>
				<div>${item.np_reg_date}</div>
<!-- 				<div>조회수</div> -->
			</div>
		</c:forEach>

		<div class="addBtnArea"><!--공지추가 관리자만 가능하게 -->
			<form action="/category/postWrite" method="get">
				<input type="text" name="boardName" value="공지사항" />
				<button class="addBtn">공지 추가</button>
			</form>
		</div>
		<div class="funcBox">
			<div class="pager">
				<img src = "/resources/images/leftPager2.png">
				<img src = "/resources/images/leftPager1.png">
	<!-- 			페이지 숫자 -->
				<img src = "/resources/images/rightPager1.png">
				<img src = "/resources/images/rightPager2.png">
			</div>	
		</div>
		<div class="searchBox">
			<input type="text" />
			<button class="searchBtn">검색</button>
		</div>
	</div>
</body>
</html>