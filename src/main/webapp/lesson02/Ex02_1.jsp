<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get Method</title>
</head>
<body>
<%-- Response(서버) --%>
<%-- request 객체는 jsp에서 import 없이 바로 사용할수 있다. --%>

<b>아이디  </b>
<%= request.getParameter("userId") %>
<br>
<b>이름 </b>
<%= request.getParameter("name") %>
<br>
<b>나이 </b>
<%= request.getParameter("age") %>
<br>

</body>
</html>