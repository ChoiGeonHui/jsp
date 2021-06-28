<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz02</title>
</head>
<body>

<%
Date date = new Date();
SimpleDateFormat sdf = new SimpleDateFormat("현재 시간은 HH시 mm분 ss초입니다");
SimpleDateFormat sdf2 = new SimpleDateFormat("현재 날짜는 yyyy년 MM월 dd일 입니다");

String a =request.getParameter("type") ;


%>
<h1>
<%= 
request.getParameter("type").equals("time") ? sdf.format(date):sdf2.format(date) %>
</h1>



</body>
</html>