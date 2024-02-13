package com.Signup;

import java.io.IOException;
import java.math.BigInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.login.dao.LoginDao;

/**
 * Servlet implementation class Reg1
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String Organizer =request.getParameter("Organizer");
		String Event=request.getParameter("event_n");
		String contactno =request.getParameter("Contact");
		BigInteger bi = new BigInteger(contactno); // max unsigned 64-bit number
	    String userInput =request.getParameter("date");
	    String email =request.getParameter("email_id");	 
		String uname =request.getParameter("uname");
		
		LoginDao dao=new LoginDao();
		
		HttpSession session=request.getSession();
		session.setAttribute("username", uname);

		/*if(dao.checkEvent(userInput))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("addevent-error.jsp");
		}
		else
		{ */
		  int status=dao.insertEvent(userInput,Organizer,Event,bi,email);
		     
		  
		    if(status>0)
		    {  
		      response.sendRedirect("addevent-success.jsp");  
		     }
		    else
		    {  
		     response.sendRedirect("addevent-error.jsp");  
		      }  
		
		
		
		
	}

}	


