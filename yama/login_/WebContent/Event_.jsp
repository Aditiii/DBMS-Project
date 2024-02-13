
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>

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
   
</head>
<body style="font-family: 'Quicksand',sans-serif;">

 <%
     if(session.getAttribute("username")==null)
     {
    	 response.sendRedirect("login.jsp");
     }
%>
 
    <div class="container-fluid">

        <div class="row" id="header">
            <div class="col-3 bg"></div>
            <i class="fa fa-envelope" style="font-size: 1.3em;margin-top: 5px"></i>
            <div class="col-3 bg" style="margin-top: 5px;">Call: 026-26249250,8108590333</div>
            <i class="fa fa-phone" style="font-size: 1.3em;margin-top: 6px;"></i>
            <div class="col-3 bg" style="margin-top: 5px">info@yama.com</div>
            <p style="margin-left:150px;margin-top: 5px">Welcome ${username}!<p>
       </div>

<%
	String keyword = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
%>

        <div class="row" style="margin-top: 25px;">
            <div class="col-4 bg">
                <a href="index.html"><img src="img/logo.png" style="height: 80px;width: 270px; float: left;"></a>
            </div>
             <div class="col-4 bg" style="margin-top: 22px; font-size: 25px;">
                <nav class="navbar navbar-light bg-light">
                    <form class="form-inline" action="Displaystore.jsp">
                    <input class="form-control mr-sm-2" type="search" name="txtKeyword" placeholder="Search" required style="width: 300px;">
                    <button class="btn btn my-2 my-sm-0" type="submit">Search</button>
                    </form>
                </nav>
            </div> 
             <div class="col-3 bg"></div>
          
  			<div class="col-1 bg" style="margin-top: 22px; font-size: 25px;">
  					<form action="Logout">
					<input class="btn btn-outline" type="submit" value="Logout" style="background-color:  #b40036;color: white;">
					</form>
  
  				
				</nav>
  			</div> 
        </div>
    </div>

    <br><br>
        <div class="container-fluid" style="background-color: #19191a" >
            <nav class="navbar navbar-expand md sticky-top -material" id="navbar" >
                <ul class="nav navbar-nav">
                    <li class="nav-item" style="margin-left: 17em;height: 3.7em;padding-top: 0.4em"><a class="nav-link" href="welcome.jsp"><strong>Home</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="layout_w.jsp"><strong>Layout</strong></a></li>
                    <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="Event_.jsp"><strong>Events</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em; height: 3.7em;padding-top: 0.3em;"><a class="nav-link" href="about_w.jsp"><strong>About Us</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="contact_w.jsp"><strong>Contact Us</strong></a></li>
              <li class="nav-item" style=" background-color:#f46105; margin-left:4.7em; height: 3.7em; padding-top: 0.3em;"><a style="color: black;" class="nav-link" href="newStore_w.jsp"><strong>New Store</strong>
              <i class="fa fa-newspaper-o fa-lg" aria-hidden="true"></i></a></li>

                </ul>
            </nav>
        </div>


            <div class="container-fluid" style="background-image: url('img/final.jpg');width: 100%;height: 13em; filter: brightness(55%);">
        
      </div><br><br>
      
      
      
      <div style="margin-left: 10em;">
      <h5 class="wow bounceIn"><strong><h3>Events</h3> </strong></h5>
          <div class="wow bounceInLeft" style="font-size: 0.9em;">
            <p align="justify">
                Mall Kumar Pacific focuses not only on the brands available in the mall, but also on the overall experience it provides to a shopper.Mall Kumar Pacific planned events that consist of fun activities, games, offers and exhibitions and made each event Grand and successful.
                <br>
                <li style="font-size: 0.9em;">MONSOON EOSS-SHOP AND WIN</li>
                <li style="font-size: 0.9em;"> Summer With Kids</li>
                <li style="font-size: 0.9em;"> Navaratri</li>
                <li style="font-size: 0.9em;"> Diwali</li>
                <li style="font-size: 0.9em;"> Christmas</li>
                <li style="font-size: 0.9em;">EOSS</li>
                <li style="font-size: 0.9em;">Republic Day</li>
                <li style="font-size: 0.9em;">Independence Day</li>
            </p>
          </div>
        </div>
        <br><br><br><br>

 


        <div class="row">
        <div class="col-3">
        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
        <a class="nav-link active" id="v-pills-diwali-tab" data-toggle="pill" href="#v-pills-diwali" role="tab" aria-controls="v-pills-diwali" aria-selected="true" style="padding-left:95px;margin-left: 5em;background-color: brown;margin-bottom: 1px;color: white;">Diwali</a>
        <a class="nav-link" id="v-pills-movie-tab" data-toggle="pill" href="#v-pills-movie" role="tab" aria-controls="v-pills-movie" aria-selected="false" style="padding-left: 55px;margin-left: 5em;background-color: brown;margin-bottom: 1px;color: white;">Movie Promotions</a>
        <a class="nav-link" id="v-pills-dance-tab" data-toggle="pill" href="#v-pills-dance" role="tab" aria-controls="v-pills-dance" aria-selected="false" style="padding-left:55px;margin-left: 5em;background-color: brown;margin-bottom: 1px;color: white;">Dance Competitions</a>
        <a class="nav-link" id="v-pills-republic-tab" data-toggle="pill" href="#v-pills-republic" role="tab" aria-controls="v-pills-republic" aria-selected="false" style="padding-left: 25px;margin-left: 5em;background-color: brown;margin-bottom: 1px;color: white;">Republic Day Celebration</a>
        </div>
      </div>
      <div class="col-9">
      <div class="tab-content" id="v-pills-tabContent">
      <div class="tab-pane fade show active" id="v-pills-diwali" role="tabpanel" aria-labelledby="v-pills-diwali-tab">
        <img src="img/diwali1.jpg" style="width: 16em;height: 10em;">
        <img src="img/diwali2.jpg" style="width: 16em;height: 10em; padding-left: 20px;">
        <img src="img/diwali3.jpg" style="width: 16em;height: 10em; padding-left: 20px;">
