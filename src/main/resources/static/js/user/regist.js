var user_Boolean = false;
var password_Boolean = false;
var email_Boolean = false;
var phone_Boolean = false;

$(function(){
	
	$("#name").blur(function(){
		if ((/^[a-z0-9_-]{4,8}$/).test($("#name").val())){
			$("#tip1").html("输入正确 ").css("color","green");
			user_Boolean= true ;
		}else if($("#name").val() == ""){
			$("#tip1").html("用户名不为空 ").css("color","red");
		}
		else{
			$("#tip1").html("输入格式不正确").css("color","red");
			user_Boolean= false;
		}
	});
	$("#password").blur(function(){

		if ((/^[a-z0-9_-]{6,16}$/).test($("#password").val())){
			$("#tip2").html("输入正确").css("color","green");
			password_Boolean = true;
		}else if($("#password").val() == ""){
			$("#tip2").html("密码不为空  ").css("color","red");
		}
		else {
			$("#tip2").html("密码格式不正确 ").css("color","red");
			password_Boolean = false;
		}
	}); 

	$("#eyesHide").click(function(){
		if($("#password").attr("type")=="password"){
			$("#password").attr('type','text');
			$("#eyesShow").show();
			$("#eyesHide").hide();
		}
	});

	$("#eyesShow").click(function(){
		if($("#password").attr("type")=="text"){
			$("#password").attr('type','password');
			$("#eyesShow").hide();
			$("#eyesHide").show();
		}
	});


	$("#email").blur(function(){
		if ((/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/).test($("#email").val())){
			$("#tip3").html("输入正确").css("color","green");
			email_Boolean  = true;
		}else if($("#email").val() == ""){
			$("#tip3").html("Email不为空  ").css("color","red");
		}
		else {
			$("#tip3").html("Email格式不正确\n必须包含.和@ ").css("color","red");
			email_Boolean  = false;
		}
	}); 


	$("#phone").blur(function(){
		if ((/^1[34578]\d{9}$/).test($("#phone").val())){
			$("#tip4").html("输入正确 ").css("color","green");
			phone_Boolean = true;
		}else if($("#phone").val() == ""){
			$("#tip4").html("手机号不为空   ").css("color","red");
		}
		else {
			$("#tip4").html("手机号位数不正确 ").css("color","red");
			phone_Boolean = false;
		}
	});

	
	
	$("#register").click(function(){
		if(user_Boolean && password_Boolean && email_Boolean && phone_Boolean   == true){
			var username = $("#name").val()
			var password = $("#password").val()
			var email = $("#email").val()
			var phone = $("#phone").val()
			var dt = $("#dt").val()
			var user = {
				userName:username,
				userPwd:password,
				userEmail:email,
				userPhone:phone,
				createTime:dt
			}
			$.ajax({
				type:"POST",
				url: "/user/regist",
				dataType:"text",
				data:user,
				success:function(data){
					alert(data+"注册成功"); 
					alert("/user/tologin");
					window.location.href = "/user/tologin";
				},
				error:function(data){
					alert(data+"注册失败"); 
				}
			});
		}
		else {
			alert("请完善信息");
		}  
	});
});




