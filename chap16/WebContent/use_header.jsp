<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix ="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>제목 출</title>
</head>
<body>

<tf:header title="텍스트 제목" level="2" />

<tf:header title="${'EL 제목' }" level="3"/>

<tf:header title='<%= "표현식 제목" %>' />
</body>
</html>