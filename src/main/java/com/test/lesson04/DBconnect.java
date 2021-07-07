package com.test.lesson04;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/db/test")
public class DBconnect extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		resp.setContentType("text/plain");
		MySqlService mySqlService = MySqlService.getInstance();
		mySqlService.connection();//DB연결
		
		String query = "select * from used_goods";
		
		PrintWriter out = resp.getWriter();
		try {
			ResultSet resultSet= mySqlService.select(query);
			
			while(resultSet.next()) {
			 out.println("id "+resultSet.getInt("id"));
			 out.println("sellerId "+resultSet.getInt("sellerId"));
			 out.println("title "+resultSet.getString("title"));
			 out.println("description "+resultSet.getString("description"));
			 out.println("price "+resultSet.getString("price"));
			 
			}
			
			
			mySqlService.disconnect();
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	

}
