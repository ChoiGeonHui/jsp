package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/d2q3")
public class QuizD2ex3 extends HttpServlet{

	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/json");
		
		PrintWriter out = resp.getWriter();
		String n1 = req.getParameter("num1");
		String n2 = req.getParameter("num2");
		int num1 = Integer.parseInt(n1);
		int num2 = Integer.parseInt(n2);
		
		out.print("{\"addtion\":"+(num1+num2)+
				",\"subtraction\":"+(num1-num2)+
				",\"multiplication\":"+(num1*num2)+
				",\"division\":"+(num1/num2)+"}");
		
		
		
		
		
		
	}
}
