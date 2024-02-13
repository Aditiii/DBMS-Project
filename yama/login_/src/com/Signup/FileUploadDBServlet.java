package com.Signup;
 
import java.io.IOException;
import java.io.InputStream;
import java.math.BigInteger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
 
@WebServlet("/uploadServlet")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class FileUploadDBServlet extends HttpServlet {
     
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	// database connection settings
    private String dbURL = "jdbc:mysql://127.0.0.1:3306/mall_management";
    private String dbUser = "mansi";
    private String dbPass = "Mompapa";
     
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
       /* String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
         */
    	
    	String shop_no =request.getParameter("shop_no");
		String brand=request.getParameter("name_of_brand");
		String owner =request.getParameter("owner");
		String contactno =request.getParameter("contact");
		BigInteger ib = new BigInteger(contactno);
		String email =request.getParameter("email_id");
		
        InputStream inputStream = null; // input stream of the upload file
         
        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("logo");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
             
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }
         
        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client
         
        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);
 
            // constructs SQL statement
            String sql = "INSERT INTO store(shop_no,name_of_brand,owner,contact,logo,email_id)  values (?, ?, ?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
             
            statement.setString(1, shop_no);	
            statement.setString(2, brand);
            statement.setString(3, owner);
            statement.setString(4, ib.toString());
            
            statement.setString(6, email);
            
            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(5, inputStream);
            }
 
            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
                message = "Request sent for approval!";
            }
        } catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
          /*  <jsp:include page="newStore_w.jsp"></jsp:include>  */
            ex.printStackTrace();
        } finally {
            if (conn != null) {
                // closes the database connection
                try {
                    conn.close();
                } catch (SQLException ex) {
                    ex.printStackTrace();
                }
            }
            // sets the message in request scope
            request.setAttribute("Message", message);
             
            // forwards to the message page
            getServletContext().getRequestDispatcher("/Message.jsp").forward(request, response);
        }
    }
}