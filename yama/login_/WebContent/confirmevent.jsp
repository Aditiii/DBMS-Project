<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="com.login.dao.UserDao,com.login.dao.User"%>

<%  
String id=request.getParameter("id");  
User u=UserDao.getRecordById(Integer.parseInt(id));  
%>  
  
<%@page import="com.login.dao.UserDao"%>  
<jsp:useBean id="u" class="com.login.dao.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.insert(u);  
response.sendRedirect("viewusers.jsp");  
%>  
  

</body>
</html>