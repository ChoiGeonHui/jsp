package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/d3q2")
public class QuizD3ex2 extends HttpServlet{
	
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/html");
		PrintWriter out =resp.getWriter();
		String[] list = {
		        "강남역 최고 맛집 소개 합니다.", 
		        "오늘 기분 좋은 일이 있었네요.", 
		        "역시 맛집 데이트가 제일 좋네요.", 
		        "집에 가는 길에 동네 맛집 가서 안주 사갑니다.",
		        "자축 저 오늘 생일 이에요."};
		
		String key = req.getParameter("txt");
		
		out.print("<html><head></head><body>");
		
		for (int i = 0; i < list.length; i++) {
			if(list[i].contains(key)) {
				
				list[i].replaceAll(key, "<b>"+key+"</b>");
				out.print(list[i]+"<br>");
							
				
//				int num = list[i].indexOf(key);	
				
//				StringBuffer sb = new StringBuffer();
//				sb.append(list[i]);
//				sb.insert(num, "<b>");
//				sb.insert(num+key.length()+3, "</b>");
//				out.print(sb+"<br>");
				
//				out.println("<div>"+list[i].substring(0, num)
//						+"<b>"+list[i].substring(num,num+key.length())+"</b>"
//						+list[i].substring(num+key.length())+"</div>");			
			
			}
		}
		
		out.print("</body></html>");
	}
}
