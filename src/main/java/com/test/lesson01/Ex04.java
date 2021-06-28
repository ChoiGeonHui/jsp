package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex04")
public class Ex04 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		String id = req.getParameter("userId");
		String name = req.getParameter("name");
		String birth = req.getParameter("birth");
		String email = req.getParameter("email");
		
		PrintWriter out = resp.getWriter();
		out.print("<html><head><title>회원 정보</title></head><body>");
		out.print("<table border = \"1\">");
		out.print("<tr>");
		out.print("<th>아이디</th><td>"+id+"</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<th>이름</th><td>"+name+"</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<th>생년월일</th><td>"+birth+"</td>");
		out.print("</tr>");
		out.print("<tr>");
		out.print("<th>이메일</th><td>"+email+"</td>");
		out.print("</tr>");
		
		out.print("</table>");
		out.print("</body></html>");
		
	}
}
