<!DOCTYPE html>
<html lang="en">

  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i&display=swap" rel="stylesheet">

    <title>Road Accident</title>
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
              <a href="index.html" class="logo">Road <em>Accident</em></a>
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
          <h2>A Road Accident Prediction</h2>
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
              </br></br>
              <center><h2>Download</h2></center>
            </div>
            <body id="page-top">
              <section class="col-md-12 col-sm-12 col-xs-12" id="about">
                <div class="col-md-12 col-sm-12 col-xs-12" style="margin-left:350px;">
                  <form name="fs" id="fs" method="get">
                    <br/>
                    <a href="upload.csv download" id="download-link">
                      <button type="button" style="margin-right:250px" class="btn btn-success btn-large" onclick="handleDownload()">Download</button>
                    </a>
                    <br/><br/><br/>
                  </form>
                </div>
              </section>
            </body>
          </div>
        </div>
      </div>
    </section>

    <!-- ***** Upload Section Start ***** -->
    <section class="section" id="upload-section" style="display: none;">
      <div class="container">
        <div class="row">
          <div class="col-lg-10 offset-lg-1">
            <div class="schedule-table filtering">
              </br></br>
              <center><h2>Upload</h2></center>
            </div>
            <body id="page-top">
              <section class="col-md-12 col-sm-12 col-xs-12" id="about">
                <div class="col-md-12 col-sm-12 col-xs-12" style="margin-left:350px;">
                  <form action="http://localhost:5000/preview" name="fs" id="fs" method="post" enctype="multipart/form-data">
                    <br/>
                    <input type="file" name="datasetfile" id="file1" required /> 
                    <br/><br/><br/>
                    <input type="submit" style="margin-right:250px" class="btn btn-success btn-large" value="Upload"> 
                  </form>
                </div>
              </section>
            </body>
          </div>
        </div>
      </div>
    </section>
    <!-- ***** Upload Section End ***** -->

    <!-- ***** Footer Start ***** -->
    <footer class="footer">
      <div class="container">
        <div class="row">
          <div class="col-lg-12">
            &copy; 2024 RoadSence | Designed by Rohit.jsx
          </div>
        </div>
      </div>
    </footer>
    <!-- ***** Footer End ***** -->

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
    
    <script>
      function handleDownload() {
        // Trigger file download
        const link = document.getElementById('download-link');
        link.click();

        // Redirect to the upload section
        setTimeout(() => {
          document.getElementById('upload-section').style.display = 'block';
          document.getElementById('schedule').style.display = 'none';
        }, 1000); // Adjust the timeout as necessary
      }
    </script>

  </body>
</html>
