var name_Boolean = false;
var diss_Boolean = false;
var phone_Boolean = false;


$(function(){
	$("#name").blur(function(){
		if ((/^[\u4e00-\u9fa5\w\d@\.\-_]{3,10}$/i).test($("#name").val())){
			$("#tip1").html("输入正确 ").css("color","green");
			name_Boolean= true ;
		}else if($("#name").val() == ""){
			$("#tip1").html("收货人名字不能为空 ").css("color","red");
		}
		else{
			$("#tip1").html("输入格式不正确，至少包含3个汉字").css("color","red");
			name_Boolean= false;
		}
	});
		
		
	
	
	$("#diss").blur(function(){
		if ((/^[\u4e00-\u9fa5\w\d@\.\-_]{3,10}$/i).test($("#diss").val())){
			$("#tip3").html("输入正确 ").css("color","green");
			diss_Boolean= true ;
		}else if($("#diss").val() == ""){
			$("#tip3").html("街道地址不能为空 ").css("color","red");
		}
		else{
			$("#tip3").html("输入格式不正确，至少包含3个汉字").css("color","red");
			diss_Boolean= false;
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
$("#address").click(function(){
	if(name_Boolean && diss_Boolean && phone_Boolean == true){
		var addressname = $("#name").val()
		var addsreediss = $("#diss").val()
		var addressphone = $("#phone").val()
		var addressprovice=$("#pro").val()
		var addresscity=$("#city").val()
		var addressxianqu=$("#xq").val()
		var address = {
			addressName:addressname,
			addressProvice:addressprovice,
			addressCity:addresscity,
			addressXianqu:addressxianqu,
			addressDetail:addsreediss,
			addressPhone:addressphone,
		}
		$.ajax({
			type:"POST",
			url:$("#PageContext").val()+"/address/insert",
			dataType:"text",
			data:address,
			success:function(data){
				alert(data+"添加成功"); 
				window.location.href = $("#PageContext").val()+"/address/toshowaddress";
			},
			error:function(data){
				alert(data+"添加失败"); 
			}
		});
	}
	else {
		alert("请完善信息");
	}  
});

});