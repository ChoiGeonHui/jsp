<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.IOException"%>
<%@page import="com.test.common.MySqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>web site</title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

</head>
<body>
	<div class="container text-center mt-3">
		<table class="table">
			<thead>
			<tr>
			<th class="col-5">사이트</th>
			<th class="col-5">사이트 주소</th>
			<th class="col-2">삭제</th>
			</tr>
			</thead>
			<tbody>
			<% 
			MySqlService mySqlService = MySqlService.getInstance();
			mySqlService.connection();
			String query = "select * from website order by id desc";
			
			try{
				ResultSet resultSet = mySqlService.select(query);	
				while(resultSet.next()){
			%>
			<tr>
			<td><%=resultSet.getString("name") %></td>
			<td><a href="<%=resultSet.getString("url")%>"><%=resultSet.getString("url") %></a></td>
			<td><a href="/lesson04/webdelete?id=<%=resultSet.getInt("id")%>">삭제</a></td>
			</tr>
			<% }
			}catch(Exception e){
				e.printStackTrace();
			}
			mySqlService.connection();
			%>
			</tbody>
		</table>
	</div>



</body>
</html>