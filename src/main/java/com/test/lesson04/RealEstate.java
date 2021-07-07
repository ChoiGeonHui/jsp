package com.test.lesson04;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.test.common.MySqlService;

@WebServlet("/db/realestate")
public class RealEstate extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		resp.setContentType("text/plain");
		PrintWriter out = resp.getWriter();
		
		MySqlService mySqlService = MySqlService.getInstance();
		mySqlService.connection();
		
		
		String q = "select address,area,type from real_estate order by id desc limit 10";
		String insert = "insert into real_estate (realtorId,address,area,type,price) value(3,\"헤라펠리스 101동 5305호\",350,\"매매\",1500000)";
		
		try {
//			mySqlService.update(insert);
			ResultSet resultSet = mySqlService.select(q);
			while (resultSet.next()) {
				out.print("매물주소 : "+resultSet.getString("address")+" ");
				out.print("면적 : "+resultSet.getInt("area")+" ");
				out.println("타입 : "+resultSet.getString("type"));
				
			}
			mySqlService.disconnect();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		
		
		
	}
	
}
