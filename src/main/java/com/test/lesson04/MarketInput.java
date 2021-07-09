package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson04/inputmarket")
public class MarketInput extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		PrintWriter out = resp.getWriter();
		MySqlService m = MySqlService.getInstance();
		
		m.connection();
		
		Integer sellId = Integer.valueOf(req.getParameter("id"));
		String title = req.getParameter("title");
		Integer price =   Integer.valueOf(req.getParameter("price"));;
		String description = req.getParameter("description");
		String img = req.getParameter("imgs");
		
		if((sellId!=null&&title!=null&&price!=null)==true) {
			String query ="insert into used_goods\r\n"
					+ "(sellerId,title,price,description,picture)\r\n"
					+ "values("+sellId+",'"+title+"',"+price+",'"+description+"','"+img+"');";

			
			try {
				m.update(query);
			} catch (Exception e) {
				// TODO: handle exception
			}	
			
		}else {out.print("비어있는 값이 있습니다.");}
		
		
		m.disconnect();
		
		resp.sendRedirect("/lesson04/ex/marketmain.jsp");
		
	}

}
