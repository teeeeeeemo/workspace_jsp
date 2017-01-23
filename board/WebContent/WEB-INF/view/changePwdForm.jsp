<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>암호 변경</title>
</head>
<body>
<div align="center">
<h3>암호를 변경할거야</h3>
<hr>

<form action="changePwd.do" method="post">
<table border=1>
<tr>
	<td>현재 암호</td><td><input type="password" name="curPwd"></td>
	<c:if test = "${errors.curPwd }">
	<p> 현재 암호를 입력하세요.</c:if>
	<c:if test = "${errors.badCurPwd }">
	현재 암호가 일치하지 않습니다. </c:if></p>
</tr>
<tr>
	<td>새 암호</td><td><input type="password" name="newPwd"></td>
	<c:if test = "${errors.newPwd }">
	새 암호를 입력하세요.</c:if>
	</tr>

	
</table>

	<input type = "submit" value="암호 변경">
</form>
</div>

</body>
</html>