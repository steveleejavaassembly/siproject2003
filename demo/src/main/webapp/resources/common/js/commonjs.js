function aJaxRequestPost(url, param, successCallback){
	var ajaxObj = 
	$.ajax({
		url : url,
		type : "POST",
		data : param,
		dataType : "json",
		contentType : "application/x-www-form-urlencoded;charset=utf-8",
		async : false,
		success : successCallback,
	
		error : function(msg) {
			alert("error" + msg);
		}
	});
}