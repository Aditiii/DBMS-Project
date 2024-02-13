<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%@ page import="java.io.*"%> 

<%

Connection con=null;

ResultSet rs=null;

PreparedStatement psmt=null;

FileInputStream fis;

String url="jdbc:mysql://127.0.0.1:3306/mall_management";

try{

Class.forName("com.mysql.jdbc.Driver").newInstance();

con=DriverManager.getConnection(url,"mansi","Mompapa");

File image=new File("C:/Users/Mansi Dabriwal/Desktop/New folder (3)/YAMA 28-09/img/bb.jpg");

psmt=con.prepareStatement("insert into inimage(name,city,image)"+"values(?,?,?)");

psmt.setString(1,"Barack Obama");

psmt.setString(2,"Wasington D.C.");

fis=new FileInputStream(image);

psmt.setBinaryStream(3, (InputStream)fis, (int)(image.length()));

int s = psmt.executeUpdate();

if(s>0) {

%> 

<b><font color="Blue"> 

<% out.println("Image Uploaded successfully !"); %> 

</font></b> 

<% 

}

else {

out.println("unsucessfull to upload image.");

}

con.close();

psmt.close();

}catch(Exception ex){

out.println("Error in connection : "+ex);

}

%>