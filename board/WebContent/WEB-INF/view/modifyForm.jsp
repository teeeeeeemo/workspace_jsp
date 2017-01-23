<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>게시글 수정</title>
</head>
<body>
<div align="center">
<form action="modify.do" method="post">
<input type="hidden" name="no" value="${modReq.articleNumber }">
<table border="1" width="30%">
<tr>
	<td colspan="2">번호 : ${modReq.articleNumber} </td>
</tr>
<tr>
	<td>제목</td><td><input type="text" name="title" value="${modReq.title}"></td>
	<c:if test="${errors.title}">제목을 입력하세요. <br></c:if>
</tr>
<tr>
	<td>내용</td><td><textarea name="content" cols="55" style="height:100px">${modReq.content}</textarea></td>
</tr>
</table>
<input type="submit" value="글 수정">
<input type="reset" value="취소">

</form>
</div>
</body>
</html>

 
 