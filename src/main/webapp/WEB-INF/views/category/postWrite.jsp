<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HealthService</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/postWrite.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<!-- 	<script src="/resources/js/postWrite.js"></script> -->
	<script type="text/javascript">
		window.onload = function () {
				$('.modifyBtn').show();
				$('.insertBtn').show();
		
			if( $('.nav > div > input').val() == null || $('.nav > div > input').val() == "" ) {
				$('.modifyBtn').hide();
				$('.insertBtn').show();
				$('.nav > h1').html("게시글 추가")
			}
			else {
				$('.modifyBtn').show();
				$('.insertBtn').hide();
				$('.nav > h1').html("게시글 수정")
			}
		}
	</script>
</head>
<body>

	<div class="nav">
		<select name="category" disabled><!--보드시퀀스를 받아서 넣기 -->
			<option>${param.boardName}</option>
		</select>
		
		<h1>게시글 추가</h1>
		
		<div><input type="text" placeholder="제목을 입력하세요" /></div>
		<div><textarea placeholder="내용을 입력하세요"></textarea></div>
<!-- 		<div>작성자 : (세션아이디주기)</div> -->
		
		<div class="btnArea">
			<button class="backBtn">뒤로가기</button>
			<button class="modifyBtn">글수정</button><!--글정보 불러왔을때만 뜨도록 설계 -->
			<button class="insertBtn">글추가</button><!--글정보 불러왔을때는 안 뜨도록 설계 -->
		</div>
	</div>
</body>
</html>