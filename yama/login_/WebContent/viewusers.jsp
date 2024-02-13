<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>  
  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>View Users</title>  
</head>  
<body>  
  
  
  
<h1>Users List</h1>  
  
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  
%>  
  
<table border="1" width="90%">  
<tr><th>Id</th><th>Date</th><th>Event</th><th>Organizer</th>  
<th>Contact</th><th>Confirm</th><th>Delete</th></tr>  
<c:forEach items="${list}" var="u">  
<tr><td>${u.getId()}</td><td>${u.getdate()}</td><td>${u.getEvent()}</td>  
<td>${u.getOrganizer()}</td><td>${u.getContact()}</td>  
<td><a href="editform.jsp?id=${u.getId()}">Confirm</a></td>  
<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>  
</c:forEach>  
</table>  
<br/><a href="addeventform.jsp">Add New User</a>  
  
</body>  
</html>  