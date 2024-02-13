<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
%>
 <%@ taglib prefix='c' uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix='sql' uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ page import="DAO.*" %>

  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>ADMIN PANEL</title>
<!--===============================================================================================-->
     <!-- Core CSS - Include with every page -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
                    <link rel="stylesheet" type="text/css" href="style/css/home.css">
        
<!--===============================================================================================-->



    </head>

    <body>

    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            <a class="navbar-brand" href="#">
                <img src="http://placehold.it/200x50&text=LOGO" alt="TRS logo"">
            </a>
        </div>
        <!-- Top Menu Items -->
        <ul class="nav navbar-right top-nav">
            <li><a href="#" data-placement="bottom" data-toggle="tooltip" href="#" data-original-title="Stats"><i class="fa fa-bar-chart-o"></i>
                </a>
            </li>            
            <li><a href="#" id="datetime_refresh" class="swpstatus" data-toggle="tooltip" data-placement="bottom" title="Click to refresh the current server time">Server <i class="fa fa-clock-o fa-fw"></i></a> 
            </li>       
            <li class="dropdown">
                <a href="#" class="dropdown-toggle" data-toggle="dropdown">Admin User <b class="fa fa-angle-down"></b></a>
                <ul class="dropdown-menu">
                    <li><a href="#"><i class="glyphicon glyphicon-user"></i> Edit Profile</a></li>
                    <li class="divider"></li>
                    <li><a href="logout"><i class="glyphicon glyphicon-log-out"></i> Logout</a></li>
                </ul>
            </li>
        </ul>
        <!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav side-nav">
                <li>
                    <a><i class="fa fa-dashboard fa-fw"></i> Dashboard</a>
                </li>
                 <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-1"><i class="fa fa-fw fa-user-secret"></i> Admin <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-1" class="collapse">
                        <li><a href="admin_home.jsp"><i class="fa fa-home"></i> Home</a></li>
                        <li><a href="admin_create.jsp"><i class="fa fa-fw fa-user-plus"></i> Create Admin</a></li>
                        <li><a href="admin_view.jsp"><i class="fa fa-eye"></i> View Admin</a></li>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="fa fa-edit fa-fw"></i> Create SWP</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa-file-text fa-fw"></i> View SWP</a>
                </li>
                <li>
                    <a href="#"><i class="fa fa fa-cogs fa-fw"></i> Completed SWP<span id="COCnt" class="badge pull-right bg-danger"></span></a>
                </li>
                <li>
                    <a href="user_view.jsp"><i class="fa fa-user fa-fw"></i> User<span class="fa arrow"></span></a>
                </li>
                
                  <li>
                    <a href="report.jsp"><i class="fa fa-bar-chart-o fa-fw"></i> Reports<span class="fa arrow"></span></a>
                </li>
                <li>
                    <a href="#" data-toggle="collapse" data-target="#submenu-2"><i class="fa fa-fw fa-star"></i>  MENU 2 <i class="fa fa-fw fa-angle-down pull-right"></i></a>
                    <ul id="submenu-2" class="collapse">
                        <li><a href="#"><i class="fa fa-angle-double-right"></i> SUBMENU 2.1</a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i> SUBMENU 2.2</a></li>
                        <li><a href="#"><i class="fa fa-angle-double-right"></i> SUBMENU 2.3</a></li>
                    </ul>
                </li>
                <li>
                    <a href="investigaciones/favoritas"><i class="fa fa-fw fa-user-plus"></i>  MENU 3</a>
                </li>
                <li>
                    <a href="sugerencias"><i class="fa fa-fw fa-paper-plane-o"></i> MENU 4</a>
                </li>
                <li>
                    <a href="faq"><i class="fa fa-fw fa fa-question-circle"></i> MENU 5</a>
                </li>
            </ul>
        </div>
        <!-- /.navbar-collapse -->
    </nav>

    <div id="page-wrapper">
        <div class="container-fluid">
            <!-- Page Heading -->
            <div class="row" id="main" >
                <div class="col-sm-12 col-md-12 well" id="content">
                    <h1 align="center">Welcome ${userid }!</h1>
                </div>
            </div>
            <!-- /.row -->
              <sql:setDataSource var="db" driver="com.mysql.jdbc.Driver" url="jdbc:mysql://localhost:3306/community" user="shrey" password="shrey"/>
<sql:query var="rs" dataSource="${db}">select * from ADMIN_INFO</sql:query>   
            
           
<div align="center" >
    <table border="1">
        <caption>List of Admin</caption>
        <tr>
            <th>Username</th>
            <th>Firstname</th>
            <th>Lastname</th>
            <th>Mobile No</th>
            <th>Email</th>
            <th>Date Joined</th>
            <th>Action</th>
        </tr>
            <c:forEach items="${rs.rows}" var="Admin">
        <tr>
            <td><c:out value="${Admin.username }"></c:out></td>
            <td><c:out value="${Admin.firstname }"></c:out></td>
            <td><c:out value="${Admin.lastname }"></c:out></td>
            <td><c:out value="${Admin.mob_no }"></c:out></td>
            <td><c:out value="${Admin.email }"></c:out></td>
            <td><c:out value="${Admin.date_joined }"></c:out></td>
            <td>
                         <a href="./admin_delete?username=<c:out value='${Admin.username}' />">Delete</a> 
               </td>
        </tr>
        </c:forEach>
    </table>
</div>
            
        </div>
         
        <!-- /.container-fluid -->
    </div>
    <div align="center">
             <button class="btn btn-primary hidden-print" onclick="myFunction()"><span class="glyphicon glyphicon-print" aria-hidden="true"></span> Print</button>
        </div>
    <!-- /#page-wrapper -->
</div><!-- /#wrapper -->

</body>
<script type="text/javascript">
function myFunction() {
    window.print();
}
</script>

</html>

