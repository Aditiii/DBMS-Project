package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dao.LoginDao;

@WebServlet("/Adminupdatestore")
public class Adminupdatestore extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	LoginDao dao=new LoginDao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
	  
		String id =request.getParameter("shop_no");
		System.out.println(id);
	   if((dao.updatestoreAdmin(id))==1)
	{
		System.out.println("Row Deleted Successfully!");
	}
	   RequestDispatcher dispacther =request.getRequestDispatcher("admin1.jsp");
	   dispacther.forward(request,response);
	}
	}

	


