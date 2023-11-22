package com.connection;

import java.sql.*;

public class ConnectionServlet
{
	public static Connection getcon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/greenteck?useSSL=false","root","12345678");
			return con;
			
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
	}
}