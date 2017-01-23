<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="u" tagdir="/WEB-INF/tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원제 게시판 예제</title>
</head>
<style>
div{
background:url('http://static.inven.co.kr/image_2011/site_image/lol/dataninfo/icon/skinfull/teemo_splash_6.jpg?v=20161220a') no-repeat;
background-image:url('http://static.inven.co.kr/image_2011/site_image/lol/dataninfo/icon/skinfull/teemo_splash_6.jpg?v=20161220a');
background-repeat:no-repeat;
background-size:cover;
}

</style>
<body>

<div align="center">

<c:if test="${! empty authUser }">
<h2>${authUser.name }님, 안녕하세요. </h2>
	<a href="logout.do">[로그아웃]</a>
	<a href="changePwd.do">[암호변경]</a>
</c:if>
<c:if test="${empty authUser }">
	<a href="join.do">[회원가입]</a>
	<a href="login.do">[로그인]</a>
</c:if>
<br>
<h1>TEEEEEEEMO WORLD</h1>
<hr>
<br>
<br>
<br>
<u:isLogin>
<h2>${authUser.name }님, 안녕하세요. </h2>
	<a href="logout.do">[로그아웃]</a>
	<a href="changePwd.do">[암호변경]</a>
</u:isLogin>
<u:notLogin>
	<a href="join.do">[회원가입]</a>
	<a href="login.do">[로그인]</a>
</u:notLogin>

</div>
</body>
</html>
 --%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <title>CSS Tutorial | Layout</title>
    <style>
    body{
background:url('http://static.inven.co.kr/image_2011/site_image/lol/dataninfo/icon/skinfull/teemo_splash_6.jpg?v=20161220a') no-repeat;
background-image:url('http://static.inven.co.kr/image_2011/site_image/lol/dataninfo/icon/skinfull/teemo_splash_6.jpg?v=20161220a');
background-repeat:no-repeat;
background-size:cover;

    }
    
    	
      #jb-container {
        width: 940px;
        margin: 0px auto;
        padding: 20px;
        border: 12px solid #bcbcbc;
      }
      #jb-header {
        padding: 20px;
        margin-bottom: 20px;
        border: 1px solid #bcbcbc;
      }
      #jb-sidebar-left {
        width: 160px;
        padding: 20px;
        margin-right: 20px;
        margin-bottom: 20px;
        float: left;
        border: 1px solid #bcbcbc;
      }
      #jb-content {
        width: 450px;
        padding: 20px;
        margin-bottom: 20px;
        float: left;
        border: 1px solid #bcbcbc;
      }
      #jb-sidebar-right {
        width: 160px;
        padding: 20px;
        margin-bottom: 20px;
        float: right;
        border: 1px solid #bcbcbc;
      }
      #jb-footer {
        clear: both;
        padding: 20px;
        border: 1px solid #bcbcbc;
      }
    </style>
  </head>
  
  <body>
    <div id="jb-container">
      <div id="jb-header">
        <h1>티모는 LOVE ! 게시판일까나</h1>
      </div>
      <div id="jb-sidebar-left">
        <h2>Sidebar</h2>
        <ul>
          <li>Lorem</li>
          <li>Ipsum</li>
          <li>Dolor</li>
        </ul>
      </div>
      <div id="jb-content">
        <h2>Content</h2>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu laoreet. Proin gravida velit dictum dui consequat malesuada. Aenean et nibh eu purus scelerisque aliquet nec non justo. Aliquam vitae aliquet ipsum. Etiam condimentum varius purus ut ultricies. Mauris id odio pretium, sollicitudin sapien eget, adipiscing risus.</p>
        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean nec mollis nulla. Phasellus lacinia tempus mauris eu laoreet. Proin gravida velit dictum dui consequat malesuada. Aenean et nibh eu purus scelerisque aliquet nec non justo. Aliquam vitae aliquet ipsum. Etiam condimentum varius purus ut ultricies. Mauris id odio pretium, sollicitudin sapien eget, adipiscing risus.</p>
      </div>
      <div id="jb-sidebar-right">
        <h2>Sidebar</h2>
        <ul>
          <li>Lorem</li>
          <li>Ipsum</li>
          <li>Dolor</li>
        </ul>
      </div>
      <div id="jb-footer">
        <p>Copyright</p>
      </div>
    </div>
  </body>
</html>