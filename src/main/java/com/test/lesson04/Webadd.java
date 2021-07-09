package com.test.lesson04;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson04/webadd")
public class Webadd extends HttpServlet{
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		
		MySqlService mySqlService  = MySqlService.getInstance();
		mySqlService.connection();
		String name = req.getParameter("name");
		String url = req.getParameter("url");
		
		String query = "insert into website (name,url) values ('"+name+"','"+url+"'  )";
		
		
		
		try {
			mySqlService.update(query);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		mySqlService.disconnect();
		
		resp.sendRedirect("/lesson04/ex/web.jsp");
		
		
	}
}
