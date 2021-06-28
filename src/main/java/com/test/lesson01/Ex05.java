package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex05")
public class Ex05  extends HttpServlet{

	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("utf-8");
//		톰캣서버가 기본적으로 ios-8859-1 인코딩하기 때문에 필터를 사용해야한다
		String id= req.getParameter("userId");
		String name =req.getParameter("name");
		String birth =req.getParameter("birth");
		String email =req.getParameter("email");
		
		PrintWriter out =resp.getWriter();
		
		out.print("<html><head><title>회원정보</title></head><body>");
		out.print("<table border=1>");
		out.print("<tr><th>아이디</th><td>"+id+"</td></tr>");
		out.print("<tr><th>이름</th><td>"+name+"</td></tr>");
		out.print("<tr><th>생년월일</th><td>"+birth+"</td></tr>");
		out.print("<tr><th>이메일</th><td>"+email+"</td></tr>");
		
		out.print("</table>");	
		out.print("</body></html>");
		
		
		
	}
	
}
