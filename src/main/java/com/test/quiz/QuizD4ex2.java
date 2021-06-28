package com.test.quiz;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/d4q2")
public class QuizD4ex2 extends HttpServlet{

	private static final Map<String, String> userMap =  new HashMap<String, String>() {
	    {
	        put("id", "marobiana");
	        put("password", "qwerty1234");
	        put("name", "신보람");
	    }
	};
	
	@Override
	public void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		String id = req.getParameter("userId");
		String pw = req.getParameter("pw");
		resp.setContentType("text/html");
		
		PrintWriter out = resp.getWriter();
		
		out.print("<html><head></head><body>");
		
		if(!userMap.get("id").equals(id)) {
			out.print("아이디가 틀립니다");
		}else if(!userMap.get("password").equals(pw)){
			out.print("비밀번호가 틀립니다");
		}else {
			out.print(userMap.get("name")+"님 환영합니다!");
		}
		
		
		out.print("</body></html>");
		
		
	}
	
}
