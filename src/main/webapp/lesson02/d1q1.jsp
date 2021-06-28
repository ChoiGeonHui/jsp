<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="java.util.Arrays"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Quiz01</title>
</head>
<body>

	<%
	int a = 1;
	int b = 50;
	%>


	<%!
	public int sumNum(int a, int b) {

		int sum = 0;
		for (int i = a; i <= b; i++) {
			sum +=i;
		}

		return sum ;
	}
	
	
	public double Avgage(int list[]){
		
		int sum =0;
		for(int i=0;i< list.length ;i++){
			sum +=list[i];
		}
		double avg = sum/(double) list.length;
		
		return avg;
	}
	
	public int checktest(List<String> scoreList){
		int sum = 0;
		for(int i=0;i< scoreList.size() ;i++){
			if(scoreList.get(i).equals("O")){
				sum +=10;
			}
		}
		return sum;
	}
	
	public int ageView(String a){	
		String year = a.substring(0, 4);
		int yearAge = Integer.parseInt(year) +1;
		int result = 2021-yearAge;		
		return result;
	}
	
	%>

<h1><%=a %>부터 <%=b %>까지의 합은 <%= sumNum(a, b) %> 입니다</h1>

<% 
int[] scores = {80, 90, 100, 95, 80};
List<String> scoreList = 
Arrays.asList(new String[]{"X", "O", "O", "O", "X", "O", "O", "O", "X", "O"});
String birthDay = "20010820";

%>

<h1> 평균점수는 <%= Avgage(scores) %> 입니다</h1>
<h1>채점 결과는 <%= checktest(scoreList) %>점 입니다</h1>
<h1><%=birthDay %>의 나이는 <%= ageView(birthDay) %>세 입니다</h1>


</body>
</html>