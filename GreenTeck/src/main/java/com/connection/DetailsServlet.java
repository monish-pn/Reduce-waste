package com.connection;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


@WebServlet("/DetailsServlet")
public class DetailsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String pid = request.getParameter("pid");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try 
		{	
				session.setAttribute("pid",pid);		
				dispatcher = request.getRequestDispatcher("details.jsp");
		}
		catch(Exception e)
		{
			e.printStackTrace();	
		}
		dispatcher.forward(request, response);

	}

}
