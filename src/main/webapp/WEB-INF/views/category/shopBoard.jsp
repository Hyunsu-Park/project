<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>샵</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/shopBoard.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			$('.addBtn').click(function() {
				location.href="/category/shopWrite"
			})
		}
	</script>
</head>
<body>

	<div class="shopBoard">
		<h1>스포츠 용품 샾</h1>
		<div class="titleArea">
			<div>상품번호</div>
			<div>상품이름</div>
			<div>상품이미지</div>
			<div>판매자</div>
			<div>상품등록날짜</div>
		</div>
		<c:forEach items="${productList}" var="item">
			<div class="contentArea">
				<div>${item.pi_seq}</div>
				<div><a href="#">${item.pi_name}</a></div>
				<div><a href="#"><img src="${item.pi_img}" alt="" /></a></div>
				<div>${item.pi_seller}</div>
				<div><fmt:formatDate value="${item.pi_reg_date}" pattern="yyyy-MM-dd hh:mm"></fmt:formatDate></div>
			</div>
		</c:forEach>
	
<!-- 		<div class="contentArea"> -->
<!-- 			<div>1</div> -->
<!-- 			<div><a href="#">푸쉬업바</a></div> -->
<!-- 			<div><a href="#">상품이미지</a></div> -->
<!-- 			<div>애드민</div> -->
<!-- 			<div>2021-04-25</div> -->
<!-- 		</div> -->
<!-- 		<div class="contentArea"> -->
<!-- 			<div>1</div> -->
<!-- 			<div><a href="#">푸쉬업바</a></div> -->
<!-- 			<div><a href="#">상품이미지</a></div> -->
<!-- 			<div>애드민</div> -->
<!-- 			<div>상품등록날짜</div> -->
<!-- 		</div> -->
<!-- 		<div class="contentArea"> -->
<!-- 			<div>1</div> -->
<!-- 			<div><a href="#">푸쉬업바</a></div> -->
<!-- 			<div><a href="#">상품이미지</a></div> -->
<!-- 			<div>애드민</div> -->
<!-- 			<div>상품등록날짜</div> -->
<!-- 		</div> -->
		<div class="addBtnArea">
<!-- 			<form action="/category/shopWrite" method="get"> -->
<!-- 				<input type="number"  /> -->
			<button class="addBtn">상품 추가</button>
<!-- 			</form> -->
		</div>
		<div class="funcBox">
<!-- 			<div class="listBtn"> -->
<!-- 				<a href="/category/shopBoard">샵목록</a> -->
<!-- 			</div>	디테일 들어가서 추가해주기 -->
			
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