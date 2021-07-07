<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MySqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>사용자 목록</title>
</head>
<body>

	<%
	//db 연결
	MySqlService mySqlService = MySqlService.getInstance();
	mySqlService.connection();
	
	String query  = "select * from newuser";
	
	try{
	ResultSet resultSet = mySqlService.select(query);

	%>


	<table>
		<thead>
			<tr>
				<td>번호</td>
				<td>이름</td>
				<td>생년월일</td>
				<td>자기소개</td>
				<td>이메일</td>
				<td>삭제</td>
			</tr>
		</thead>

		<tbody>
			<%
			while(resultSet.next()){
			%>
			<tr>
				<td><%=resultSet.getInt("id") %></td>
				<td><%=resultSet.getString("name") %></td>
				<td><%=resultSet.getString("yyyymmdd") %></td>
				<td><%=resultSet.getString("introduce") %></td>
				<td><%=resultSet.getString("email") %></td>
				<td><a href="/lesson04/ex02delete?id=<%=resultSet.getInt("id") %>">삭제</a></td>
			</tr>
			<%
			}
			}catch(Exception e){}
			//db 연결 해제
			mySqlService.disconnect();
			%>

		</tbody>


	</table>

</body>
</html>