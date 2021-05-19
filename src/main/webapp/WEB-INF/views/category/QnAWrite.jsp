<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>신고</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/QnAWrite.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			let board_seq = <%=request.getParameter("board_seq") %>
			
			if( $('#content').val() == '' || $('#content').val() == null ){
					$('.modifyBtn').hide()
					$('.insertBtn').show()
				}
				else{
					$('.modifyBtn').show()
					$('.insertBtn').hide()
				}	
				
			if (board_seq == 0) {
				$('.nav h1').html("질문 하기")
				$('.modifyBtn').html("질문 수정")
				$('.insertBtn').html("질문 하기")
				$('.nav select').val(0).selected
			}
			if (board_seq == 1) {
				$('.nav h1').html("요청 하기")
				$('.modifyBtn').html("요청 수정")
				$('.insertBtn').html("요청 하기")
				$('.nav select').val(1).selected
			}
			if (board_seq == 2) {
				$('.nav h1').html("신고 하기")
				$('.modifyBtn').html("신고 수정")
				$('.insertBtn').html("신고 하기")
				$('.nav select').val(2).selected
			}
		}
		
		$('#modifyBtn').click(function(){
			
		})
		$('#insertBtn').click(function(){

		})
		
	</script>
</head>
<body>
	<div class="nav">
		<%--${param.board_seq} 파라미터로 받아온 데이터를 jsp에서 쓰려면 이렇게 해줘도 가능하다--%>
		<h1></h1>
		<select name="" id="" disabled>
			<option>카테고리 선택</option>
			<option value="0">질문란</option>
			<option value="1">요청란</option>
			<option value="2">신고란</option>
		</select>
		
		
		<div>*아이디 :  <input type="text" value="" disabled/></div><!--value에는 세션id 값 자동 저장시키기-->

		<div>*전화번호 : <input type="text" placeholder="전화번호를 입력하세요"  /></div>
		<div>*내용 : <textarea id="content" placeholder="내용을 입력하세요"></textarea></div>

		<div class="fileUpload">
			<label for="fileUp">이미지추가</label>
			<input type="file" accept=".gif, .jpg, .png" id="fileUp"/>
		</div>
		
		<div class="btnArea">
			<button class="backBtn">뒤로가기</button><!--history.back();-->	
			<!--js로 보드seq값을 확인뒤 밑의 2개중 한개 보여주기 -->
			<button class="modifyBtn">신고수정</button><!--신고정보 불러왔을때만 뜨도록 설계 -->
			<button class="insertBtn">신고하기</button><!--신고정보 불러왔을때는 안 뜨도록 설계 -->
		</div>
	</div>
</body>
</html>