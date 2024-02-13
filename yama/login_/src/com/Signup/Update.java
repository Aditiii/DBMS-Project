package com.Signup;

import java.io.IOException;
import java.math.BigInteger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dao.LoginDao;


@WebServlet("/Update")
public class Update extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String Organizer =request.getParameter("Organizer");
		String Event=request.getParameter("Event");
		String contactno =request.getParameter("Contact");
		BigInteger bi = new BigInteger(contactno); // max unsigned 64-bit number
	    String userInput =request.getParameter("date");
	    
	   // System.out.println
	    
	    LoginDao dao=new LoginDao();
	    
		if(dao.checkEvent(userInput))
		{
			//HttpSession session=request.getSession();
		//	session.setAttribute("username", uname);
			response.sendRedirect("welcome1.jsp");
		}
		else
		{   dao.insertEvent(userInput,Organizer,Event,bi);
			response.sendRedirect("events_w.jsp");
		}
		
	}


}
