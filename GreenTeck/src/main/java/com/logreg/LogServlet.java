package com.logreg;

import java.io.IOException;
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
import javax.servlet.http.HttpSession;


@WebServlet("/LogServlet")

public class LogServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String uemail = request.getParameter("email");
		String upass = request.getParameter("pass");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/greenteck?useSSL=false","root","12345678");
			PreparedStatement pst= con.prepareStatement("select * from usertab where uemail = ? and upass = ?");
			pst.setString(1, uemail);
			pst.setString(2, upass);
			
			ResultSet rs =pst.executeQuery();
			if(rs.next())
			{
				session.setAttribute("uname", rs.getString("uname"));
				session.setAttribute("uemail", rs.getString("uemail"));
				session.setAttribute("id", rs.getString("id"));
				dispatcher = request.getRequestDispatcher("home.jsp");
			}
			else
			{
				request.setAttribute("status", "failed");
				dispatcher = request.getRequestDispatcher("login.jsp");
			}
			dispatcher.forward(request, response);

		}
		catch(Exception e)
		{
			e.printStackTrace();	
		}
	}
}
