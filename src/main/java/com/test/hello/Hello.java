package com.test.hello;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Hello extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
										//예외처리를 여기서 하겠다
		PrintWriter out = response.getWriter();
		out.println("Hello world!!");
	}
}
