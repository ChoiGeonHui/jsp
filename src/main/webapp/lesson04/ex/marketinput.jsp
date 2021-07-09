<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MySqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>물건 올리기</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

<link rel="stylesheet" type="text/css"  href="market.css">
</head>
<body>

	<%
	MySqlService mySqlService = MySqlService.getInstance();
	mySqlService.connection();
	
	String query = "select * from seller";
	%>


	<form method="post" action="/lesson04/inputmarket">
		<div class="container text-center">

			<jsp:include page="headnav.jsp"></jsp:include>
			<section class="m-1">
				<div class="inputText d-flex align-items-left mt-4">
					<h1 class="ml-3 text-secondary">물건 올리기</h1>
				</div>

				<section class="content1 d-flex">
					<select name="id" class="form-control col-3 ">
						<option value="">--아이디 선택--</option>
					
					<% 
					try{
						ResultSet r = mySqlService.select(query);
						while(r.next()){
						
					%>
						<option value="<%=r.getInt("id") %>"><%=r.getString("nickname") %></option>
			
						<%}
						}
						catch(Exception e){
							e.printStackTrace();
						}
					mySqlService.disconnect();
						%>
					</select>
					
					<input type="text" name="title" class="form-control col-6 mr-1 ml-1" placeholder="제목">
					<div class="input-group-append  col-3">
					<input type="text" name="price" class="form-control mr-1" placeholder="가격">
							<span class="input-group-text">원</span>
						</div>
				</section>
				
				<textarea rows="10px" name="description" class="mt-3 col-12"></textarea>

				<div class="d-flex mt-2">

					<div class="input-group">
						<div class="input-group-text bg-scondary">
							<div class="col-12">이미지url</div>
						</div>
						<input type="text" name="imgs" class="form-control col-10">
					</div>
				</div>

				<button type="submit" class="btn btn-secondary col-12 mt-2 mb-3">저장</button>

			</section>

			<jsp:include page="mfoot.jsp"></jsp:include>
		</div>
	</form>

</body>
</html>