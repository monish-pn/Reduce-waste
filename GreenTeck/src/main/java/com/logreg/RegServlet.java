package com.logreg;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 

@WebServlet("/RegServlet")


public class RegServlet extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String uname=request.getParameter("uname");
		String uemail=request.getParameter("uemail");
		String umobile=request.getParameter("umobile");
		String upass=request.getParameter("upass");
		String uocc=request.getParameter("uocc");
		String ucity=request.getParameter("ucity");
		String uadds=request.getParameter("uadds");
		String curl=request.getParameter("curl");
		String cname=request.getParameter("cname");
		String cappl=request.getParameter("cappl");
		String cadds=request.getParameter("cadds");
		String corir=request.getParameter("corir");
		String ctype=request.getParameter("ctype");
		String cmobile=request.getParameter("cmobile");
		
		RequestDispatcher dispatcher=null;
		Connection con=null;
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/greenteck?useSSL=false","root","12345678");
			PreparedStatement pst= con.prepareStatement("insert into usertab(uname,uemail,umobile,upass,uocc,ucity,uadds,curl,cname,cappl,cadds,corir,ctype,cmobile) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, uname);
			pst.setString(2, uemail);
			pst.setString(3, umobile);
			pst.setString(4, upass);
			pst.setString(5, uocc);
			pst.setString(6, ucity);
			pst.setString(7, uadds);
			pst.setString(8, curl);
			pst.setString(9, cname);
			pst.setString(10, cappl);
			pst.setString(11, cadds);
			pst.setString(12, corir);
			pst.setString(13, ctype);
			pst.setString(14, cmobile);
			
			int rowcount=pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("login.jsp");
			
			if(rowcount>0)
			{
				request.setAttribute("status","success");
			}
			else
			{
				request.setAttribute("status","failed");
			}
			dispatcher.forward(request, response);

		}
		catch(Exception e)
		{
			e.printStackTrace();	
		}
		finally
		{
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
}
  