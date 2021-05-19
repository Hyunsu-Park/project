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
					alert(data.message);
					location="/";
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