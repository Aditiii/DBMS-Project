<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>File Upload to Database Demo</title>
</head>
<body>
    <center>
        <h1>File Upload to Database Demo</h1>
        <form method="post" action="uploadServlet" enctype="multipart/form-data">
             <i class="fa fa-list-ol" aria-hidden="true"></i>
            Shop No :
            <input type="Number" name="shop_no" required="required"><br><br>
            <i class="fa fa-pencil-square-o" aria-hidden="true"></i>
            Name of the brand :
            <input type="text" name="name_of_brand" required="required"><br><br>
             <i class="fa fa-user-circle" aria-hidden="true"></i> 
            Owner :
            <input type="text" name="owner" required="required"><br><br>
            <i class="fa fa-phone" ></i>
             Contact No :
             <input type="Number" name="contact" required="required"><br><br>
            <i class="fa fa-picture-o" aria-hidden="true"></i>
            Upload Logo of your brand :
            <input type="file" name="logo" required="required"  size="50"><br><br> <br>
            <input type="submit" name="submit" class="btn btn-outline" style="margin-left: 8em;">
            
        </form>
    </center>
</body>
</html>