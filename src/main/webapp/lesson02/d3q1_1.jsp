<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길이 변환</title>

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

</head>
<body>


	<%
	String a = request.getParameter("long");
		int log = Integer.parseInt(a);

		String arr[] = request.getParameterValues("values");

		double inch = log/2.54;
		double yd = log/91.44;
		double ft = log/30.48;
		double m = (double)log/100;
		
		String result ="";
		
		
	%>



<div class="container">
<h1>길이 변환 결과</h1>
<h3><%=log %> cm</h3>
<hr>

<%
if (arr.length > 0) {
	for (int i = 0; i < arr.length; i++) {
		
		switch(arr[i]){
		case "inch":
			result =String.format("%.2f",inch)+" in";
			break;
		case "yd":
			result=String.format("%.2f",yd)+" yd";
			break;
		case "ft":
			result =String.format("%.2f",ft)+" ft";
			break;
		case "M":
			result =String.format("%.2f",m)+" m";
			break;
		}
		%>
		<h2><%=result %></h2>			
		<%
		
	}
}

%>



</div>





</body>
</html>