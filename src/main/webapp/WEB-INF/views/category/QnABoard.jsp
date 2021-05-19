<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/include/header.jsp" %>
<%@ include file="/WEB-INF/views/include/footer.jsp" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>QnA</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/QnABoard.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		window.onload = function (){
			$('#question').hover(function(){
				$('.question').addClass('open')
			}, function(){
				$('.question').removeClass('open')
			})
			$('#request').hover(function(){
				$('.request').addClass('open')
			}, function(){
				$('.request').removeClass('open')
			})
			$('#error').hover(function(){
				$('.error').addClass('open')
			}, function(){
				$('.error').removeClass('open')
			})			
		}
	</script>
</head>
<body>
	<div class="QnABoard">
		<h1>문의 게시판</h1>
		<div class="buttonBox">
			<form action="/category/QnAWrite" method="get">
				<input type="number" name="board_seq"value="0"/>
				<button type="submit" id="question">질문하기</button>
			</form>
			<form action="/category/QnAWrite" method="get">
				<input type="number" name="board_seq" value="1"/>
				<button type="submit" id="request">요청하기</button>
			</form>
			<form action="/category/QnAWrite" method="get">
				<input type="number" name="board_seq" value="2"/>
				<button type="submit" id="error">오류신고</button>
			</form>
		</div>
		
		<div class="interpretBox"><!-- hover로 클래스 줘서 설명뜨게 하기 -->
			<p class="question">상품, 서비스에 대해 질문을 하는 곳입니다.</p>
			<p class="request">상품, 서비스에 대해 요청을 하는 곳입니다.</p>
			<p class="error">상품, 서비스 오류를 신고하는 곳입니다</p>
		</div>
		
		<div class="titleArea">
			<div>문의 항목</div>
			<div>문의 내용</div>
			<div>문의 날짜</div>
			<div>답변</div>
		</div>
<%-- 		${QnAList.get(0).qp_board_seq} --%>
		<c:forEach items="${QnAList}" var="item">
			<div class="contentArea">
				<div>
							<select name="" id="" disabled >
						<c:if test="${item.qp_board_seq == 0}">
							<option value="0" selected>질문하기</option>
							<option value="1">요청하기</option>
							<option value="2">오류신고</option>
						</c:if>
						<c:if test="${item.qp_board_seq == 1}">
							<option value="0" >질문하기</option>
							<option value="1" selected>요청하기</option>
							<option value="2" >오류신고</option>
						</c:if>
						<c:if test="${item.qp_board_seq == 2}">
							<option value="0" >질문하기</option>
							<option value="1" >요청하기</option>
							<option value="2" selected>오류신고</option>
						</c:if>
					</select>
				
				</div>
				<div><a href="#">${item.qp_title}</a></div>
				<div>${item.qp_reg_date}</div>
				<div>${item.qp_answer}</div>
				<!-- <div class="buttonArea">
					<button class="modify">수정</button>
					<button class="delete">삭제</button>
				</div> 						들어가서 만들어주기-->
			</div>
		</c:forEach>
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