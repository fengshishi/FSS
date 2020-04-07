var bname = false;
var bpwd= false;

$(function(){
	
	//验证用户名
	$("#userName").blur(function(){
		var userName=$("#userName").val();
		 if(userName ==""|| userName==null){
			 $("#userName").focus;
			$("#tip1").html("用户名不为空！").css("color","red");
			bname= false;
		 }
		else{
			$("#tip1").html("✔").css("color","green");
			bname= true;
		}
	});
	
	//验证密码
	$("#userPwd").blur(function(){
		var userPwd=$("#userPwd").val();
		 if(userPwd ==""|| userPwd==null){
			 $("#userPwd").focus;
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
				'http://localhost:8080/user/getVerifyCode?timestamp='+genTimestamp()
				);
	});
	
	
	//登录
	$("#login").click(function(){
		if(bname && bpwd == true){
			var userName = $("#userName").val();
			var userPwd = $("#userPwd").val();
			var verifyCode=$("#user_input_verifyCode").val();
			var user = {
				"userName":userName,
				"userPwd":userPwd,
				"verifyCode":verifyCode
			}
			$.ajax({
				type : "post",
				url : "/user/login",
				data : user,
				dataType : "text",
				success : function(data) {
					alert("succ:"+data);
					if(data == "succ")
						window.location.href = "/web/index1";
				},
				error : function(data) {
					alert("fail:" + data);
				}
			});
		}
		else{
			alert("登录失败");
			window.location.href = "/user/tologin";
		}
	});
});




