<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<!-- html 주석문법 : 소스보기에서 주석이 보임 -->
	<%-- jsp 주석문법 : 소스보기에서 보이지 않음 --%>
	<h1>Hello world!</h1>

	<%
	// java 문법 식작 --> 자바 주석
	// scriplet
	
	int sum =0;
	for(int i = 1; i <= 10; i++){
		sum +=i;
	}

	%>

	<b>합계</b>
	<input type="text" value="<%=sum%>">
	<br>


	<%!
	/* java의 클래스를 선언하는 필드 */
	//fild
	 private int num = 100;
	
	//method
	 public String getHelloWorld(){
		return "Hello Word!";
	} 
	
	%>
	
	<%=getHelloWorld()%> 
	
	<br>
	
	<!-- 표현식 : 선언되어있는 변수같으나, 메소드의 리턴값을 출력한다. -->
	<%=sum + num %>
	
	

</body>
</html>