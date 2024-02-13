package com.login;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dao.LoginDao;

@WebServlet("/Admindelete")
public class Admindelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Admindelete() {
        super();
        // TODO Auto-generated constructor stub
    }
    LoginDao dao=new LoginDao();
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id =request.getParameter("id");
		System.out.println(id);
	   if((dao.deleteAdmin(id))==1)
	{
		System.out.println("Row Deleted Successfully!");
	}
	   RequestDispatcher dispacther =request.getRequestDispatcher("admin1.jsp");
	   dispacther.forward(request,response);
	}
	
	   
	}

	


