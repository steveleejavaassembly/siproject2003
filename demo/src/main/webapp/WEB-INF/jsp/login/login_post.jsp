<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body> 
	<h1>포스트 로그인 페이지</h1>
		id:<input type="text" id="userName" name="userName">
		pw:<input type="text" id="password" name="password">
		<button onclick="idchkbtn()" id="idchkbtn" >로그인</button>
	<c:if test="${usercnt < 1}">
	없음
	</c:if>
	인원: ${usercnt}
	
	<script>
	var ajax = new XMLHttpRequest();
	
	function idchkbtn(){
	   fid = document.getElementById('userName');
	   fpw = document.getElementById('password');
		   
	   console.log(fid.value);
	   console.log(fpw.value);

		data = {"userName":fid.value, "password":fpw.value};
	   
	   ajax.onreadystatechange = callbackajax;
	   
	   ajax.open('post','ajaxlogin_post');
	   ajax.setRequestHeader("Content-Type", "application/json");
	   ajax.send(JSON.stringify(data));
	}
		
	//텍스트로 인식 <-> 이름:값 (객체)로 인식하느냐
	function callbackajax(){
	   if(ajax.readyState == 4){
	      
	      alert(ajax.responseText);
	   }
   	}
   </script>
}
</body>
</html>