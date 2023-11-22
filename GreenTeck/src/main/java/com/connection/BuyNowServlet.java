package com.connection;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/BuyNowServlet")
public class BuyNowServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Pid = request.getParameter("pid");
		RequestDispatcher dispatcher = null;
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/greenteck","root","12345678");
			PreparedStatement pst= con.prepareStatement("UPDATE producttab SET Status = 'sold' WHERE product_id= ? ");
			pst.setString(1, Pid);			
			dispatcher = request.getRequestDispatcher("home.jsp");
			dispatcher.forward(request, response);
		}
		catch(Exception e)
		{
			e.printStackTrace();	
		}
	}

}
