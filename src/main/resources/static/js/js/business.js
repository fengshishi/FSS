var bname = false;
var bpwd= false;
var bemail = false;
var bphone= false;
$(function(){
	
	$("#name").blur(function(){
		if ((/^[a-z0-9_-]{4,8}$/).test($("#name").val())){
			$("#tip1").html(" √ ").css("color","green");
			bname= true ;
		}else if($("#name").val() == ""){
			$("#tip1").html("用户名不为空！").css("color","red");
		}
		else{
			$("#tip1").html("输入格式错误!由数字和字母组成，长度4~8位").css("color","red");
			bname= false;
		}
	});
	$("#password").blur(function(){
		if ((/^[a-z0-9_-]{6,16}$/).test($("#password").val())){
			$("#tip2").html(" √ ").css("color","green");
			bpwd = true;
		}else if($("#password").val() == ""){
			$("#tip2").html("密码不为空！").css("color","red");
		}
		else {
			$("#tip2").html("密码格式不正确！6-16位密码").css("color","red");
			bpwd = false;
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
			$("#tip3").html(" √ ").css("color","green");
			bemail  = true;
		}else if($("#email").val() == ""){
			$("#tip3").html("Email不为空  ").css("color","red");
		}
		else {
			$("#tip3").html("Email格式不正确\n必须包含.和@ ").css("color","red");
			bemail  = false;
		}
	}); 


	$("#phone").blur(function(){
		if ((/^1[34578]\d{9}$/).test($("#phone").val())){
			$("#tip4").html(" √ ").css("color","green");
			bphone = true;
		}else if($("#phone").val() == ""){
			$("#tip4").html("手机号不为空   ").css("color","red");
		}
		else {
			$("#tip4").html("手机号位数不正确 ").css("color","red");
			bphone = false;
		}
	});
	$("#regist").click(function(){
		if(bname && bpwd && bemail && bphone == true){
			var username = $("#name").val()
			var password = $("#password").val()
			var email = $("#email").val()
			var phone = $("#phone").val()
			var dt = $("#dt").val()
			var business = {
				businessName:username,
				businessPwd:password,
				businessEmail:email,
				businessPhone:phone,
				createTime:dt
			}
			$.ajax({
				type:"POST",
				url:$("#PageContext").val()+"/business/regist",
				dataType:"text",
				data:business,
				success:function(data){
					alert(data+"注册成功"); 
					window.location.href = $("#PageContext").val()+"/business/tologin";
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




