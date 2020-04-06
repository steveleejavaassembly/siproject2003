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
	<form method="post" id="loginForm" action="/login2">
		<h1>로그인 페이지</h1>
			id:<input type="text" id="userName" name="userName">
			pw:<input type="text" id="password" name="password">
			<input type="submit" value="전송버튼">
	</form>
	<c:if test="${members < 1}">
	없음
	</c:if>
	인원: ${members}
	
	<script>
	function idchkbtn(){
	   fid = document.getElementById('userName');
	   fpw = document.getElementById('password');
		   
	   console.log(fid.value);
	   console.log(fpw.value);

	   
	}
   </script>
}
</body>
</html>