<!--        <img src="img/diwali4.jpg" style="width: 16em;height: 10em; padding-left: 20px;" >
 -->      </div>


      <div class="tab-pane fade" id="v-pills-movie" role="tabpanel" aria-labelledby="v-pills-movie-tab">
         <img src="img/movie1.jpg" style="width: 16em;height: 10em;">
        <img src="img/movie2.jpg" style="width: 16em;height: 10em; padding-left: 20px;">
        <img src="img/movie3.jpg" style="width: 16em;height: 10em; padding-left: 20px;">
<!--         <img src="img/movie4.jpg" style="width: 16em;height: 10em; padding-left: 20px;" >
 -->      </div>


      <div class="tab-pane fade" id="v-pills-dance" role="tabpanel" aria-labelledby="v-pills-dance-tab">
         <img src="img/dance1.jpg" style="width: 16em;height: 10em;">
        <img src="img/dance2.jpg" style="width: 16em;height: 10em; padding-left: 20px;">
        <img src="img/dance3.jpg" style="width: 16em;height: 10em; padding-left: 20px;">
<!--         <img src="img/dance4.jpg" style="width: 16em;height: 10em; padding-left: 20px;" >
 -->      </div>


      <div class="tab-pane fade" id="v-pills-republic" role="tabpanel" aria-labelledby="v-pills-republic-tab">
        <img src="img/republic1.jpg" style="width: 16em;height: 10em;">
        <img src="img/republic2.jpg" style="width: 16em;height: 10em; padding-left: 20px;">
        <img src="img/republic3.jpg" style="width: 16em;height: 10em; padding-left: 20px">
<!--         <img src="img/republic4.jpg" style="width: 16em;height: 10em; padding-left: 20px;" >
 -->      </div>


    </div>
  </div>
</div><br><br><br>
<!--              -------------------------------------------------------------      -->

<center>
<a href="addEventform.jsp">Add Event</a> <br><br> 
<a href="viewEvent.jsp">View Upcoming Events</a> 
</center>

<!--  footer -->


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
</body>
</html>

    