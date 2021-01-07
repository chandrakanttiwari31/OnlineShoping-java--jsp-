package com.project;

import java.sql.*;

public class ConnectionCls {
	
	public static Connection getCon()
	{
		try{
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3307/ecom","root","root");
			
			return con;
		} catch(Exception e)
		{
			
			System.out.println(e);
			return null;
		}
		
		
		
	}

}
