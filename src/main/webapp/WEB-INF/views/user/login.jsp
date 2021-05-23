<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>로그인</title>
	<link rel="stylesheet" href="/resources/css/reset.css" />
	<link rel="stylesheet" href="/resources/css/login.css" />
	<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script src="/resources/js/login.js"></script>
	<script type="text/javascript">
		window.onload = function() {
			$(function(){
				$(".loginBtn").click(function(){
					let id = $(".id").val();
					let pwd = $(".pwd").val();
			
					let data= {
						id : id,
						pwd : pwd
					}
				//alert(JSON.stringify(data))
				
					$.ajax({
						url : "/user/login",
						type : "post",
						contentType : "application/json",
						data : JSON.stringify(data),
						success : function(data) {
							if(data.status == 'success'){
								location="/";
								alert(data.message);
							}
							else{
								alert(data.message);
							}
						},
						error : function(e){
							console.log(e);
						}
					})
				})	
			})
		}
	</script>

</head>
<body>
	<div class="loginBox">
		<h1>Login</h1>
		<input type="text" class="id" />
		<input type="password" class="pwd" />
		<button class="loginBtn">로그인</button>
	</div>
</body>
</html>