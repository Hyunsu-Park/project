<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>신고</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/report.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
	<div class="nav">
		<h1>신고하기</h1>
		<select name="" id="">
			<option value="">신고 종류 선택</option>
			<option value="">상품 신고</option>
			<option value="">회원 신고</option>
			<option value="">각종 오류 신고</option>
		</select>
		<div>*아이디 :  <input type="text" /></div>
<!-- 		아이디 -->
		<div>*전화번호 : <input type="text" placeholder="전화번호를 입력하세요"  /></div>
		<div>*신고내용 : <textarea placeholder="내용을 입력하세요"></textarea></div>
<!-- 		<div>세션id 값 저장</div>			안보여도 됨 -->
<!-- 		<div>기본값 자동저장</div>			안보여도 됨 -->
		<div class="fileUpload">
			<label for="fileUp">이미지추가</label>
			<input type="file" accept=".gif, .jpg, .png" id="fileUp"/>
		</div>
		
		<div class="btnArea"><!--jstl로 보드seq값을 확인뒤 3개중 한개 보여주기 -->
			<button class="backBtn">뒤로가기</button><!--history.back();-->	
			<button class="modifyBtn">신고수정</button><!--신고정보 불러왔을때만 뜨도록 설계 -->
			<button class="insertBtn">신고하기</button><!--신고정보 불러왔을때는 안 뜨도록 설계 -->
		</div>
	</div>
</body>
</html>