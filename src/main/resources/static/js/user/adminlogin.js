var name = false;
var password = false;
$(function(){

	$("#name").blur(function(){
		if ((/^[a-z0-9_-]{4,8}$/).test($("#name").val())){
			$("#tip1").html("✔ ").css("color","green");
			name= true ;
		}else if($("#name").val() == ""){
			$("#tip1").html("用户名不为空 ").css("color","red");
		}
		else{
			$("#tip1").html("输入格式不正确").css("color","red");
			name= false;
		}
	});
	$("#password").blur(function(){
		if ((/^[a-z0-9_-]{6,16}$/).test($("#password").val())){
			$("#tip2").html("✔").css("color","green");
			password = true;
		}else if($("#password").val() == ""){
			$("#tip2").html("密码不为空  ").css("color","red");
		}
		else {
			$("#tip2").html("密码格式不正确 ").css("color","red");
			password = false;
		}
	}); 
	/*$("#login").click(function(){
		if(name && password == true){
			var adminname = $("#name").val()
			var password = $("#password").val()
			var admin = {
				adminName:adminname,
				adminPwd:password}
			$.ajax({
				type:"POST",
				url:'admin/login',
				dataType:"text",
				data:admin,
				success:function(data){
					alert(data+"登录成功"); 
					window.location.href ='web/index';
				},
				error:function(data){
					alert(data+"登录失败");

				}
			});
		}
		else {
			alert("请完善信息");


		}  
	});*/

});