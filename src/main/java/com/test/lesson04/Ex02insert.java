package com.test.lesson04;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/lesson04/ex02insert")
public class Ex02insert extends HttpServlet{
	
	@Override
	public void  doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String name =req.getParameter("name");
		String birth =req.getParameter("birth");
		String email =req.getParameter("email");
		String introduce =req.getParameter("introduce");
		
		MySqlService mySqlService = MySqlService.getInstance();
		
		mySqlService.connection();
		
		//insert query 수행
		String insert = "insert into newuser\r\n"
				+ "(`name`,`yyyymmdd`,`email`,`introduce`)\r\n"
				+ "values('"+name+"','"+birth+"','"+email+"','"+introduce+"')";
		
		
		try {
			mySqlService.update(insert);
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		mySqlService.disconnect();
		
		
		//목록 화면 이동 => 리다이렉트(redirect)
		resp.sendRedirect("/lesson04/ex/ex02_1.jsp");
		
		
		
	}

}
