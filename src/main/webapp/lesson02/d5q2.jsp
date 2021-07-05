
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title> 이번달 달력 </title>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>


</head>
<body>


	<%
	Calendar today = Calendar.getInstance();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM");
	%>

	<div class="container text-center mt-3">
		<h2><%=sdf.format(today.getTime()) %></h2>

		<table class="table w-100">
			<thead>
				<tr>
					<th class="text-danger">일</th>
					<th>월</th>
					<th>화</th>
					<th>수</th>
					<th>목</th>
					<th>금</th>
					<th>토</th>
				</tr>
			</thead>

			<tbody>
				<%
				Calendar day = Calendar.getInstance();
				day.add(Calendar.DATE, -1);
				Calendar month = Calendar.getInstance();
				month.add(Calendar.MONTH, +1);
				month.add(Calendar.DATE, -1);

				SimpleDateFormat sdf2 = new SimpleDateFormat("d");
				SimpleDateFormat sdf3 = new SimpleDateFormat("E");	
				
				String week[] = { "일", "월", "화", "수", "목", "금", "토" };
				for (int i = 0; i < 10; i++) {
					int a = day.compareTo(month);
				%>
				<tr>
				<% for(int j=0;j<7;j++){ 	
					if(a>=0){break;}
					
					String d = sdf3.format(day.getTime());
					if(d.equals(week[j])){	
						if(j==0){
							%>
							<td><span class="display-4 text-danger"><%=sdf2.format(day.getTime())%></span></td>
							<%		
						}	else{							
				 	%>
					<td><span class="display-4 text-secondary"><%=sdf2.format(day.getTime())%></span></td>
					<% }
					day.add(Calendar.DATE, 1);
					}else{			
						%>
						<td></td>
						<%
					}
				}
				%>				
				</tr>
				<% 		
				if(a>=0){
					break;
				}
				
		}
		%>
			</tbody>
		</table>



	</div>



</body>
</html>