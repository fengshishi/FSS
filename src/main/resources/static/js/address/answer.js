var name_Boolean = false;
var control_Boolean = false;

$(function(){
	$("#name").blur(function(){
		if ((/^[\u4e00-\u9fa5\w\d@\.\-_]{3,10}$/i).test($("#name").val())){
			$("#tip1").html("输入正确 ").css("color","green");
			name_Boolean= true ;
		}else if($("#name").val() == ""){
			$("#tip1").html("标题不能为空 ").css("color","red");
		}
		else{
			$("#tip1").html("输入格式不正确").css("color","red");
			name_Boolean= false;
		}
	});
	
	$("#control").blur(function(){
		if ((/^[\u4e00-\u9fa5\w\d@\.\-_]{3,10}$/i).test($("#control").val())){
			$("#tip2").html("输入正确").css("color","green");
			control_Boolean= true ;
		}else if($("#control").val() == ""){
			$("#tip2").html("内容不能为空 ").css("color","red");
		}
		else{
			$("#tip2").html("输入格式不正确").css("color","red");
			control_Boolean= false;
		}
	});
	
$("#answers").click(function(){
	if(name_Boolean && control_Boolean == true){
		var answersname = $("#name").val()
		var answerscontrol = $("#control").val()
	    var answerstype = $("#anstype").val()
		var dt = $("#dt").val()
		var answers = {
			answersName:answersname,
			answersContent:answerscontrol,
			answersType:answerstype,
			answersDate:dt,
		}
		/*$.ajax({
			type:"POST",
			url:$("#PageContext").val()+"/answers/insertanswers",
			dataType:"text",
			data:answers,
			success:function(data){
				alert(data+"提问成功"); 
				window.location.href = $("#PageContext").val()+"/answers/answersList";
			},
			error:function(data){
				alert(data+"提问失败"); 
			}
		});
	}
	else {
		alert("请完善信息");
	}  */
});

});