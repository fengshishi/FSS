var bname = false;
var bpwd= false;

$(function(){
	
	//验证用户名
	$("#businessName").blur(function(){
		var businessName=$("#businessName").val();
		 if(businessName ==""|| businessName==null){
			 $("#businessName").focus;
			$("#tip1").html("账号不为空！").css("color","red");
			bname= false;
		 }
		else{
			$("#tip1").html("✔").css("color","green");
			bname= true;
		}
	});
	
	//验证密码
	$("#businessPwd").blur(function(){
		var businessPwd=$("#businessPwd").val();
		 if(businessPwd ==""|| businessPwd==null){
			 $("#businessPwd").focus;
			$("#tip2").html("密码不为空！").css("color","red");
			bname= false;
		 }
		else{
			$("#tip2").html("✔").css("color","green");
			bpwd= true;
		}
	});
		
	//验证码
	function genTimestamp() {
		var time = new Date();
		return time.getTime();
	}

	$("#changeVerifImageRegister").click(function(){
		alert("被点击了！");
		$('#verifyCodeImage').attr(
				'src',
				'http://localhost:8080/business/getVerifyCode?timestamp='+genTimestamp()
				);
	});
	
	$("#login").click(function(){
		if(bname && bpwd == true){
			var businessName=$("#businessName").val();
			var businessPwd=$("#businessPwd").val();
			var verifyCode=$("#user_input_verifyCode").val();
			var business = {
				"businessName":businessName,
				"businessPwd":businessPwd,
				"verifyCode":verifyCode
			}
			$.ajax({
				type : "post",
				url : "/business/login",
				data : business,
				dataType : "text",
				success : function(data) {
					alert("succ:"+data);
					if(data == "succ")
						window.location.href = "/books/find";
				},
				error : function(data) {
					alert("fail:" + data);
				}
			});
		}
		else{
			alert("登录失败");
			window.location.href = "/business/tologin";
		}
	});
});


