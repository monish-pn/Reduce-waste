package com.connection;

import java.sql.*;

import javax.servlet.annotation.WebServlet;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/GreenPathwayServlet")

public class GreenPathwayServlet extends HttpServlet
{
	private static final long serialVersionUID = 1L;
	public static Connection getcon()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conobject= DriverManager.getConnection("jdbc:mysql://192.168.20.17:3306/gpschema","iplprojectuser","projectipluser@#D");
			return conobject;
		}
		catch(Exception e)
		{
			System.out.println(e);
		}
		return null;
	}

       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String value = request.getParameter("value");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection conobject= DriverManager.getConnection("jdbc:mysql://192.168.20.17:3306/gpschema","iplprojectuser","projectipluser@#D");
			
			//String usernamecheck="";
		    PreparedStatement pstobject = conobject.prepareCall("SELECT * FROM transsidetable WHERE StatusFlag=?");
			pstobject.setInt(1,2);
			ResultSet rsetobject = pstobject.executeQuery();
		    pstobject = conobject.prepareStatement("UPDATE transsidetable SET StatusFlag = ? WHERE UserName=?");
		    pstobject.setString(2, value);
		    pstobject.setInt(1,3);
		    pstobject.executeUpdate();
			dispatcher = request.getRequestDispatcher("home.jsp");

		}
		catch(Exception e)
		{
			e.printStackTrace();	
		}
	}
}
