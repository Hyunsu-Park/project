<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>운동일지</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/exerciseBoard.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		window.onload = function() {
						$('.ad1').show();
						$('.ad2').show();
						$('.ad3').show();
						$('.ad4').show();
						$('.ad5').show();
							
						$('.ad1 > button').click(function(){
							$('.ad1').hide();
						})
						$('.ad2 > button').click(function(){
							$('.ad2').hide();
						})
						$('.ad3 > button').click(function(){
							$('.ad3').hide();
						})
						$('.ad4 > button').click(function(){
							$('.ad4').hide();
						})
						$('.ad5 > button').click(function(){
							$('.ad5').hide();
						})
		
		}	
	</script>
</head>
<body>
	<div class="exerciseBoard">
		<h1>${exerciseList.get(0).uv_date}일 운동일지</h1><!-- 페이저 넘길때는 어떻게 처리할지 고민 -->
		<div class="titleArea">
			<div>운동이름</div>
			<div>무게</div>
			<div>갯수</div>
			<div>쉬는시간</div>
			<div>카테고리</div>
		</div>
		
<!-- 		일별(페이징해서)로 데이터를 보내주기 -->
		<c:forEach items="${exerciseList}" var="item">
			<div class="contentArea">
				<div>${item.uv_exercise_name}</div>
				<div>${item.uv_weight}kg</div>
				<div>${item.uv_amount}개</div>
				<div>${item.uv_bt}초</div>
				<div>${item.uv_category_seq}카테고리</div>
<!-- 					select 로 카테고리 seq 의 운동 보여주기-->
				<div class="btnArea">
					<!-- <button class="modify">수정</button> 안쓰기 -->
					<button class="delete">삭제</button>
				</div>
			</div>
		</c:forEach>
		
		<div class="addBtnArea">
			<button class="insert">세트추가</button>
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
	<div class="advertisingBox">
		<div class="ad1">
			<a href="#"><img src="/resources/images/덤벨세트이미지.jpg" alt="덤벨세트이미지" />
			</a>
			<button>x</button>
		</div>
		<div class="ad2">
			<a href="#"><img src="/resources/images/딥스바 이미지.jpg" alt="딥스바이미지" /></a>
			<button>x</button>
		</div>
		<div class="ad3">
			<a href="#"><img src="/resources/images/바벨이미지.jpg" alt="바벨이미지" /></a>
			<button>x</button>
		</div>
		<div class="ad4">
			<a href="#"><img src="/resources/images/보충제이미지.jpg" alt="보충제이미지" /></a>
			<button>x</button>
		</div>
		<div class="ad5">
			<a href="#"><img src="/resources/images/보충제이미지2.jpg" alt="보충제이미지" /></a>
			<button>x</button>
		</div>
	</div>
</body>
</html>