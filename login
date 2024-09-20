<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

   <title>road accident </title>
<!--

TemplateMo 548 Training Studio

https://templatemo.com/tm-548-training-studio

-->
    <!-- Additional CSS Files -->
    <link rel="stylesheet" type="text/css" href="../static/css/bootstrap.min.css">

    <link rel="stylesheet" type="text/css" href="../static/css/font-awesome.css">

    <link rel="stylesheet" href="../static/css/templatemo-training-studioss.css">

    </head>
    
    <body>
    
    <!-- ***** Preloader Start ***** -->
    <div id="js-preloader" class="js-preloader">
      <div class="preloader-inner">
        <span class="dot"></span>
        <div class="dots">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
    </div>
    <!-- ***** Preloader End ***** -->
    
    
    <!-- ***** Header Area Start ***** -->
    <header class="header-area header-sticky">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <nav class="main-nav">
                        <!-- ***** Logo Start ***** -->
                          <a href="index.html" class="logo">Road   <em> Accident</em></a>
                        <!-- ***** Logo End ***** -->
                        <!-- ***** Menu Start ***** -->
                        <ul class="nav">
                                   <li class="scroll-to-section"><a href="{{url_for('first')}}" class="active">Home</a></li>
                            <li class="scroll-to-section"><a href="{{url_for('login')}}">Login</a></li>
							  <li class="scroll-to-section"><a href="{{url_for('upload')}}">Upload</a></li>
							 
                        </ul>        
                        <a class='menu-trigger'>
                            <span>Menu</span>
                        </a>
                        <!-- ***** Menu End ***** -->
                    </nav>
                </div>
            </div>
        </div>
    </header>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Main Banner Area Start ***** -->
    <div class="main-banner" id="top">
        <video autoplay muted loop id="bg-video">
            <source src="../static/images/gym-video.mp4" type="video/mp4" />
        </video>

        <div class="video-overlay header-text">
            <div class="caption">
                
             <h2>A Road Accident Prediction  </h2>
            </div>
        </div>
    </div>
    <!-- ***** Main Banner Area End ***** -->

    <!-- ***** Features Item Start ***** -->
    
    <!-- ***** Features Item End ***** -->

    <!-- ***** Call to Action Start ***** -->
    
    <!-- ***** Call to Action End ***** -->

    <!-- ***** Our Classes Start ***** -->
    
    <!-- ***** Our Classes End ***** -->
    
    <section class="section" id="schedule">
        <div class="container">
          
            <div class="row">
                
                <div class="col-lg-10 offset-lg-1">
                    <div class="schedule-table filtering">
                          </br>
						  </br>
						 <center><h1>Login</h1></center>
            </div>
			<head>

        
         
	 <style>


 
 
    </style>
		 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }

        function login(){
        var uname = document.getElementById("uname").value;
        var pwd = document.getElementById("pwd").value;

	if(uname == "admin" && pwd == "admin")
	{
	  alert("Login Success!");
	  
	  window.location = "{{url_for('upload')}}";
	  return false;
	}
	else
	{
	alert("Invalid Credentials!")
	}
        }
		
		  


 
    </script>
	
</head>

 <body id="page-top">

   
 

  <!-- Portfolio Section -->
  <section class="page-section portfolio" id="portfolio">
 
      <br>
	  <br>
      <!-- Portfolio Section Heading -->
       
      <!-- Icon Divider -->
    

      <!-- Portfolio Grid Items -->
      <div class="row">

        <!-- Portfolio Item 1 -->
        <div class="col-md-6 col-lg-4" style="margin-left:300px">
		 <div class="control-group">
			      <!-- Username -->
				 
			      <label class="control-label"   for="username"><b>Username</b></label>
			      <div class="controls">
			        <input type="text" id="uname" name="uname" placeholder="" class="form-control">
			       
				  </div>
			    </div>
			    <div class="control-group">
			      <!-- Password-->
				  
			      <label class="control-label"  for="password"><b>Password</b></label>
			      <div class="controls">
			        <input type="password" id="pwd" name="pwd" placeholder="" class="form-control">
			      
				  </div>
			    </div>
				 <div class="col-md-6 col-lg-4" style="margin-left:-150px">
			    <div class="control-group">
			      <!-- Button -->
				  <br>
			      <div class="controls">
				   
			        <input type="button" class="btn btn-success" value="Login" style="margin-left: 230px" onclick="login()">
			      
				  </div>
			    </div>
				 </div>
  </div>
  </div>
 
 
  </section>


  

    </body>
 
						 
						 
						 
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ***** Testimonials Starts ***** -->
     >
    
    <!-- ***** Footer Start ***** -->
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                
                    
                    <!-- You shall support us a little via PayPal to info@templatemo.com -->
                    
                </div>
            </div>
        </div>
    </footer>

    <!-- jQuery -->
    <script src="../static/js/jquery-2.1.0.min.js"></script>

    <!-- Bootstrap -->
    <script src="../static/js/popper.js"></script>
    <script src="../static/js/bootstrap.min.js"></script>

    <!-- Plugins -->
    <script src="../static/js/scrollreveal.min.js"></script>
    <script src="../static/js/waypoints.min.js"></script>
    <script src="../static/js/jquery.counterup.min.js"></script>
    <script src="../static/js/imgfix.min.js"></script> 
    <script src="../static/js/mixitup.js"></script> 
    <script src="../static/js/accordions.js"></script>
    
    <!-- Global Init -->
    <script src="../static/js/custom.js"></script>

  </body>
</html>