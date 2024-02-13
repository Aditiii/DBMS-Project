<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

<head>
	<title></title>
</head>
<body>
<%
	String keyword = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
%>

	<form name="frmSearch" method="get" action="Store.jsp">
	  <table width="599" border="1">
	    <tr>
	      <th>Keyword
	      <input name="txtKeyword" type="text" id="txtKeyword" value="<%=keyword%>">
	      <input type="submit" value="Search"></th>
	    </tr>
	  </table>
	</form>

<%
String id = request.getParameter("userId");
String driverName = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://127.0.0.1:3306/";
String dbName = "mall_management";
String userId = "mansi";
String password = "Mompapa";


try {
Class.forName(driverName);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}

Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>Search details</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A" style="color:white">
<td><b>Available Brands</b></td>
<td><b>Floor</b></td>
<!-- <td><b>Organizer</b></td>
<td><b>Event</b></td>
<td><b>Contact</b></td>
<td><b>Confirmation</b></td> -->
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
//String sql ="SELECT date,Event FROM temp1 order by date";
String sql="SELECT name_of_brand,floor FROM  newstore WHERE name_of_brand like '" +  keyword + "%'";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#FDFED2" >

<td><%=resultSet.getString("name_of_brand") %></td>
<td><%=resultSet.getString("floor") %></td>
<%-- <td><%=resultSet.getString("Organizer") %></td>
<td><%=resultSet.getString("Event") %></td>
<td><%=resultSet.getString("Contact") %></td>
<td><button type="submit" formaction="Update">Confirm</button></td> --%>
 <tr>

<% 
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>

<br><br>

<%-- 	<%
	Connection connect = null;
	Statement s = null;
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
		
		connect =  DriverManager.getConnection("jdbc:mysql://localhost/mall_management" +
				"?user=mansi&password=Mompapa");
		
		s = connect.createStatement();
		
		String sql = "SELECT name_of_brand FROM  newstore WHERE Name like '%" +  keyword + "%' ";
		
		System.out.println(sql);
		
		ResultSet rec = s.executeQuery(sql);
		%>
		<table width="600" border="1">
		  <tr>
		    <th width="91"> <div align="center">Shop Name </div></th>
		  
		    
		  </tr>	
			<%while((rec!=null) && (rec.next())) { %>
		while(resultSet.next()){
		%>
				  <tr>
				    <td><div align="center"><%=rec.getString("name_of_brand")%></div></td>
				    
				  </tr>
	       	<%}%>
	  	</table>      
	    <%	
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	
		try {
			if(s!=null){
				s.close();
				connect.close();
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
	%> --%>
</body>
</html>


