package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/d4q1")
public class QuizD4ex1 extends HttpServlet{
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setContentType("text/html");
		String name = req.getParameter("name");
		String intro =req.getParameter("intro");
		
		PrintWriter out = resp.getWriter();
		out.print("<html><head><title>입사 지원서</title></head><body>");
		
		out.print("<div><b>"+name+"</b>님 지원이 완료 되었습니다</div>");
		out.print("<h3>지원내용</h3>");
		out.print("<div>"+intro+"</div>");
		
		out.print("</body></html>");
		
	}

}
