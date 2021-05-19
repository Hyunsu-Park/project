<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
				<h1>최근 운동 내역</h1>
				<div>운동이름/ 무게 / 갯수 / 쉬는시간 / 카테고리</div>
				<div>#################</div>
				<div>3################</div>
				<div>################</div>
				<div>################</div>
				<div>############################</div>
				<div>################</div>
				<div>################</div>
				<div>################</div>
				<div>################################</div>
			</div>
			
			<div class="postBoard">
<!-- 			게시글 전체 조인 걸어서 최신글 빼오기 -->
				<h1>최근 작성 게시글</h1>
				<div><a href="">[공지]게시글 전체 조인 걸어서 최신글 빼오기#####</a></div>
				<div><a href="">[자유]게시글 전체 조인 걸어서 최신글 빼오기@@@@@@</a></div>
				<div><a href="">a태그 밑줄 없애주기 글자색바꾸기</a></div>
				<div><a href="">4</a></div>
				<div><a href="">5</a></div>
				<div><a href="">6</a></div>
				<div><a href="">7</a></div>
				<div><a href="">8</a></div>
				<div><a href="">9</a></div>
				<div><a href="">10</a></div>
			</div>
			
	<!-- 		<div class="shopBaord"> -->
	<!-- 			<h1>샵 인기상품</h1> -->
	<!-- 			<div>1</div> -->
	<!-- 			<div>2</div> -->
	<!-- 			<div>3</div> -->
	<!-- 			<div>4</div> -->
	
	<!-- 			<h1>샵 최신상품</h1> -->
	<!-- 			<div>6</div> -->
	<!-- 			<div>7</div> -->
	<!-- 			<div>8</div> -->
	<!-- 			<div>9</div> -->
	
	<!-- 		</div> -->
			</div>
		</div>
	</div>
</body>
</html>