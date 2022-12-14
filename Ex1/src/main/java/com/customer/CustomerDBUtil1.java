package com.customer;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class CustomerDBUtil1
{
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	public static List<Customer> validate(String userName , String password)
	{
		ArrayList<Customer> cus = new ArrayList<>();
								
		//validate
		try
		{
			con = DBConnect.getConnection();
			stmt = con.createStatement();
						
			String sql = "select * from hr_cordinator where username = '"+userName+"' and password = '"+password+"'";
			
			//String sql = "select * from hr_cordinator";
					
			rs = stmt.executeQuery(sql);
			
			if(rs.next())
			{
				int id = rs.getInt(1);
			
				String name = rs.getString(2);
				String email = rs.getString(3);
				String phone = rs.getString(4);
				String userU = rs.getString(5);
				String passU = rs.getString(6);
			
			//while(rs.next())
			//{
				
				//int id = rs.getInt("id");
				
				//String name = rs.getString("name");
				//String email = rs.getString("email");
				//String phone = rs.getString("phone");
				//String userU = rs.getString("username");
				//String passU = rs.getString("password");
				
				Customer c = new Customer(id,name,email,phone,userU,passU);
				
				cus.add(c);
				
			}
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return cus;
	}
	
	//-------INSERT NEW HR COORDINATOR DETAILS-------
	
		public static boolean insertHRManager(String name , String email , String phone , String username , String password)
		{
			boolean isSuccess = false;
			 
			try
			{
				con = DBConnect.getConnection();
				stmt = con.createStatement();
									
				String sql ="insert into hr_cordinator values(0,'"+name+"','"+email+"','"+phone+"','"+username+"','"+password+"')";
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0)
				{
					isSuccess = true;
				}
				else
				{
					isSuccess = false;
				}
				
			}
			catch(Exception e)
			{
				System.out.println("Database is not connected");
			}
			
			return isSuccess;
		}
		
		
		//-------Update HR MANAGER DETAILS-------
		
		public static boolean updateHRManager(String id , String name , String email , String phone ,String username , String password)
		{
			try
			{
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "update hr_cordinator set name = '"+name+"' , email = '"+email+"' , phone = '"+phone+"' , username ='"+username+"' , password = '"+password+"'  where id = '"+id+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if(rs > 0 )
				{
					isSuccess = true;
				}
				else
				{
					isSuccess = false;
				}
				
			}
			catch(Exception e)
			{
				System.out.println("Database Not Connected!!");
			}
			
			return isSuccess;
		}
		
		public static List<Customer> getcustomerDetails (String Id)
		{
			int convertedID = Integer.parseInt(Id);
			ArrayList<Customer> cus = new ArrayList<>();
			
			try
			{
				con  = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "select * from hr_cordinator where id = '"+convertedID+"'";
				
				rs = stmt.executeQuery(sql);
				
				while(rs.next())
				{
					int id = rs.getInt(1);
					String name = rs.getString(2);
					String email = rs.getString(3);
					String phone = rs.getString(4);
					String username = rs.getString(5);
					String password = rs.getString(6);
					
					Customer c = new Customer(id , name , email , phone , username , password );
					cus.add(c); 
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return cus;
		}
		
		public static boolean deleteHRManager(String id) 
		{
			int convId = Integer.parseInt(id);
			
			try
			{
				con = DBConnect.getConnection();
				stmt = con.createStatement();
				
				String sql = "delete from hr_cordinator where id = '"+convId+"'";
				
				int rs = stmt.executeUpdate(sql);
				
				if( rs > 0)
				{
					isSuccess = true;
				}
				else
				{
					isSuccess = false;
				}
			}
			catch(Exception e)
			{
				e.printStackTrace();
			}
			
			return isSuccess;
		}
		
		
}



