<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>메인</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<script src="/resources/js/main.js"></script>
<!-- 	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> -->
	
	<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick.css" />
	<link rel="stylesheet" type="text/css" href="http://kenwheeler.github.io/slick/slick/slick-theme.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha256-k2WSCIexGzOj3Euiig+TlR8gA0EmPjuc79OEeY5L45g=" crossorigin="anonymous"></script>
	<script type="text/javascript" src="http://kenwheeler.github.io/slick/slick/slick.min.js"></script>

	<link rel="stylesheet" href="/resources/css/main.css" />
	
</head>
<body>
	<div class="nav">
		<div class="slickArea">
			<div>
				<a href="#"><img src="/resources/images/머신.jpg" alt=""></a>
			</div>
			<div>
				<a href="#"><img src="/resources/images/운동용품.jpg" alt=""></a>
			</div>
			<div>
				<a href="#"><img src="/resources/images/운동용품2.jpg" alt=""></a>
			</div>
			<div>
				<a href="#"><img src="/resources/images/스포츠용품.jpg" alt=""></a>
			</div>
		</div>
		<div class="contentArea">
			<div class="sideArea">
				<div class="userInfoNav">
					<div class="profileImg"><img src="/resources/images/프로필.jpg" alt="프로필 이미지" /></div>
					<div>admin</div>
					<div>관리자</div>
					<div>게시글 17개</div>
					<div><button class="profileModify">프로필 수정</button></div>
				</div>
			</div>
			<div class="postArea">
				<div class="exerciseBoard">
					<a href="/category/exerciseBoard">내역 더보기</a>
					<h1>최근 운동 내역</h1>
					<c:forEach items="${exerciseList}" var="item">
						<div>[${item.uv_exercise_name}/${item.uv_weight}kg/${item.uv_amount}개/${item.uv_bt}초]</div>
					</c:forEach>
				</div>
			
				<div class="postBoard">
					<h1>최신 게시글</h1>
					<c:forEach items="${noticeList}" var="item">
						<div>
							<form action="/category/postDetail" method="get">
								<input type="text" name="noticeContent" value="${item.content}">
								<input type="text" name="noticeDt" value="${item.dt}">
								<input type="text" name="noticeOwner" value="${item.owner}">
								<input type="text" name="noticeType" value="${item.type}">
								<input type="submit" name="noticeTitle" value="[공지]${item.title}">
							</form>
						</div>
					</c:forEach>
					<c:forEach items="${freeList}" var="item">
						<div>
							<form action="/category/postDetail" method="get">
								<input type="text" name="freeContent" value="${item.content}">
								<input type="text" name="freeDt" value="${item.dt}">
								<input type="text" name="freeOwner" value="${item.owner}">
								<input type="text" name="freeType" value="${item.type}">
								<input type="submit" name="freeTitle" value="[자유]${item.title}">
							</form>
						</div>
					</c:forEach>	
				</div>
			</div>
		</div>
	</div>
</body>
</html>