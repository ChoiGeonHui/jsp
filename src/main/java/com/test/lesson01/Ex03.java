package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ex03")
public class Ex03  extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String id= req.getParameter("user_id");
		String name= req.getParameter("name");
		String age = req.getParameter("age");
		PrintWriter out = resp.getWriter();
//		out.println("user_id : "+id);
//		out.println("name : "+name);
//		out.println("age : "+age);
		
		
//		JSON : JavaScript Object Notation 으로 respons구현하기
//		{"user_id":"choi","name":"geonhui","age":25}
		
		resp.setContentType("text/json");
		out.print("{\"user_id\":\""+id+"\",\"name\":\""+name+"\",\"age\":\""+Integer.valueOf(age)+"\"}");
	
	
	
	
	
	
	
	}
}
