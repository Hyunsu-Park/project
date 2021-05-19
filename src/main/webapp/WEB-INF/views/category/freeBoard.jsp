<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>자유게시판</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/freeBoard.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		window.onload = function() {

		}	
	</script>
</head>
<body>
<!-- 			$('.addBtn').click(function(){ -->
<!-- 				location.href="/category/postWrite" -->
<!-- 			}) -->
	<div class="freeBoard">
		<h1>자유게시판</h1>
		
		<div class="titleArea">
			<div>번호</div>
			<div>제목</div>
			<div>작성자</div>
			<div>날짜</div>
			<div>추천수</div>
		</div>
		<c:forEach items="${postList}" var="item">
			<div class="contentArea">
				<div>${item.fp_seq}</div>
				<div><a href="#">${item.fp_title}</a></div>
				<div>${item.fp_owner}</div>
				<div>${item.fp_reg_date}</div>
				<div>${item.fp_like}</div>
				<!-- <button class="delete">삭제</button> 	들어가서 삭제하기 		
							세션데이터로 등급받아서 관리자+작성자 삭제기능 //들어가면 수정도 가능하게  -->
							<!-- 안쪽에 조회수도 만들어주면 좋고 아니면 말구	<div>조회수</div> -->
			</div>
			
		</c:forEach>
		<div class="addBtnArea">
				<form action="/category/postWrite" method="get">
					<input type="text" name="boardName" value="자유게시판"/>
					<button type="submit" class="addBtn" >게시글 추가</button>
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