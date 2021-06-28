package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/d3q1")
public class QuizD3ex1  extends HttpServlet{
	@Override
	public void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		resp.setContentType("text/html");
		
		String address = req.getParameter("address");
		String card = req.getParameter("card");
		String price = req.getParameter("price");
		
		PrintWriter out = resp.getWriter();
		out.print("<html><head><title>배달</title><body>");
		
		if(address.startsWith("서울")==false) {
			out.print("배달 불가 지역입니다");
		}else if(card.equals("신한카드")) {
			out.print("결제 불가 카드입니다");
		}else {
			out.print(address +"<b> 배달 준비중</b><br>");
			out.print("결제금액:"+price+"원");
		}
		
		
		out.print("</body><html>");
		
	}

}
