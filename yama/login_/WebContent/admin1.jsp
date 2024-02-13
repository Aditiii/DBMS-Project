<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
 <head>
    <!-- Required meta tags -->
 	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <link rel="shortcut icon" href="img/logo.png" type="image/x-icon" />
    <link rel="stylesheet" type="text/css" href="css/yama.css"> 
    <link rel="stylesheet" type="text/css" href="css/animate.css">
    <link href="https://fonts.googleapis.com/css?family=Quicksand" rel="stylesheet">
    <title>Admin</title>
</head>
<body style="font-family: 'Quicksand',sans-serif;">
	
	<%
     if(session.getAttribute("username")==null)
     {
    	 response.sendRedirect("index.jsp");
     }
%>
	
	<div>
	<div class="container-fluid">

  		<div class="row" id="header">
  			<div class="col-3 bg"></div>
  			<i class="fa fa-envelope" style="font-size: 1.3em;margin-top: 5px"></i>
    		<div class="col-3 bg" style="margin-top: 5px;">Call: 026-26249250,8108590333</div>
    		<i class="fa fa-phone" style="font-size: 1.3em;margin-top: 6px;"></i>
    		<div class="col-3 bg" style="margin-top: 5px">info@yama.com</div>
    	    <p style="margin-left:150px;margin-top: 5px">Welcome ${username}!<p>
  		</div>

  		<div class="row" style="margin-top: 25px;">
  			<div class="col-4 bg">
  				<a href="index.html"><img src="img/logo.png" style="height: 80px;width: 270px; float: left;"></a>
  			</div>
  			<div class="col-4 bg" style="margin-top: 22px; font-size: 25px;">
  			  	<nav class="navbar navbar-light bg-light">
  					<form class="form-inline">
    				<input class="form-control mr-sm-2" type="search" placeholder="Search" required style="width: 300px;">
    				<button class="btn btn my-2 my-sm-0" type="submit">Search</button>
  					</form>
				</nav>
  			</div>
  			<div class="col-3 bg"></div> 
  			<div class="col-1 bg" style="margin-top: 22px; font-size: 25px;">
  					<form action="Logout">
					<input class="btn btn-outline" type="submit" value="Logout" style="background-color:  #b40036;color: white;">
					</form>			
  			</div>
  			<div class="col-2 bg"></div>
  			<!-- <div class="col-2 bg" style="margin-top: 22px; font-size: 25px;">
  				<nav class="navbar navbar-light bg-light" id="login">
  					<form class="form-inline">
    					<button class="btn btn-outline" type="button" data-toggle="modal" data-target="#log" style="background-color:  #b40036;color: white">Log In</button>
   	 					<button class="btn btn-outline" type="button" data-toggle="modal" data-target="#sign" style=" margin-left: 2px; background-color:  #b40036; color: white">Sign Up</button>
  					</form>
				</nav>
  			</div> -->
  		</div>
	</div></div><br><br><br>
<div style="margin-left: 560px">
 <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">
  <li class="nav-item">
    <a class="nav-link active" id="pills-home-tab" data-toggle="pill" href="#event" role="tab" aria-controls="pills-home" aria-selected="true" style="padding-left:30px;padding-right: 30px;background-color: brown;margin-bottom: 1px;color: white;">Events</a>
  </li>
  <li class="nav-item">
    <a class="nav-link" id="pills-profile-tab" data-toggle="pill" href="#newstore" role="tab" aria-controls="pills-profile" aria-selected="false" style="padding-left: 20px;background-color: brown;margin-bottom: 1px;color: white;margin-left: 0.3em;">New Store</a>
  </li>
</ul></div>
<br><br>

<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

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


<div class="tab-content" id="pills-tabContent">
  <div class="tab-pane fade show active" id="event" role="tabpanel" aria-labelledby="pills-home-tab">
  <center>
 <h3> Need Approval for Conducting Event!</h3><br><br>
  
  <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Id</b></td>
<td><b>Date</b></td>
<td><b>Organizer</b></td>
<td><b>Event</b></td>
<td><b>Contact</b></td>
<td><b>Email</b></td>
<td><b>Confirm</b></td>
<td><b>Action</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM RequestEvent order by id";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("Date") %></td>
<td><%=resultSet.getString("Organizer") %></td>
<td><%=resultSet.getString("Event") %></td>
<td><%=resultSet.getString("Contact") %></td>
<td><%=resultSet.getString("email_id") %></td>
<td><a href="./Adminupdate?id=<%=resultSet.getString("id") %>"> Confirm </a>
<td><a href="./Admindelete?id=<%=resultSet.getString("id") %>"> Delete </a>
 </tr>

<% 
}
connection.close();	
} catch (Exception e) {
e.printStackTrace();
}
%>
</table><br><br>
 
 
 
 
 
  <h3> Upcoming Events!</h3><br><br>
  
  <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Id</b></td>
<td><b>Date</b></td>
<td><b>Organizer</b></td>
<td><b>Event</b></td>
<td><b>Contact</b></td>
<td><b>Email</b></td>
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT * FROM finalevent order by date";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getInt("id") %></td>
<td><%=resultSet.getString("Date") %></td>
<td><%=resultSet.getString("Organizer") %></td>
<td><%=resultSet.getString("Event") %></td>
<td><%=resultSet.getString("Contact") %></td>
<td><%=resultSet.getString("email_id") %></td>
 <tr>

