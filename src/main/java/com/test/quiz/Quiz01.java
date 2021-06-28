package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class Quiz01 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req,
			HttpServletResponse resp) throws ServletException, IOException {
		
		resp.setCharacterEncoding("utf-8");
		resp.setContentType("text/plain");
		PrintWriter pw = resp.getWriter();
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy년 MM월 dd일");
		SimpleDateFormat sdf2 =new SimpleDateFormat("HH시 mm분 ss초");
		pw.println("오늘의 날짜는 "+sdf.format(date));
		pw.println("현재 시간은 "+sdf2.format(date)+" 입니다");
		
	}

}
