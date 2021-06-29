<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Post Method 폼태그</title>
</head>
<body>
	<%
	String nickname = request.getParameter("nickname");
	String hobby = request.getParameter("hobby");
	String animal = request.getParameter("animal");

	//선택항목이 여러개일때 getParameterValues 를 사용한다.
	String foodarr[] = request.getParameterValues("food");
	String fruit = request.getParameter("fruit");
	%>

	<table border="1">
		<tr>
			<th>별명</th>
			<td><%=nickname%></td>
		</tr>
		<tr>
			<th>취미</th>
			<td><%=hobby%></td>
		</tr>
		<tr>
			<th>좋아하는 동물</th>
			<td><%=animal%></td>
		</tr>
		<tr>
			<th>좋아하는 음식</th>
			<td>
				<%
					String result="";
				if (foodarr != null) {
					for(int i=0;i<foodarr.length;i++){
						result +=foodarr[i];
						if(i<foodarr.length-1){
							result +=", ";
						}
					}
				}
				%>
				<%=result %>
			</td>
		</tr>
		<tr>
			<th>좋아하는 과일</th>
			<td><%=fruit %></td>
		</tr>

	</table>



</body>
</html>