<% 
}
connection.close();	
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 
  </center>
</div>


  <div class="tab-pane fade" id="newstore" role="tabpanel" aria-labelledby="pills-profile-tab">
  <center>
 
   <h3> Stores waiting for Approval!</h3><br><br>
  
  <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Shop no</b></td>
<td><b>Brand</b></td>
<td><b>Owner</b></td>
<td><b>Contact</b></td>
<td><b>Email_id</b></td>
<td><b>Confirm</b></td>
<td><b>Action</b></td>
<!-- <td><b>logo</b></td> -->
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT shop_no,name_of_brand,owner,contact,email_id FROM store order by shop_no";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getInt("shop_no") %></td>
<td><%=resultSet.getString("name_of_brand") %></td>
<td><%=resultSet.getString("owner") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("email_id") %></td>
<td><a href="./Adminupdatestore?shop_no=<%=resultSet.getString("shop_no") %>"> Confirm </a>
<td><a href="./Admindeletestore?shop_no=<%=resultSet.getString("shop_no") %>"> Delete </a>  
<%-- <td><%=resultSet.getString("Contact") %></td> --%>

 <tr>

<% 
}
connection.close();	
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
  </center>
 <br><br> 
  
  <center>
 
   <h3> Already existing stores!</h3><br><br>
  
  <table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="#A52A2A">
<td><b>Shop no</b></td>
<td><b>Brand</b></td>
<td><b>Owner</b></td>
<td><b>Contact</b></td>
<td><b>Email_id</b></td>
<!-- <td><b>logo</b></td> -->
</tr>
<%
try{ 
connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
statement=connection.createStatement();
String sql ="SELECT shop_no,name_of_brand,owner,contact,email_id FROM finalstore order by shop_no";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr bgcolor="#DEB887">
<td><%=resultSet.getInt("shop_no") %></td>
<td><%=resultSet.getString("name_of_brand") %></td>
<td><%=resultSet.getString("owner") %></td>
<td><%=resultSet.getString("contact") %></td>
<td><%=resultSet.getString("email_id") %></td>
<%-- <td><%=resultSet.getString("Contact") %></td> --%>

 <tr>

<% 
}
connection.close();	
} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
  </center>
</div>
</div>



















<!--Footer-->

<div class="footer wow bounceInUp" data-wow-duration="3s">
<footer id="footer" style="background-color: #19191a; color: white;margin-top: 30em; font-size: 0.85em">
  <div class="container-fluid">
    <div class="row">
      <div class="col-3" style="margin-left: 5em;">
        <h2><img src="img/yama_white.jpg" width="200" height="72" class="img-responsive" style="margin-top: 2em;"> </h2>
      <p>Mall YAMA is located in the heart of Pune on Shankar Sheth road and has a strong affluent and youth catchment surrounding the site.</p>
        
      </div>


      <div class="col-md-3" style="margin-top: 4em">
          <h4>&nbsp&nbsp&nbspMALL <span>TIMINGS</span> </h4>
          <ul>

            <b  style="color:#FFF;">All Stores</b>
            <li>Monday - Friday 11:00 - 21:30</li>
            <li>Saturday - Sunday 11:00 - 23:00</li><br>
            <b style="color:#FFF;"> Food and Beverages</b>
            <li>Monday - Friday 11:00 - 23:00</li>
            <li>Saturday - Sunday 11:00 - 23:00</li>
            

          </ul>
        </div>


         <div class="col-md-3 " style="margin-top: 4em">
          <h4>Store <span>Information</span></h4><br>
                <div class="clearfix">
                <i class="fa fa-phone" aria-hidden="true" style="float: left"></i>
                <div style="margin-left: 2.5em;">
                <h6>Phone Number</h6>
                <p>020-67256888</p>
                </div>
                </div>
            
                <i class="fa fa-map-marker" aria-hidden="true" style="float: left"></i>
                <div style="margin-left: 2.5em">
                <h6>Location</h6>
                <p>

                Mall YAMA
                Shankarshet Road<br>
                Near Swargate 
                Pune.  
                
                </p>
             </div>
      </div>


      <div class="col-md-2" style="margin-top: 4em">
        <div class="footer-social-icons">
        <h4 class="_14">Follow us on</h4>
     <a href="https://www.facebook.com/"><i class="fa fa-facebook-square fa-2x" aria-hidden="true" style="color: white" ></i></a>
       <a href="https://twitter.com/"><i class="fa fa-twitter-square fa-2x" aria-hidden="true" style="padding-left: 0.33em;color: white"></i></a>
       <a href="https://plus.google.com/"> <i class="fa fa-google-plus-square fa-2x" aria-hidden="true"  style="padding-left: 0.33em;color: white"></i></a>




      </div>
    </div>    
      </div>

          <div class="row">
            <div class="col-md-12" style="height: 10em;"><center>
                <hr color = "white" style="width: 1330px;"><p class="copy-right" style="margin-top: 4em; font-size: 15px;">&copy 2018 Mall YAMA. All rights reserved | Design by Web Team PICT</p></center>
            </div>
          </div>


      </div>

   
</footer>
</div>


    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/wow.min.js"></script>

              <script>
              new WOW().init();
              </script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="js/yama.js"></script>
    <script src="https://github.com/juliangarnier/anime.git"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>


</body>
</html>
    