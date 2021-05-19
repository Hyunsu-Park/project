<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HealthService</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/shopWrite.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 	<script src="/resources/js/shopWrite.js"></script> -->
	<script type="text/javascript">
		window.onload = function() {
				$('.modifyBtn').show();
				$('.insertBtn').show();
				
				if( $('.productName > input').val() == null || $('.productName > input').val() == "" ){
					$('.modifyBtn').hide();
					$('.insertBtn').show();
					$('.nav > h1').html("상품추가")
				}
				else{
					$('.insertBtn').hide();
					$('.modifyBtn').show();
					$('.nav > h1').html("상품수정")
				}
		
				$('.backBtn').click(function(){
					history.back();
				})
		}
	</script>
</head>
<body>
	<div class="nav">
		<select name="kinds" id="">
			<option value="kinds" selected>물품종류선택</option>
			<c:forEach items="${categoryList}" var="item">
				<option value="${item.seq}">${item.kinds}</option>
			</c:forEach>

		</select>
		<h1></h1>
		<div class="productName"><input type="text" placeholder="상품명을 입력하세요"  /></div>
		<div><input type="text" placeholder="상품가격을 입력하세요"  /></div>
		<div><textarea placeholder="상품정보를 입력하세요"></textarea></div>
<!-- 		<div>세션id 값 저장</div>			안보여도 됨 -->
<!-- 		<div>기본값 자동저장</div>			안보여도 됨 -->
		<div class="fileUpload">
<!-- 			<label for="fileUp">이미지 추가버튼</label> -->
			<input type="file" accept=".gif, .jpg, .png" id="fileUp"/>
		</div>
		
		<div class="btnArea">
			<button class="backBtn">뒤로가기</button>
			<!--history.back();-->			
			<button class="modifyBtn">상품수정</button>
			<!--상품정보 불러왔을때만 뜨도록 설계 -->
			<button class="insertBtn">상품추가</button>
			<!--상품정보 불러왔을때는 안 뜨도록 설계 -->
		</div>
	</div>
</body>
</html>







