package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
@WebServlet("/quiz02")
public class Quiz02 extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		PrintWriter out = resp.getWriter();
		
		
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		
		out.print("<html><head><title>뉴스</title></head><body>");
		out.print("<h1>[단독] 고양이가 야옹해</h1><div>기사 입력 시간: "+sdf.format(date)+"</div>");
		out.print("<hr><div>끝</div></body></html>");
	}

}
