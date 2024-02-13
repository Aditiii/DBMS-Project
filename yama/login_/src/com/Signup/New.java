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
 * Servlet implementation class New
 */
@WebServlet("/New")
public class New extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
		String shop_no =request.getParameter("shop_no");
		//Integer shopno = new Integer(shop_no);
		String brand=request.getParameter("name_of_brand");
		String owner =request.getParameter("owner");
		String contactno =request.getParameter("contact");
		BigInteger ib = new BigInteger(contactno);
		String logo =request.getParameter("logo");
	//	 Part filePart = request.getPart("logo");
		System.out.println(shop_no);
		System.out.println(brand);
		System.out.println(owner);
		System.out.println(ib.toString());
		System.out.println(logo);
		
		
	    String uname =request.getParameter("uname");
		
		LoginDao dao=new LoginDao();
		
		if(dao.checkStore(brand))
		{
			HttpSession session=request.getSession();
			session.setAttribute("username", uname);
			response.sendRedirect("welcome1.jsp");
		}
		else
		{   dao.insertStore(shop_no,brand,owner,ib,logo);
			response.sendRedirect("done.jsp");
		}
		
	}

	

}
