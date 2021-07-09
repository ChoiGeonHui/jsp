<%@page import="java.sql.ResultSet"%>
<%@page import="com.test.common.MySqlService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>홍당무마켓</title>

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
	
	String query ="select a.*,b.* from seller as a join used_goods as b on a.id = b.sellerId order by a.id desc";

	
	
	
	%>



	<form method="get" action="">
		<div class="container text-center" id="wrap">
			<jsp:include page="headnav.jsp"></jsp:include>
			
			<section class="d-flex flex-wrap mt-3">
			
			<%try{ 
				
				ResultSet resultSet = mySqlService.select(query);
				
				while(resultSet.next()){
					
			%>

				<div id="list" class="col-4 mt-1">
					<div class="goods-image-box ">
			
				<%-- 이미지 없는 경우 --%>
				<%	if (resultSet.getString("picture") == null || resultSet.getString("picture").equals("")) { %>
				<div class="d-flex h-100 justify-content-center align-items-center">
					<h4 class="text-secondary">이미지 없음</h4>
				</div>
				
				<%-- 이미지 있는 경우 --%>
				<%
             		} else {
				%>
				<div class="goods-image-box">
					<img class="w-100" src="<%= resultSet.getString("picture") %>">
				</div>             			
             	<%	
             		}
				%>	
			</div>			
						
					<div class="text-left">
						<div>
							<b><%=resultSet.getString("b.title")%></b>
						</div>
						<div>
							<span><%=resultSet.getInt("b.price")%>원</span>
						</div>
						<span class="text-danger"><%=resultSet.getString("a.nickname")%></span>
					</div>
					
					
					
				</div>

				<%}
			
				}
			catch(Exception e){
				e.printStackTrace();
				
			}
			mySqlService.disconnect();
			
			%>
			</section>
			
			<jsp:include page="mfoot.jsp"></jsp:include>

		</div>
	</form>
</body>
</html>