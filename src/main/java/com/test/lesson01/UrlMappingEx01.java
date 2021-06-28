package com.test.lesson01;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class UrlMappingEx01 extends HttpServlet {
	@Override
	public void doGet(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/plain");
//		위 2줄은 글자코딩을 위한 소스이다.
		
		PrintWriter out = response.getWriter();
		out.println("이름은 최건희입니다.");
		
		Date now = new Date();
		
		
//		2021-06-21 16:13:00
//		formatter
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd a hh:mm:ss");
		out.println(sdf.format(now));
		
	}

}
