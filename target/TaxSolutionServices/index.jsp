<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Home</title>

<!-- Bootstrap Core CSS -->
<link href="static/css/bootstrap.min.css" rel="stylesheet">

<!-- Custom CSS -->
<link href="static/css/modern-business.css" rel="stylesheet">
<link href="static/css/sb-admin-2.css" rel="stylesheet">
<!-- <link href="static/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.css" rel="stylesheet">
<link href="static/bower_components/datatables-responsive/css/dataTables.responsive.css" rel="stylesheet"> -->
<!-- Custom Fonts -->
<link href="static/font-awesome/css/font-awesome.min.css" rel="stylesheet"	type="text/css">

<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-route.js"></script>
	<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.8/angular-resource.js"></script>
	
<script src="static/bower_components/angular-http-auth/src/http-auth-interceptor.js"></script>	
<script src="static/bower_components/angular-swagger-ui/dist/scripts/swagger-ui.js"></script>	
<script src="static/bower_components/angular-spinkit/src/angular-spinkit.js"></script>	
<script src="static/bower_components/angular-animate/angular-animate.js"></script>	
<script src="static/bower_components/angular-animate/angular-animate.min.js"></script>	
<script src="static/bower_components/jquery/dist/jquery.min.js"></script>
<script src="static/bower_components/bootstrap-material-design/dist/js/ripples.js"></script>
<script src="static/appjs/app.js"></script>
<script src="static/appjs/controller/controllers.js"></script>
<script src="static/appjs/service/services.js"></script>
<script src="static/appjs/directive/directives.js"></script>

<!-- <script src="static/bower_components/datatables/media/js/jquery.dataTables.min.js"></script>
<script src="static/bower_components/datatables-plugins/integration/bootstrap/3/dataTables.bootstrap.min.js"></script> -->
<!-- <script type="text/javascript" src="static/js/jquery.sticky.js"></script>
<script>
	$(window).load(function() {
		$("#sticky").sticky({
			topSpacing : 150
		});
	});
</script>  -->
</head>

<body ng-app="myApp">

	<!-- Navigation -->
	<nav class="navbar navbar-inverse navbar-fixed-top"
		style="background-color: #0e3570;" role="navigation">
		<div class="container">
			<!-- Brand and toggle get grouped for better mobile display -->
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">
                    <img src="static/img/logo-new.jpg" alt="" height="50" width="50">
                </a>
				<a class="navbar-brand" href="#home" style="color: white; padding-left: 0px;">Tax Solution Services</a>
				
			</div>
			<div ng-show="authenticated" style="color: white; text-align: right;">Welcome Mr. {{ssoId}}</div>
			<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse"
				id="bs-example-navbar-collapse-1" style="padding-top: 0px;">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#home" style="color: white;">Home</a></li>
					<li><a href="#about" style="color: white;">About Us</a></li>
					<li><a href="#mission" style="color: white;">Our Mission & Vision</a></li>
					<li><a href="#services" style="color: white;">Services</a></li>
					<li><a href="#contact" style="color: white;">Contact</a></li>
					<li><a href="#admin" style="color: white;">Admin</a></li>
					<li ng-show="!authenticated"><a href="#loginpage" style="color: white;">Login</a></li>
					<li ng-show="authenticated"><a href="#logout" style="color: white;">logout</a></li>
					
					
				</ul>
			</div>
			<!-- /.navbar-collapse -->
		</div>
		<!-- /.container -->
	</nav>

	
	
	
	<!-- Header Carousel -->
	<!-- <header id="myCarousel" class="carousel slide">
		Indicators
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>

		Wrapper for slides
		<div class="carousel-inner">
			<div class="item active">
				<div class="fill"
					style="background-image: url(static/img/pic0.jpg);"></div>
				<div class="carousel-caption">
					<h2>Caption 1</h2>
				</div>
			</div>
			<div class="item">
				<div class="fill"
					style="background-image: url('http://placehold.it/1900x1080&amp;text=Slide Two');"></div>
				<div class="carousel-caption">
					<h2>Caption 2</h2>
				</div>
			</div>
			<div class="item">
				<div class="fill"
					style="background-image: url('http://placehold.it/1900x1080&amp;text=Slide Three');"></div>
				<div class="carousel-caption">
					<h2>Caption 3</h2>
				</div>
			</div>
		</div>

		Controls
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="icon-prev"></span>
		</a> <a class="right carousel-control" href="#myCarousel"
			data-slide="next"> <span class="icon-next"></span>
		</a>
	</header> -->
	<div ng-view></div>
	<hr>
	<!-- Footer -->
		<div class="row">
			<div class="col-lg-12 login-footer-middle footer" style="background-color: #0e3570;">
				<p align="center" style="color: white;">Copyright &copy; 2018 Tax Solution Services
					Pvt Ltd Terms &amp; Conditions</p>
			</div>
		</div>
	<!-- /.container -->

	<!-- jQuery -->
	

	<!-- Bootstrap Core JavaScript -->
	<script src="static/js/bootstrap.min.js"></script>

	<!-- Script to Activate the Carousel -->
	<script>
		$('.carousel').carousel({
			interval : 5000
		//changes the speed
		});
		
		$(document).ready(function() {
	        $('#dataTables-example').DataTable({
	                responsive: true
	        });
	    });
	</script>

</body>

</html>
