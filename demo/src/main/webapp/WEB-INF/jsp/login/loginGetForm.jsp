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
	<h1>�α��� ������</h1>
	id:<input type="text" id="userName" name="userName">
	pw:<input type="text" id="password" name="password">
	<button onclick="idchkbtn()" id="idchkbtn">�α���</button>
		
	<script>
	var ajax = new XMLHttpRequest();
	
	function idchkbtn(){
	   fid = document.getElementById('userName');
	   fpw = document.getElementById('password');
		   
	   console.log(fid.value);
	   console.log(fpw.value);

	   ajax.onreadystatechange = callbackajax;
	   
	   ajax.open('GET','ajaxlogin?userName='+fid.value+'&password=' + fpw.value);
	   ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	   ajax.send();
	}
		
	//�ؽ�Ʈ�� �ν� <-> �̸�:�� (��ü)�� �ν��ϴ���
	function callbackajax(){
	   if(ajax.readyState == 4){
	      
	      alert(ajax.responseText);
	   }
   	}
   </script>
}
</body>
</html>