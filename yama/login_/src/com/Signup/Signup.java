package com.Signup;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

@WebServlet("/Signup")
public class Signup extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String fname =request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email_id =request.getParameter("email_id");
		String uname =request.getParameter("uname");
		String pass=request.getParameter("pass");
		
		LoginDao dao=new LoginDao();
		//dao.insert(uname, pass);
	/*	if(dao.check(fname,lname,email_id,uname, pass))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("welcome1.jsp");
		}
		else
		{   dao.insert(fname,lname,email_id,uname,pass);
			response.sendRedirect("done.jsp");
		}
		
		*/
		
		if(dao.checkEmail(email_id))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
//			response.sendRedirect("welcome1.jsp");
			
			String output1 = "<div class='alert alert-warning alert-dismissible fade show'>\r\n" + 
					"    <button type='button' class='close' data-dismiss='alert'>&times;</button>\r\n" + 
					"   User Already exists. Kindly log In.\r\n" + 
					"  </div>";
			
			request.setAttribute("notdone",output1);
			request.getRequestDispatcher("/index.jsp").forward(request,response);
			
		}
		else
		{   dao.insert(fname,lname,email_id,uname,pass);
		/*	response.sendRedirect("done.jsp");*/
		
		String output = "<div class='alert alert-success alert-dismissible fade show'>\r\n" + 
				"    <button type='button' class='close' data-dismiss='alert'>&times;</button>\r\n" + 
				"    <strong> Success !</strong> Account created successfully.\r\n" + 
				"  </div>";
		
		request.setAttribute("done",output);
		request.getRequestDispatcher("/index.jsp").forward(request,response);
		}
		
		
        				
	}

}
