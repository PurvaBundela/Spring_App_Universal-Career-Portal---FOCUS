<!DOCTYPE html>

	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>FOCUS &mdash; A universal carrer website</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="Free HTML5 Template by FREEHTML5.CO" />
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />
	<meta name="author" content="FREEHTML5.CO" />

  	<!-- 
	//////////////////////////////////////////////////////

	FREE HTML5 TEMPLATE 
	DESIGNED & DEVELOPED by FREEHTML5.CO
	
	Website: 		http://freehtml5.co/
	Email: 			info@freehtml5.co
	Twitter: 		http://twitter.com/fh5co
	Facebook: 	https://www.facebook.com/fh5co

	//////////////////////////////////////////////////////
	 -->

  	<!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />

  	<!-- Place favicon.ico and apple-touch-icon.png in the root directory -->
  	<link rel="shortcut icon" href="favicon.ico">

  	<!-- Google Webfont -->
	<link href='http://fonts.googleapis.com/css?family=Lato:300,400,700' rel='stylesheet' type='text/css'>
	<!-- Themify Icons -->
	<link rel="stylesheet" href="resources/assets/css/themify-icons.css">
	<!-- Bootstrap -->
	<link rel="stylesheet" href="resources/assets/css/bootstrap.css">
	<!-- Owl Carousel -->
	<link rel="stylesheet" href="resources/assets/css/owl.carousel.min.css">
	<link rel="stylesheet" href="resources/assets/css/owl.theme.default.min.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="resources/assets/css/magnific-popup.css">
	<!-- Superfish -->
	<link rel="stylesheet" href="resources/assets/css/superfish.css">
	<!-- Easy Responsive Tabs -->
	<link rel="stylesheet" href="resources/assets/css/easy-responsive-tabs.css">
	<!-- Animate.css -->
	<link rel="stylesheet" href="resources/assets/css/animate.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="resources/assets/css/style.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr-2.6.2.min.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->
   <style>
   .modal-backdrop {
  z-index: -1;
}
modal-header, h4, .close {
      background-color: #57d2e0;
      color:white !important;
      text-align: center;
      font-size: 30px;
  }
  .modal-footer {
      background-color: #f9f9f9;
  }
  .btn 
  {
  background-color: #57d2e0;
  }
 #cancel
  {
  background-color: #FE2E2E;
  }
   </style>
     
	</head>
	 
	<body>
   
		<!-- START #fh5co-header -->
		<header id="fh5co-header-section" role="header" class="" >
			<div class="container">

				

				<!-- <div id="fh5co-menu-logo"> -->
					<!-- START #fh5co-logo -->
					<h1 id="fh5co-logo" class="pull-left"><a href="/focus/"><img src="resources/assets/images/logo1.png" alt="Slant Free HTML5 Template"></a></h1>
					
					<!-- START #fh5co-menu-wrap -->
					<nav id="fh5co-menu-wrap" role="navigation">
						
						
						<ul class="sf-menu" id="fh5co-primary-menu">
							
							<li class="fh5co-special"><a  href="#myModal" id="myBtn">Login</a></li>

						</ul>
					</nav>
				<!-- </div> -->
   
			</div>
	
		</header>
	          
		<div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header" style="padding:35px 50px;">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4><span class="glyphicon glyphicon-lock"></span> Login</h4>
        </div>
        <div class="modal-body" style="padding:40px 50px;">
          <form  action="submitlogin" method="POST">
            <div class="form-group">
              <label for="usrname"><span class="glyphicon glyphicon-user"></span> Username</label>
              <input type="text"  class="form-control" id="usrname"   name="emailid" placeholder="Enter email">
            </div>
            <div class="form-group">
              <label for="psw"><span class="glyphicon glyphicon-eye-open"></span> Password</label>
              <input type="password" class="form-control" name="password" id="psw" placeholder="Enter password">
            </div>
            <div class="form-group">
				  <label class="label" for="sel1">Your role?</label>
				  <select class="form-control" id="sel1" name="userType">
					<option value="candidate">Candidate</option>
					<option value="employee">Worker</option>
					<option value="employer">Employer</option>
				  </select>
				</div>
            <div class="checkbox">
              <label><input type="checkbox" value="" checked>Remember me</label>
            </div>
              <button type="submit" class="btn  btn-block"><span class="glyphicon glyphicon-off"></span> Login</button>
          </form>
        </div>
        <div class="modal-footer">
          <button type="submit" class="btn  btn-default pull-left" id="cancel" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> Cancel</button>
          
        </div>
      </div>
      
    </div>
  </div> 
		<div id="fh5co-hero">
			<a href="#fh5co-main" class="smoothscroll fh5co-arrow to-animate hero-animate-4"><i class="ti-angle-down"></i></a>
			<!-- End fh5co-arrow -->
			<div class="container">
				<div class="col-md-8 col-md-offset-2">
					<div class="fh5co-hero-wrap">
						<div class="fh5co-hero-intro">
							<h1 class="to-animate hero-animate-1">FOCUS</h1>
							<h2 class="to-animate hero-animate-2">Achieve your DREAMS</h2>
							<p class="to-animate hero-animate-3"><a href="candidatesignup" class="btn btn-outline btn-lg">JOIN US</a></p>
						</div>
					</div>
				</div>
			</div>		
		</div>

		<div id="fh5co-main">
	   
			<div class="container">
				<div class="row" id="fh5co-features">
					
					<div class="col-md-6 col-sm-6 text-center fh5co-feature feature-box">
						<img src="resources/assets/images/4.png" alt="Slant Free HTML5 Template">
						<h3 class="heading">Candidates</h3>
						<p>Focus helps you to achieve you desire goal and features thousand od trusted thousands of job opportunities posted by our highly trusted employers.Please join us and achieve your dreams!!</p>
					<p class="to-animate hero-animate-3"><a href="candidatesignup" class="btn btn-outline btn-lg">Sign Up! </a></p>
					</div>
					<div class="col-md-6 col-sm-6 text-center fh5co-feature feature-box"> 
						<img src="resources/assets/images/5.png" alt="Slant Free HTML5 Template">
						<h3 class="heading">Employer</h3>
						<p>Looking for qualified candidate?? Psoting a Job?? Focus can help you to get best candidates which can lead your organization to the path of success and growth!!.Please join and let us help you to achieve your dream candidate!! </p>
					<p class="to-animate hero-animate-3"><a href="signupEmployer" class="btn btn-outline btn-lg">Sign Up! </a></p>
					</div>

					<div class="clearfix visible-sm-block"></div>

					

					<div class="clearfix visible-md-block visible-lg-block"></div>

					
				</div>
				<!-- END row -->

				<div class="fh5co-spacer fh5co-spacer-md"></div>
				<!-- End Spacer -->

				<div class="row" id="fh5co-works">
					<div class="col-md-8 col-md-offset-2 text-center fh5co-section-heading work-box">
						<h2 class="fh5co-lead">Awesome Projects</h2>
						<p class="fh5co-sub">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Velit est facilis maiores, perspiciatis accusamus asperiores sint consequuntur debitis. Ut, dolores sit amet consectetur adipisicing elit.</p>
						<div class="fh5co-spacer fh5co-spacer-sm"></div>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 text-center fh5co-work-item work-box">
						<figure><a href="#"><img class="img-responsive" src="resources/assets/images/work_1.jpg" alt="Free HTML5 Template"></a></figure>
						<p class="fh5co-category">Web Design, Identity, Packaging </p>
						<h3 class="heading">Work no. 1</h3>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 text-center fh5co-work-item work-box"> 
						<figure><a href="#"><img class="img-responsive" src="resources/assets/images/work_2.jpg" alt="Free HTML5 Template"></a></figure>
						<p class="fh5co-category">Web Design, Identity, Packaging </p>
						<h3 class="heading">Work no. 2</h3>
					</div>

					<div class="clearfix visible-sm-block visible-xs-block"></div>

					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 text-center fh5co-work-item work-box"> 
						<figure><a href="#"><img class="img-responsive" src="resources/assets/images/work_3.jpg" alt="Free HTML5 Template"></a></figure>
						<p class="fh5co-category">Web Design, Identity, Packaging </p>
						<h3 class="heading">Work no. 3</h3>
					</div>

					<div class="clearfix visible-md-block visible-lg-block"></div>

					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 text-center fh5co-work-item work-box">
						<figure><a href="#"><img class="img-responsive" src="resources/assets/images/work_4.jpg" alt="Free HTML5 Template"></a></figure>
						<p class="fh5co-category">Web Design, Identity, Packaging </p>
						<h3 class="heading">Work no. 4</h3>
					</div>

					<div class="clearfix visible-sm-block visible-xs-block"></div>

					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 text-center fh5co-work-item work-box"> 
						<figure><a href="#"><img class="img-responsive" src="resources/assets/images/work_5.jpg" alt="Free HTML5 Template"></a></figure>
						<p class="fh5co-category">Web Design, Identity, Packaging </p>
						<h3 class="heading">Work no. 5</h3>
					</div>
					<div class="col-md-4 col-sm-6 col-xs-6 col-xxs-12 text-center fh5co-work-item work-box"> 
						<figure><a href="#"><img class="img-responsive" src="resources/assets/images/work_6.jpg" alt="Free HTML5 Template"></a></figure>
						<p class="fh5co-category">Web Design, Identity, Packaging </p>
						<h3 class="heading">Work no. 6</h3>
					</div>

					<div class="col-md-4 col-md-offset-4 text-center work-box">
						<p><a href="#" class="btn btn-outline btn-md">View Portfolio</a></p>
					</div>
				</div>
				<!-- END row -->
				
				<div class="fh5co-spacer fh5co-spacer-md"></div>
				<div class="row">
					<!-- Start Slider Testimonial -->
	            <h2 class="fh5co-uppercase-heading-sm text-center animate-box">Customer Says...</h2>
	            <div class="fh5co-spacer fh5co-spacer-xs"></div>
	            <div class="owl-carousel-fullwidth animate-box">
	            <div class="item">
	              <p class="text-center quote">&ldquo;Design must be functional and functionality must be translated into visual aesthetics, without any reliance on gimmicks that have to be explained. &rdquo; <cite class="author">&mdash; Ferdinand A. Porsche</cite></p>
	            </div>
	            <div class="item">
	              <p class="text-center quote">&ldquo;Creativity is just connecting things. When you ask creative people how they did something, they feel a little guilty because they didn’t really do it, they just saw something. It seemed obvious to them after a while. &rdquo;<cite class="author">&mdash; Steve Jobs</cite></p>
	            </div>
	            <div class="item">
	              <p class="text-center quote">&ldquo;I think design would be better if designers were much more skeptical about its applications. If you believe in the potency of your craft, where you choose to dole it out is not something to take lightly. &rdquo;<cite class="author">&mdash; Frank Chimero</cite></p>
	            </div>
	          </div>
	           <!-- End Slider Testimonial -->
				</div>
				<!-- END row -->
				<div class="fh5co-spacer fh5co-spacer-md"></div>

			</div>
			<!-- END container -->

		
		</div>
		<!-- END fhtco-main -->


		<footer role="contentinfo" id="fh5co-footer">
			<a href="#" class="fh5co-arrow fh5co-gotop footer-box"><i class="ti-angle-up"></i></a>
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-6 footer-box">
						<h3 class="fh5co-footer-heading">About us</h3>
						<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima delectus dolorem fugit totam, commodi ad.</p>
						<p><a href="#" class="btn btn-outline btn-sm">I'm a button</a></p>

					</div>
					<div class="col-md-4 col-sm-6 footer-box">
						<h3 class="fh5co-footer-heading">Links</h3>
						<ul class="fh5co-footer-links">
							<li><a href="#">Terms &amp; Conditions</a></li>
							<li><a href="#">Our Careers</a></li>
							<li><a href="#">Support &amp; FAQ's</a></li>
							<li><a href="#">Sign up</a></li>
							<li><a href="#">Log in</a></li>
						</ul>
					</div>
					<div class="col-md-4 col-sm-12 footer-box">
						<h3 class="fh5co-footer-heading">Get in touch</h3>
						<ul class="fh5co-social-icons">
							
							<li><a href="#"><i class="ti-google"></i></a></li>
							<li><a href="#"><i class="ti-twitter-alt"></i></a></li>
							<li><a href="#"><i class="ti-facebook"></i></a></li>	
							<li><a href="#"><i class="ti-instagram"></i></a></li>
							<li><a href="#"><i class="ti-dribbble"></i></a></li>
						</ul>
					</div>
					<div class="col-md-12 footer-box">
						<div class="fh5co-copyright">
						<p>&copy; 2015 Free Slant. All Rights Reserved. <br>Designed by <a href="http://freehtml5.co" target="_blank">FREEHTML5.co</a> Images by: <a href="http://unsplash.com">Unsplash</a> and <a href="http://plmd.me" target="_blank">plmd.me</a></p>
						</div>
					</div>
					
				</div>
				<!-- END row -->
				<div class="fh5co-spacer fh5co-spacer-md"></div>
			</div>
		</footer>
			

		<!-- jQuery -->


		<script src="resources/assets/js/jquery-1.10.2.min.js"></script>
		<!-- jQuery Easing -->
		<script src="resources/assets/js/jquery.easing.1.3.js"></script>
		<!-- Bootstrap -->
		<script src="resources/assets/js/bootstrap.js"></script>
		<!-- Owl carousel -->
		<script src="resources/assets/js/owl.carousel.min.js"></script>
		<!-- Magnific Popup -->
		<script src="resources/assets/js/jquery.magnific-popup.min.js"></script>
		<!-- Superfish -->
		<script src="resources/assets/js/hoverIntent.js"></script>
		<script src="resources/assets/js/superfish.js"></script>
		<!-- Easy Responsive Tabs -->
		<script src="resources/assets/js/easyResponsiveTabs.js"></script>
		<!-- FastClick for Mobile/Tablets -->
		<script src="resources/assets/js/fastclick.js"></script>
		<!-- Parallax -->
		<script src="resources/assets/js/jquery.parallax-scroll.min.js"></script>
		<!-- Waypoints -->
		<script src="resources/assets/js/jquery.waypoints.min.js"></script>
		<!-- Main JS -->
		<script src="resources/assets/js/main.js"></script>
        		<script>
$(document).ready(function(){
    $("#myBtn").click(function(){
        $("#myModal").modal();
    });
});
</script>
	</body>
</html>
