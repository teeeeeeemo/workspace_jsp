<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tf" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>select 태그 사용 </title>
</head>
<body>

<tf:select name="code" rgb="RGB모드" wb="흑백모드"/>
<tf:select name="genre" rock="락" ballad="발라드" metal="메탈"/>

</body>
</html>