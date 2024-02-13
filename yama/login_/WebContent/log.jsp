
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
  				<img src="img/logo.png" style="height: 80px;width: 270px; float: left;">
  			</div>
  			<div class="col-4 bg" style="margin-top: 22px; font-size: 25px;">
  			  	<nav class="navbar navbar-light bg-light">
  					<form class="form-inline">
    				<input class="form-control mr-sm-2" type="search" placeholder="Search" required style="width: 300px;">
    				<button class="btn btn my-2 my-sm-0" type="submit">Search</button>
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
     <form action="Login">
      <i class="fa fa-envelope" aria-hidden="true"></i>
       Username:<input type="text" name="uname"><br/>
       Password:<input type="password" name="pass"><br/>
       <input type="submit">
  	</form>
     </div>
     <div class="modal-footer">
        <!--button type="submit" class="btn btn-secondary" value="submit" data-dismiss = "modal" >Submit</button-->
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
        <form action="Signup" method="get">
         <i class="fa fa-user-circle" aria-hidden="true"></i>			
			First Name :
        	<input type="text" name="fname" style="width: 10em" required ><br><br>
			<i class="fa fa-user-circle" aria-hidden="true"></i>        	
			Last Name :
        	<input type="text" name="lname" required="required" style="width: 10em;"><br><br>
        	<i class="fa fa-phone" ></i>
        <!--  	Phone Number:
        	<input type="number" name="Phn" style="width: 8.6em" required="required"><br><br>
       -->   <i class="fa fa-envelope" aria-hidden="true"></i>
        Email-id :
        <input type="email" name="email_id" style="width: 11.5em" required="true"><br><br>
       <!--  Gender :
        <label for="male">Male </label>
        <input id="male" type="radio" name="sex" required="required">
        <label for="female">Female </label>
        <input id="female" type="radio" name="sex">
        <label for="other">Other </label>
        <input id="other" type="radio" name="sex"><br><br>-->
	     Username:<input type="text" name="uname"><br><br>
         Password:<input type="password" name="pass"><br><br>
         <input type="submit"> 
         
         <div class="modal-footer">
        <!--  button type="button" class="btn btn-secondary" data-dismiss="modal">Submit</button-->
         </div>
        </form>
      </div>
    </div>
  </div>
</div>






  	  <br><br>
		<div class="container-fluid" style="background-color: #19191a" >
  			<nav class="navbar navbar-expand md sticky-top -material" id="navbar" >
  				<ul class="nav navbar-nav">
      				<li class="nav-item" style="margin-left: 17em;height: 3.7em;padding-top: 0.4em"><a class="nav-link" href="index.html"><strong>Home</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="#"><strong>Layout</strong></a></li>
      				<li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="event.jsp"><strong>Events</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em; height: 3.7em;padding-top: 0.3em;"><a class="nav-link" href="#"><strong>About Us</strong></a></li>
              <li class="nav-item" style="margin-left: 2.7em;height: 3.7em; padding-top: 0.3em;"><a class="nav-link" href="#"><strong>Contact Us</strong></a></li>
              <li class="nav-item" style=" background-color:#f46105; margin-left:4.7em; height: 3.7em; padding-top: 0.3em;"><a style="color: black;" class="nav-link" href="#"><strong>New Store</strong>
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
        <ul class="social-icons">
          <li><a href="" class="social-icon"> <i class="fa fa-facebook"></i></a></li>
          <li><a href="" class="social-icon"> <i class="fa fa-twitter"></i></a></li>
        <li><a href="" class="social-icon"> <i class="fa fa-google-plus"></i></a></li>
    </ul>
      </div>
    </div>    
      </div>

    </div>

    
</footer>



<!-- starts here****************************************************************************************
 -->	
  	
<!-- <div class="footer wow bounceInUp" data-wow-duration="3s">
  <div class="footer_agile_inner_info_w3l">
    <div class="col-md-3 footer-left">
      <h2><img src="img/logo.png" width="230" height="82" class="img-responsive"> </h2>
      <p>Mall YAMA is located in the heart of Pune on Shankar Sheth road and has a strong affluent and youth catchment surrounding the site.</p>
      
    </div>
    <div class="col-md-9 footer-right">
      <div class="sign-grds">
        <div class="col-md-4 sign-gd">
          <h4>MALL <span>TIMINGS</span> </h4>
          <ul>

            <b  style="color:#FFF;">All Stores</b>
            <li>Monday - Friday 11:00 - 21:30</li>
            <li>Saturday - Sunday 11:00 - 23:00</li><br>
                       <b style="color:#FFF;"> Food and Beverages</b>
            <li>Monday - Friday 11:00 - 23:00</li>
            <li>Saturday - Sunday 11:00 - 23:00</li>
            

          </ul>
        </div>
        
        <div class="col-md-5 sign-gd-two">
          <h4>Store <span>Information</span></h4>
          <div class="w3-address">
            <div class="w3-address-grid">
              <div class="w3-address-left">
                <i class="fa fa-phone" aria-hidden="true"></i>
              </div>
              <div class="w3-address-right">
                <h6>Phone Number</h6>
                <p>020-67256888</p>
              </div>
              <div class="clearfix"> </div>
            </div>
        
            <div class="w3-address-grid">
              <div class="w3-address-left">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
              </div>
              <div class="w3-address-right">
                <h6>Location</h6>
                <p>

Mall Kumar Pacific
Shankarshet Road
Near Swargate
Pune.  
                
                </p>
              </div>
              <div class="clearfix"> </div>
            </div>
          </div>
        </div>
        <div class="col-md-3 sign-gd flickr-post">
          <h4>Flickr <span>Posts</span></h4>
          <ul class="social-nav model-3d-0 footer-social w3_agile_social two">
                              <li><a href="https://www.facebook.com/KumarPacificMall/?ref=bookmarks" target="_blank" class="facebook">
                                  <div class="front"><i class="fa fa-facebook" aria-hidden="true"></i></div>
                                  <div class="back"><i class="fa fa-facebook" aria-hidden="true"></i></div></a></li>
                              <li><a href="https://twitter.com/"  target="_blank"class="twitter"> 
                                  <div class="front"><i class="fa fa-twitter" aria-hidden="true"></i></div>
                                  <div class="back"><i class="fa fa-twitter" aria-hidden="true"></i></div></a></li>
                             
                                  
                              <li><a href=" https://www.instagram.com/kumarpacificmallpune/"  target="_blank"class="pinterest">
                                  <div class="front"><i class="fa fa-instagram" aria-hidden="true"></i></div>
                                  <div class="back"><i class="fa fa-instagram" aria-hidden="true"></i></div></a></li>
                            </ul>
        </div>
        <div class="clearfix"></div>
      </div>
    </div>
    <div class="clearfix"></div>
  
  </div>
    <hr><p class="copy-right">&copy 2017 Mall Kumar Pacific. All rights reserved | Design by <a href="http://trimitiy.com/" target="_blank">Trimity Studio's Pvt,Ltd</a></p>
  </div> -->
<!-- //footer -->

<!-- //footer -->











<!-- stops here****************************************************************************************************************
 -->
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