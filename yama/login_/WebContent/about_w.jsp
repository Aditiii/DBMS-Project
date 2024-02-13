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
    <title>About Us</title>
</head>
<style>
.parallax { 
    /* The image used */
    background-image: url("img/parallax_about.jpg");
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
	
	<%
     if(session.getAttribute("username")==null)
     {
    	 response.sendRedirect("login.jsp");
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
            <form class="form-inline"action="Displaystore.jsp">
            <input class="form-control mr-sm-2"  type="search"  name="txtKeyword" placeholder="Search" required style="width: 300px;">
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
  
      </div>
  </div></div>

  <!-- Modal -->




      <br><br>
    <div class="container-fluid" style="background-color: #19191a" >
        <nav class="navbar navbar-expand md sticky-top -material" id="navbar" >
          <ul class="nav navbar-nav">
              <li class="nav-item" style="margin-left: 17em;height: 3.7em;padding-top: 0.4em"><a class="nav-link" href="welcome.jsp"><strong>Home</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="layout_w.jsp"><strong>Layout</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="Event_.jsp"><strong>Events</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em; height: 3.7em;padding-top: 0.3em;"><a class="nav-link" href="about_w.jsp"><strong>About Us</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="contact_w.jsp"><strong>Contact Us</strong></a></li>
              <li class="nav-item" style=" background-color:#f46105; margin-left:4.7em; height: 3.7em; padding-top: 0.3em;"><a style="color: black;" class="nav-link" href="newStore_w.jsp.html"><strong>New Store</strong>
              <i class="fa fa-newspaper-o fa-lg" aria-hidden="true"></i></a></li>

              </ul>
            </nav>
      </div>


      <div class="container-fluid" style="background-image: url('img/final.jpg');width: 100%;height: 13em; filter: brightness(55%);">
        
      </div><br>


    <center>
      <img src="img/logo.png" style="height: 80px;width: 270px;"><br><br><br>
    </center>
    <div class="container-fluid">
      <div class="row">
        <div class="col-md-3" style="padding-left: 8em;padding-top: 0.4em;">
    <img src="img/aboutimg.jpg" style="height: 16em;width: 19em; float: left">
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-7">
    <p align="justify">Mall YAMA is a remarkable and highly sought-after destination that speaks of the very best experiences in shopping, dining and entertainment. With it’s impressive ambience and a wide array of services, the Mall has emerged as a symbol of style, attitude and an appealing way of life.
Considered as the leading shopping mall in Pune, the Mall YAMA offers its’ customers the finest mix of well-renowned Indian and International brands under one roof, with world-class products that are in-sync with latest global trends.
The Mall YAMA also boasts of a collection of popular food outlets that are sure to satisfy all your food cravings. This is the perfect place to enjoy a flavorsome treat with your family, or to share a comforting coffee with your loved one.
 Entertainment is a huge point that the Mall is fast gaining popularity for. With a dazzling 4 screen Multiplex and a fantastic Game Zone, customers have access to some of the best entertainment in town. With World class sports facilities and infrastructure for the grassroots level public. Hotfut sports combines state of the art , fine-tuned technical & management systems and talented people in an economically viable business model. 
</p>  </div>
      
        
        </div>
             <div class="row">   
               <div class="col-md-1"></div>
               <div class="col-md-10">
                 <b>Movie Hall</b><br>
               <p align="justify">
The Mall YAMA is equipped with a grand 4 screen Movie Theatre by PVR Cinemas that spells pure bliss for its audiences. Plush interiors, state-of-the-art audio and visual systems, food outlets serving wholesome treats, all of these come together to offer the entire gamut of top-notch entertainment and relaxation. 
The focus here, is to ensure that everyone can enjoy latest movies surrounded by luxurious comfort. It is this joyful experience of our customers that we take as our inspiration.</p>
              </div>
              <div class="col-md-1"></div>
</div>
</div>


<div class="parallax"> </div><br><br>
<center>
<div class="card">
  <div class="card-header" style="font-size: 1.2em;"><strong>
    Testimonial</strong>
  </div>
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p style="font-size: 0.9em;">Spent very good and memorable time playing games and shopping around with my friends.</p>
      <footer class="blockquote-footer">Safdar Mujawar</footer>
    </blockquote>
  </div>
</div>
<!-- <div class="card">
  <div class="card-body">
    <blockquote class="blockquote mb-0">
      <p style="font-size: 0.9em;">It is great place to hangout.The PVR cinemas is amazing.</p>
      <footer class="blockquote-footer">Ahil John</footer>
    </blockquote>
  </div>
</div> -->
</center>








<!--Footer-->

<div class="footer wow bounceInUp" data-wow-duration="3s">
<footer id="footer" style="background-color: #19191a; color: white;margin-top: 7em; font-size: 0.85em">
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
