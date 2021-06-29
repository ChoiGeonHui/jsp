<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

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


<%!

double bmiresult(int cm,int kg){
	double total = (double)kg/(  ((double)cm/100)*((double)cm/100) );
	
	return total;
}
%>

<%

String cm = request.getParameter("CM");
String kg = request.getParameter("KG");

int CM = Integer.parseInt(cm);
int KG = Integer.parseInt(kg);

double total = bmiresult(CM, KG);

String result;

if(total>=31){
	result="비만";
}else if(total>=26){
	result="과체중";
}else if(total>=21){
	result="정상";
}else{
	result="저체중";
}

%>



<div class="container">
<h3>BMI 측정 결과</h3>
<div class="d-flex">
<div class="display-4">당신은<span class="text-info"><%=result%></span> 입니다</div>
</div>
<b>BMI 수치 :<%=total%> </b>
</div>


</body>
</html>