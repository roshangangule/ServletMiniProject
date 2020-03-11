package com.demo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;






public class Model {
	Connection connection;
	public Model() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
		
	}
	
	public void registrationData(String fn,String ln,String lucky,String un,String pass) throws Exception {
		String sql = "insert into register values('"+fn+"','"+ln+"','"+lucky+"','"+un+"','"+pass+"');";
		System.out.println(sql);
		PreparedStatement ps = connection.prepareStatement(sql);
		int temp = ps.executeUpdate();
		System.out.println(temp);
		if(temp !=0) {
			System.out.println("SUCCESSFUL");
		}else {
			System.out.println("UNSUCCESSFUL");
		}
	}
	
	public boolean valid(String un,String pass) throws Exception {
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/login","root","root");
		
		String sql = "select *from register where uname='"+un+"'";
		Statement stmt = connection.createStatement();
		ResultSet rs = stmt.executeQuery(sql);
		String uname = null;
		String pass1 = null;
		while(rs.next()) {
			uname = rs.getString(4);
			pass1 = rs.getString(5);
			
		}
		if(un.equals(uname)&&pass.equals(pass1)) {
			return true;
		}else {
			return false;
		}
		
		
	}
}
