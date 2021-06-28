package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/d2q2")
public class QuizD2ex2 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		String num = req.getParameter("num");	
		int n = Integer.parseInt(num);
		
		out.print("<html><head><title>"+num+"단</title></head><body><ul>");
		for (int i = 1; i <=9; i++) {
			out.print("<li>"+num+" X "+i+" = "+(n*i)+"</li>");
		}
		out.print("</ul></body></html>");
		
		
		
		
		
	}
}
