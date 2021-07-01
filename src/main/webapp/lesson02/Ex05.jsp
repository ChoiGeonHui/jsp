<%@page import="java.text.SimpleDateFormat"%>
<%@ page import="java.util.*" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calendar</title>
</head>
<body>
	<%
	Calendar today = Calendar.getInstance();
	out.println(today);
	
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일 HH:mm:ss");
	// calendar -> Date 객체로 변환 후 format 적용
	out.println("오늘날짜 : "+sdf.format(today.getTime())+"<br>");
	
	SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy년 MM월 dd일");
	//어제 날짜 구하기
	Calendar yesterday = Calendar.getInstance();
	yesterday.add(Calendar.DATE, -1);
	out.println("어제날짜 : "+sdf2.format(yesterday.getTime()));
	
	//한달 전 출력
	//yesterday.add(Calendar.MONTH, -1);
	//out.println("한달 전 날짜 : "+sdf2.format(yesterday.getTime()));
	
	//1년 전 출력
	//yesterday.add(Calendar.YEAR, -1);
	//out.println("1년 전 날짜 : "+sdf2.format(yesterday.getTime()));
	
	//두 날짜의 비교
	// compareTo "2021-06-30"(기준값)   "2021-07-11"(비교값)  1   0  -1 
	// (기준값이 크면1, 작으면-1 같으면 0)
	int result= today.compareTo(yesterday);
	if(result >0){
		out.print("today가 크다");
	}else if(result==0){
		out.print("두 날짜는 같다.");
	}else{
		out.print("yesterday가 크다.");
	}
	
	%>

</body>
</html>