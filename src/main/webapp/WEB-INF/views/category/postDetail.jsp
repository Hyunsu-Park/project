<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>HealthService</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/postDetail.css" />
	<script src="http://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			$('.backBtn').click(function(){
				history.back();
			})
		}

	</script>
</head>
<body>
	<div class="nav">
		<c:if test="${param.freeTitle == null && param.noticeTitle != null}">
			<div class="noticeTitle">${param.noticeTitle}</div>
			<div>
				<div>작성자 : ${param.noticeOwner}</div>  
				<div>작성일 : ${param.noticeDt}</div>
			</div>
			<div>	
				${param.noticeContent}
			</div>
			<div><button>추천</button><button>비추천</button></div>
			<div class="btnArea">
				<button class="backBtn">뒤로가기</button>
				<c:if test="${param.freeOwner == user || type == 2}">
					<button class="noticeModifyBtn">수정</button><!-- 본인 또는 관리자만 jstl -->
					<button class="noticeDeleteBtn">삭제</button><!-- 본인 또는 관리자만 jstl -->
				</c:if>
			</div>
		</c:if>


		<c:if test="${param.noticeTitle == null && param.freeTitle != null}">
			<div class="freeTitle">${param.freeTitle}</div>
			<div>
				<div>작성자 : ${param.freeOwner}</div>  
				<div>작성일 : ${param.freeDt}</div>
			</div>
			<div>	
				${param.freeContent}
			</div>
			<div><button>추천</button><button>비추천</button></div>
			<div class="btnArea">
				<button class="backBtn">뒤로가기</button>
				<c:if test="${param.freeOwner == user || type == 2}"><!--ui_type 조인 걸어서 타입으로 관리자일 경우 체크-->
					<button class="freeModifyBtn">수정</button><!-- 본인 또는 관리자만 jstl -->
					<button class="freeDeleteBtn">삭제</button><!-- 본인 또는 관리자만 jstl -->
				</c:if>
			</div>
		</c:if>
	</div>
</body>
</html>