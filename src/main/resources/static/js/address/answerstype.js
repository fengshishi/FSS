$(function(){
	getIntype();
});

function getIntype(){
	var antypeName=$("#anstype").val();
	var antype={"antypeName":antypeName}
	$.ajax({
		url:"/type/showtype",
		type:"post",
		dataType:"json",
		data:antype,
		
		success:function(data){
			var len = data.length;
			for(var i=0;i<len;i++){
				var option = document.createElement("option");
				$("#anstype").append(('<option value='+data[i].antypeId+'>'+data[i].antypeName+'</option>'));
			}
		},
		error:function(data){
			console.log(data);
		}
	})
}