<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
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
    <title>YAMA Mall</title>
</head>
<style>
.parallax { 
    /* The image used */
    background-image: url("img/event.png");
    filter: brightness(45%);
    /* Set a specific height */
    height: 300px; 

    /* Create the parallax scrolling effect */
    background-attachment: fixed;
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
</style>
<body style="font-family: 'Quicksand',sans-serif;">
	<div>
	<div class="container-fluid">

  		<div class="row" id="header">
  			<div class="col-3 bg"></div>
  			<i class="fa fa-envelope" style="font-size: 1.3em;margin-top: 5px"></i>
    		<div class="col-3 bg" style="margin-top: 5px;">Call: 026-26249250,8108590333</div>
    		<i class="fa fa-phone" style="font-size: 1.3em;margin-top: 6px;"></i>
    		<div class="col-3 bg" style="margin-top: 5px">info@yama.com</div>
  		</div>

  		<div class="row" style="margin-top: 25px;">
  			<div class="col-4 bg">
  				<a href="index.html"><img src="img/logo.png" style="height: 80px;width: 270px; float: left;"></a>
  			</div>
  			
  <%
	String keyword = "";
	if(request.getParameter("txtKeyword") != null) {
		keyword = request.getParameter("txtKeyword");
	}
%>
  			
  			<div class="col-4 bg" style="margin-top: 22px; font-size: 25px;">
  			  	<nav class="navbar navbar-light bg-light">
  					<form class="form-inline" action="Displaystore.jsp" method="get">
    				<input class="form-control mr-sm-2" type="text" name="txtKeyword" placeholder="Search" required style="width: 300px;">
    				<button class="btn btn my-2 my-sm-0" type="submit" onclick="return loginfirst()">Search</button>
  					</form>
				</nav>
  			</div>
  			<div class="col-2 bg"></div>
  			<div class="col-2 bg" style="margin-top: 22px; font-size: 25px;">
  				<nav class="navbar navbar-light bg-light" id="login">
  					<form class="form-inline">
    					<button class="btn btn-outline" type="button" data-toggle="modal" data-target="#log" style="background-color:  #b40036;color: white">Log In</button>
   	 					<button class="btn btn-outline" type="button" data-toggle="modal" data-target="#sign" style=" margin-left: 2px; background-color:  #b40036; color: white">Sign Up</button>
  					</form>
				</nav>
  			</div>
  		</div>
	</div></div>

	<!-- Modal -->

	<!-- <div class="modal fade" id="log" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
    <div class="modal-header">
       <h5 class="modal-title" id="exampleModalCenterTitle">Log In</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    </div>
     <div class="modal-body">
     <form action="Login" method="get">
      <i class="fa fa-envelope" aria-hidden="true"></i>
      	Username :
        <input type="text" name="uname" required="true"><br><br>
		<i class="fa fa-key" aria-hidden="true"></i>
		Password:
		<input type="password" name="pass" required="true"><br><br>
		<input type="submit" class="btn btn-secondary" style="float:right">
  	</form>
     </div>
     <div class="modal-footer">
         button type="submit" class="btn btn-secondary" value="submit" data-dismiss = "modal" >Submit</button
     </div>
    </div>
  	</div>
	</div> -->


<div class="modal fade" id="log" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content">
    <div class="modal-header">
       <h5 class="modal-title" id="exampleModalCenterTitle">Log In</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
    </div>
     <div class="modal-body">
    		
     	<ul class="nav nav-tabs" id="myTab" role="tablist">
  			<li class="nav-item">
    		<a class="nav-link active" id="customer-tab" data-toggle="tab" href="#customer" role="tab" aria-controls="customer" aria-selected="true" style="padding-left: 10px;color: black">Customer</a>
  			</li>
  			<li class="nav-item">
    		<a class="nav-link" id="admin-tab" data-toggle="tab" href="#admin" role="tab" aria-controls="admin" aria-selected="false" style="color: black;padding-left: 20px;padding-right: 20px;">Admin</a>
  			</li>
		</ul><br><br>


<div class="tab-content" id="myTabContent">
  <div class="tab-pane fade show active" id="customer" role="tabpanel" aria-labelledby="customer">
 <form action="Login" method="get" name>
      <i class="fa fa-envelope" aria-hidden="true"></i>
      	Username :
        <input type="text" name="uname" required="true"><br><br>
		<i class="fa fa-key" aria-hidden="true"></i>
		Password:
		<input type="password" name="pass" required="true"><br><br>
		<input type="submit" class="btn btn-secondary" style="float:right">
  	</form>
</div>


  <div class="tab-pane fade" id="admin" role="tabpanel" aria-labelledby="admin">
  <form action="Admin" method="get">
      <i class="fa fa-envelope" aria-hidden="true"></i>
      	Username :
        <input type="text" name="uname" required="true"><br><br>
		<i class="fa fa-key" aria-hidden="true"></i>
		Password:
		<input type="password" name="pass" required="true"><br><br>
		<input type="submit" class="btn btn-secondary" style="float:right">
  	</form>
</div>

</div>

     </div>
    </div>
  	</div>
	</div>


	<div class="modal fade" id="sign" tabindex="-1" role="dialog" aria-labelledby="exampleModalCenterTitle" aria-hidden="true">
  	<div class="modal-dialog modal-dialog-centered modal-md" role="document">
    <div class="modal-content" >
     <div class="modal-header">
       <h5 class="modal-title" id="exampleModalCenterTitle">Sign Up</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
  
        <form name="signup" action="Signup" method="get" onsubmit="return validateForm(document.signup.fname,document.signup.lname,document.signup.pass)">

			<i class="fa fa-user-circle" aria-hidden="true"></i>			
			First Name :
        	<input type="text" name="fname" style="width: 10em" required ><br><br>
			<i class="fa fa-user-circle" aria-hidden="true"></i>        	
			Last Name :
        	<input type="text" name="lname" required="required" style="width: 10em;"><br><br>
          <i class="fa fa-envelope" aria-hidden="true"></i>
        Email-id :
        <input type="email" name="email_id" style="width: 11.5em" required="true"><br><br>
        <i class="fa fa-envelope" aria-hidden="true"></i>
      	Username :
        <input type="text" name="uname" required="true"><br><br>
		<i class="fa fa-key" aria-hidden="true"></i> 
        Password:
		<input type="password" name="pass" required="true"><br><br>
		<input type="submit" class="btn btn-secondary" style="float:right"> 
        </form>
      </div>
      <div class="modal-footer">
        <!--button type="button" class="btn btn-secondary" data-dismiss="modal">Submit</button-->
      </div>
    </div>
  </div>
</div><br><br>

  <div><center>${done}</center></div>
  <div><center>${notdone}</center></div>



  	 
		<div class="container-fluid" style="background-color: #19191a" >
  			<nav class="navbar navbar-expand md sticky-top -material" id="navbar" >
  				<ul class="nav navbar-nav">
      				<li class="nav-item" style="margin-left: 17em;height: 3.7em;padding-top: 0.4em"><a class="nav-link" href="index.jsp"><strong>Home</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="layout.jsp" onclick="return loginfirst()"><strong>Layout</strong></a></li>
      				<li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="Event_.jsp" onclick="return loginfirst()"><strong>Events</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em; height: 3.7em;padding-top: 0.3em;"><a class="nav-link" href="about.jsp" onclick="return loginfirst()"><strong>About Us</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="contact.jsp" onclick="return loginfirst()"><strong>Contact Us</strong></a></li>
              <li class="nav-item" style=" background-color:#f46105; margin-left:4.7em; height: 3.7em; padding-top: 0.3em;"><a style="color: black;" class="nav-link" href="newStore.jsp" onclick="return loginfirst()"><strong>New Store</strong>
              <i class="fa fa-newspaper-o fa-lg" aria-hidden="true"></i></a></li>

           		</ul>
           	</nav>
  		</div>



  		<div id="carouselIndicators" class="carousel slide" data-ride="carousel">
  		<ol class="carousel-indicators">
    		<li data-target="#carouselIndicators" data-slide-to="0" class="active"></li>
    		<li data-target="#carouselIndicators" data-slide-to="1"></li>
    		<li data-target="#carouselIndicators" data-slide-to="2"></li>
  		</ol>
  	<div class="carousel-inner" style="height: 33em;">
    	<div class="carousel-item active">
      	<img class="d-block w-100" src="img/1.jpg" alt="First slide">
    	</div>
    	<div class="carousel-item">
     	<img class="d-block w-100" src="img/2.jpg" alt="Second slide">
    	</div>
    	<div class="carousel-item">
      	<img class="d-block w-100" src="img/3.jpg" alt="Third slide">
    </div>
  </div>
  <a class="carousel-control-prev" href="#carouselIndicators" role="button" data-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="carousel-control-next" href="#carouselIndicators" role="button" data-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>

<div id="cssSelector">
  <div class="line">
    <div class="square el"></div>
  </div>
</div>


<div class="card" style="margin-top: 1em; background-color: white ; color: black;">
  <div class="card-body"><center>
    <h4 class="wow bounceIn"><b>Welcome to Mall YAMA</b></h4><br>
    <p align="justify" class="wow bounceInLeft" style="font-size: 1.1em;">It’s not just a PLACE, It’s a LIFESTYLE
    Mall YAMA is a remarkable and highly sought-after destination that speaks of the very best experiences in shopping, dining and entertainment. With it’s impressive ambience and a wide array of services, this Mall has emerged as a symbol of style, attitude and an appealing way of life.
<br><br><br></p></center>
  </div>
</div>

<div style="margin-top: 1em;">

<img  class="wow bounceInLeft" src="img/temp.jpg" style="width: 27em;height: 15em;margin-left: 15em;">
<img class="wow bounceInRight" src="img/pvr.jpg" style="width: 27em; height: 15em;margin-left:2em;">

</div><br>

<div style="margin-top: 1.1em; ">
  <center><h2 class="bounceIn"><strong>WHAT'S</strong> Trending </h2></center><br>
 
  <div class="container-fluid">
 	<div class="row">
 		<div class="col-md-5">
  			<img src="img/kids.jpg" class="wow bounceInLeft" style="width: 22em;height: 30em; margin-left: 220px;">
  		</div>
  		<div class="col-md-7">
   			<img src="img/women.jpg" class="wow bounceInRight" style="width: 33em;height: 14.5em; margin-left: 40px " >
   			<img src="img/men.jpg" class="wow bounceInRight" style="width: 33em;height: 14.5em;margin-top: 1em; margin-left:40px; ">
   		</div>
   	</div>
 </div>

<br>
<div style="margin-top: 1.1em; ">
  <center><h2 class="wow bounceIn"><strong>GAMING</strong> Zone </h2></center><br>
 
  <div class="container-fluid">
 	<div class="row">
 		<div class="col-md-6">
  			<img src="img/game1.jpg" style="width: 42em;height: 21em; ">
  		</div>
  		<div class="col-md-6">
   			<img src="img/game2.jpg" style="width: 40em;height: 21em;" >
   		</div>
   	</div>
 </div>

</div><br>

<center><h2 class="wow bounceIn"><b>Events</b> in YAMA Mall</h2><br>
		<a href="events.html"><button class="btn btn-outline-secondary" onclick="return loginfirst()">Participate</button></a>
</center>
<br>

<div class="parallax"></div><br><br>



<!--Footer-->

<div class="footer wow bounceInUp" data-wow-duration="3s">
<footer id="footer" style="background-color: #19191a; color: white;margin-top: 0em; font-size: 0.85em">
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