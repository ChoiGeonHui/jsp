package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/d2q1")
public class QuizD2ex1 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");		
		PrintWriter out  = resp.getWriter();
		
		out.print("<html><head><title>리스트</title></head><body><ul>");
		
		for (int i = 1; i <=30 ; i++) {
			out.print("<li>"+i+"번째 리스트</li>");
		}
		out.print("</ul></body></html>");
	
		
		
		
		
	}
}
