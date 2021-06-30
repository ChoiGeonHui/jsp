<%@page import="java.io.PrintWriter"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제어문 사용</title>
</head>
<body>
	<%
	//Map을 테이블로 표현하기

	//{"korean"=85,"english"=72,"math"=90,"science"=100}

	Map<String, Integer> scoreMap = new HashMap<>();
	scoreMap.put("korean", 85);
	scoreMap.put("english", 72);
	scoreMap.put("math", 90);
	scoreMap.put("science", 100);
	
	
	%>

	<table border="1">
		<%
		Iterator<String> iter = scoreMap.keySet().iterator();

		while (iter.hasNext()) {
			String key = iter.next();
			
			%>
			<tr>
			<th><%
			switch(key){
			case "korean": out.print("국어");
				break;
			case "english": out.print("영어");
				break;
			case "math": out.print("수학");
				break;
			case "science": out.print("과학");
				break;
			}
			
			%></th>
			<td><%=scoreMap.get(key) %></td>
			</tr>
			
			
			<%
			
		}
		%>
		

	</table>

</body>
</html>