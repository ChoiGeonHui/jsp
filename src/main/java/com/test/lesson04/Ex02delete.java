package com.test.lesson04;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson04/ex02delete")
public class Ex02delete extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		Integer id = Integer.valueOf(req.getParameter("id"));
		
		MySqlService mySqlService = MySqlService.getInstance();
		
		mySqlService.connection();
		
		String query = "delete from newuser where id =" +id;
		
		
		try {
			mySqlService.update(query);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		mySqlService.disconnect();
		
		resp.sendRedirect("/lesson04/ex/ex02_1.jsp");
		
	}
	

}
