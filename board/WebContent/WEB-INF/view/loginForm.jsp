<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>로그인</title>
</head>
<body>
<div align="center">
<form action="login.do" method="post">
<c:if test="${errors.idOrPwNotMatch }">
아이디와 암호가 일지하지 않습니다. 
</c:if>
<table border="1">
	<tr>
	<td>아이디</td><td><input type="text" name="id" value="${param.id}"></td>
	</tr>
		<p>
			<c:if test="${errors.id}">ID를 입력하세요.</c:if>
		</p>
	<tr>
	<td>암호</td><td><input type="password" name="password"></td>
	</tr>
		<p>
			<c:if test="${errors.password}">암호를 입력하세요.</c:if>
		</p>
</table>		
	<input type="submit" size="50" style="height:100px; width:100px" value="로그인">
	<input type="reset" size="50" style="height:100px; width:100px" value="취소">	

</form>
</div>

</body>
</html>