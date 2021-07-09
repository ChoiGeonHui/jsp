package com.test.lesson04;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson04/webdelete")
public class WebDelete extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		MySqlService mySqlService = MySqlService.getInstance();
		mySqlService.connection();
		
		
		Integer id = Integer.valueOf(req.getParameter("id"));
		
		String query = "delete from website where id = "+id;
		
		
		try {
			mySqlService.update(query);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		mySqlService.disconnect();
		resp.sendRedirect("/lesson04/ex/web.jsp");
		
	}
}
