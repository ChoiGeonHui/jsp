package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/servlet/ex02")
public class Ex02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
//		out.println("<h1>안녕하세요.</h1>");
		
		
//		1~10까지의 합계 
		int sum = 0;
		for (int i = 1; i <=10; i++) {
			sum +=i;
		}
		
		out.print("<html><head><title>합계</title></head><body>");
		out.print("<b>"+sum+"</b></body></html>");
	}

}
