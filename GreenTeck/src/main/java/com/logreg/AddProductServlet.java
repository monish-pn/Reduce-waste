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

@WebServlet("/AddProductServlet")
public class AddProductServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String pname=request.getParameter("pname");
		String ptype=request.getParameter("ptype");
		String pkg=request.getParameter("pkg");
		String ptra=request.getParameter("ptra");
		String pmaxtime=request.getParameter("pmaxtime");
		String pfilter=request.getParameter("pfilter");
		String padds=request.getParameter("padds");
		String pcname=request.getParameter("pcname");
		String pcmobile=request.getParameter("pcmobile");
		String pcmail=request.getParameter("pcmail");
		String ppd1=request.getParameter("ppd1");
		String ppd2=request.getParameter("ppd2");
		String userid=request.getParameter("userid");
		
		RequestDispatcher dispatcher=null;
		Connection con=null;
		
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			con= DriverManager.getConnection("jdbc:mysql://localhost:3306/greenteck?useSSL=false","root","12345678");
			PreparedStatement pst= con.prepareStatement("insert into producttab(pname,ptype,pkg,ptra,pmaxtime,pfilter,padds,pcname,pcmobile,pcmail,ppd1,ppd2,userid) values(?,?,?,?,?,?,?,?,?,?,?,?,?)");
			pst.setString(1, pname);
			pst.setString(2, ptype);
			pst.setString(3, pkg);
			pst.setString(4, ptra);
			pst.setString(5, pmaxtime);
			pst.setString(6, pfilter);
			pst.setString(7, padds);
			pst.setString(8, pcname);
			pst.setString(9, pcmobile);
			pst.setString(10, pcmail);
			pst.setString(11, ppd1);
			pst.setString(12, ppd2);
			pst.setString(13, userid);

			
			int rowcount=pst.executeUpdate();
			dispatcher=request.getRequestDispatcher("home2.jsp");
			
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
