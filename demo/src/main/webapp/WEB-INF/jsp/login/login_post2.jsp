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
	<h1>����Ʈ �α��� ������</h1>
		id:<input type="text" id="userName" name="userName">
		pw:<input type="text" id="password" name="password">
		<button onclick="idchkbtn_multi_plain()" id="idchkbtn" >�α���</button>
	<c:if test="${usercnt < 1}">
	����
	</c:if>
	�ο�: ${usercnt}
	
	<script>
	var ajax = new XMLHttpRequest();
	
	function idchkbtn(){
	   fid = document.getElementById('userName');
	   fpw = document.getElementById('password');
		   
	   console.log(fid.value);
	   console.log(fpw.value);

		data = fid.value;
	   
	   ajax.onreadystatechange = callbackajax;
	   
	   ajax.open('post','ajaxlogin_post2');
	   ajax.setRequestHeader("Content-Type", "application/json");
	   ajax.send(data);
	}

	function idchkbtn_multi(){
		   fid = document.getElementById('userName');
		   fpw = document.getElementById('password');
			   
		   console.log(fid.value);
		   console.log(fpw.value);

			//data = {"userName": fid.value, "password": fpw.value};
		   
		   ajax.onreadystatechange = callbackajax;
		   
		   ajax.open('post','ajaxlogin_post3');
		   ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		   ajax.send('userName='+fid.value+'&password=' + fpw.value);
	}

	function idchkbtn_multi_plain(){
		   fid = document.getElementById('userName');
		   fpw = document.getElementById('password');
			   
		   data = fid.value + "," +fpw.value;
		   
		   ajax.onreadystatechange = callbackajax;
		   
		   ajax.open('post','ajaxlogin_post4');
		   //ajax.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
		   ajax.send(data);
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