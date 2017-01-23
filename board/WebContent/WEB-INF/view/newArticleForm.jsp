<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시글 쓰기</title>
</head>
<body>
<div align="center">
<form action="write.do" method="post">
<table border="1" width="30%">
<tr >
	<td>제목</td><td><input type="text" name="title" value="${param.title }"></td>
	<c:if test="${errors.title }">제목을 입력하세요.<br></c:if>
</tr>
<tr><td colspan="2">내용</td></tr>
<tr><td colspan="2"><textarea name="content" cols="55" style = "height:100px">${param.content }</textarea>

</table>
<input type="submit" value="새 글 등록">
<input type="reset" value="취소">

</form>
</div>

</body>
</html>