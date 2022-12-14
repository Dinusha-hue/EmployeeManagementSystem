package com.customer;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
	
	private static String url = "jdbc:mysql://localhost:3306/employeemanagementsystem";
	private static String userName = "root";
	private static String password = "Employeeman123";
	private static Connection con;
	
	public static Connection getConnection()
	{
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url,userName,password);
						
		}
		catch(Exception e)
		{
			System.out.println("Database is not Connected!!");
		}
		
		return con;
		
	}
	

}
