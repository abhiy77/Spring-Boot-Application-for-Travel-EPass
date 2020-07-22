<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
<!-- Required meta tags always come first -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<!-- Bootstrap CSS -->
<!-- build:css css/styles.css -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" href="/css/bootstrap-social.css">
<link rel="stylesheet" href="/css/styles.css">
<!-- endbuild  -->
<title>E Seva Government Portal</title>
</head>

<body>

   <% 
			response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
			response.setHeader("Pragma","no-cache");
			response.setHeader("Expires","0");
	
	%>


	<div class="container-fluid">
		<div class="row alert-warning">
			<div class="col-sm-1">
				<a class="navbar-brand mr-auto" href="/index.jsp"><img
					src="/images/logosmall.jpg" height="30" width="41"></a>
			</div>
			<div class="col-sm-8">
				<nav class="nav nav-pills nav-fill">
					<a class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/index.jsp">Home</a> <a
						class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/forms.jsp">Application Forms</a> <a
						class="flex-sm-fill text-sm-center nav-link active"
						href="/centres.jsp">Mee Seva Centres</a> <a
						class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/aboutus.jsp">About Us</a> <a
						class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/contactus.jsp">Contact Us</a>
				</nav>
			</div>
			<div class="col-sm-1">
				<nav class="nav nav-pills nav-fill">
					<a class="flex-sm-fill text-sm-center nav-link active btn-success"
						href="/login.jsp" >Login</a>
				</nav>
			</div>
			
			<% if(session.getAttribute("user") == null && session.getAttribute("admin") == null){
				
			%>

			<div class="col-sm-1">
				<nav class="nav nav-pills nav-fill">
					<a class="flex-sm-fill text-sm-center nav-link active btn-danger"
						href="/signup.jsp">SignUp</a>
				</nav>
			</div>
			<%  }  
			   
			else if(session.getAttribute("user") != null || session.getAttribute("admin") != null){
			
			%>
			<div class="col-sm-1">
				<nav class="nav nav-pills nav-fill">
					<a class="flex-sm-fill text-sm-center nav-link active btn-danger"
						href="/logout">Logout</a>
				</nav>
			</div>
			<% } %>
		</div>
	</div>

	<header class="jumbotron">
		<div class="container">
			<div class="row row-header">
				<div class="col-12 col-sm-2">
					<img src="/images/logo.png" class="img-fluid">
				</div>
				<div class="col-12 col-sm-4">
					<h1>eSEVA TRAVEL</h1>

				</div>
				<div class="col-12 col-sm-6 align-self-center">

					<p>eSeva is an online service that fulfills the demands of
						citizens redefining the way services were provided earlier. Its
						vision includes - Providing quick governance and services on
						demand and Digitally empowering its citizens using technological
						advancements</p>
				</div>

				<div class="col-12 col-sm align-self-center"></div>
			</div>
		</div>
	</header>
	<br>

	<div class="container">

		<div class="row">
			<ol class="col-12 breadcrumb">
				<li class="breadcrumb-item"><a href="/index.jsp">Home</a></li>
				<li class="breadcrumb-item active">Mee Seva Centres</li>
			</ol>
		</div>


		<div class="row row-header">
			<div class="col-12">
				<h3>Other centres :</h3>
				<hr>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-sm-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="/images/meeseva1.jpg"
						alt="Mee Seva - Adikmet" height="200px" width="250px">
					<div class="card-body">
						<h5 class="card-title">Mee Seva - Adikmet</h5>
						<p class="card-text">Adikmet Flyover, Vidya Nagar, Adikmet,
							Hyderabad, Telangana 500044</p>
						<a
							href="https://www.google.com/maps/place/Mee+Seva+Centre/@17.4015163,78.5116511,13z/data=!4m8!1m2!2m1!1smee+seva+centres!3m4!1s0x3bcb999f3286516f:0xd9cb96723a4783e1!8m2!3d17.4084662!4d78.5151161"
							class="btn btn-primary">Get directions</a>
					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="/images/meeseva2.jpg"
						alt="Mee Seva - Gandhi Nagar" height="200px" width="250px">
					<div class="card-body">
						<h5 class="card-title">Mee Seva - Gandhi Nagar</h5>
						<p class="card-text">New Bakaram, Gandhi Nagar, Kavadiguda,
							Hyderabad, Telangana 500080</p>
						<a
							href="https://www.google.com/maps/place/Mee+Seva+Centre/@17.4015163,78.5116511,13z/data=!4m8!1m2!2m1!1smee+seva+centres!3m4!1s0x3bcb99eea9c13d05:0xd1f43508416aaaa0!8m2!3d17.411389!4d78.4921716"
							class="btn btn-primary">Get directions</a>
					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="/images/meeseva3.jpg"
						alt="Mee Seva - Amberpet" height="200px" width="250px">
					<div class="card-body">
						<h5 class="card-title">Mee Seva - Amberpet</h5>
						<p class="card-text">2-3-776/6/A/A1, Sri Lakshmi
							Communications, Amberpet, Hyderabad, Telangana 500013</p>
						<a
							href="google.com/maps/place/MeeSeva+Center/@17.4018918,78.5132947,12.82z/data=!4m8!1m2!2m1!1smee+seva+centres!3m4!1s0x3bcb99b10ad43a05:0x1ad7c16b7fb6424f!8m2!3d17.3898102!4d78.5063251"
							class="btn btn-primary">Get directions</a>
					</div>
				</div>
			</div>
		</div>

		<br> <br>

		<div class="row">
			<div class="col-sm-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="/images/meeseva4.jpg"
						alt="Mee Seva - New Nallakunta" height="200px" width="250px">
					<div class="card-body">
						<h5 class="card-title">Mee Seva - New Nallakunta</h5>
						<p class="card-text">1-8747/3, Brindavan Colony, Bagh
							Lingampally, New Nallakunta, Hyderabad, Telangana 500044</p>
						<a
							href="https://www.google.com/maps/place/Meeseva+And+Pan+Centre/@17.4018918,78.5132947,12.82z/data=!4m8!1m2!2m1!1smee+seva+centres!3m4!1s0x3bcb99b8d64c415d:0xd0e8575a62637fa7!8m2!3d17.3989887!4d78.5006484"
							class="btn btn-primary">Get directions</a>
					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="/images/meeseva5.jpg"
						alt="Mee Seva - Kachiguda" height="200px" width="250px">
					<div class="card-body">
						<h5 class="card-title">Mee Seva - Kachiguda</h5>
						<p class="card-text">3-4, 64, opp. Raghavendra Swamy Temple,
							Bagh Lingampalli, Kachiguda, Hyderabad, Telangana 500027</p>
						<a
							href="https://www.google.com/maps/place/MeeSeva+Center/@17.4018918,78.5132947,12.82z/data=!4m8!1m2!2m1!1smee+seva+centres!3m4!1s0x3bcb99c8e776ba21:0x4636f78f9d117052!8m2!3d17.3927274!4d78.4938322"
							class="btn btn-primary">Get directions</a>
					</div>
				</div>
			</div>

			<div class="col-sm-4">
				<div class="card" style="width: 18rem;">
					<img class="card-img-top" src="/images/meeseva6.jpg"
						alt="Mee Seva - Osmania" height="200px" width="250px">
					<div class="card-body">
						<h5 class="card-title">Mee Seva - Osmania University</h5>
						<p class="card-text">12-15-1003, Osmania University,
							Manikeshwar Nagar, Hyderabad , Telangana 500007</p>
						<a
							href="https://www.google.com/maps/place/MeeSeva+Center/@17.4018918,78.5132947,12.82z/data=!4m8!1m2!2m1!1smee+seva+centres!3m4!1s0x3bcb9979b48de455:0xb9670c805e9dc257!8m2!3d17.4202782!4d78.5236269"
							class="btn btn-primary">Get directions</a>
					</div>
				</div>
			</div>
		</div>





	</div>
	<br>
	<br>


	<footer class="footer bg-warning">
		<div class="container">
			<div class="row">
				<div class="col-4 offset-1 col-sm-2">
					<h5>Links</h5>
					<ul class="list-unstyled">
						<li><a href="/index.jsp" style="color: black">Home</a></li>
						<li><a href="/aboutus.jsp" style="color: black">About Us</a></li>
						<li><a href="/forms.jsp" style="color: black">Application
								Forms</a></li>
						<li><a href="/centres.jsp" style="color: black">Meeseva
								centres</a></li>
						<li><a href="/contactus.jsp" style="color: black">Contact
								Us</a></li>
					</ul>
				</div>
				<div class="col-7 col-sm-5">
					<h5>Our Address</h5>
					<address>
						The Director, ESD (MeeSeva), D.No.6-178, Eco Ritz Building 1st
						Floor, SER Centre, BMPS Road, Hyderabad-500013, Telangana-India<br>
						<i class="fa fa-fax fa-lg"></i> +852 8765 4321<br> <i
							class="fa fa-envelope fa-lg"></i> <a
							href="mailto:eseva4u@ap.gov.in" style="color: black">eseva4u@ap.gov.in</a>
					</address>
				</div>
				<div class="col-12 col-sm-4 align-self-center">
					<div class="text-center">
						<a class="btn btn-social-icon btn-google"
							href="http://google.com/+"><i class="fa fa-google-plus fa-lg"></i></a>
						<a class="btn btn-social-icon btn-facebook"
							href="http://www.facebook.com/profile.php?id="><i
							class="fa fa-facebook fa-lg"></i></a> <a
							class="btn btn-social-icon btn-linkedin"
							href="http://www.linkedin.com/in/"><i
							class="fa fa-linkedin fa-lg"></i></a> <a
							class="btn btn-social-icon btn-twitter"
							href="http://twitter.com/"><i class="fa fa-twitter fa-lg"></i></a>
						<a class="btn btn-social-icon btn-google"
							href="http://youtube.com/"><i class="fa fa-youtube fa-lg"></i></a>
						<a class="btn btn-social-icon" href="mailto:eseva4u@ap.gov.in"><i
							class="fa fa-envelope-o fa-lg"></i></a>
					</div>
				</div>
			</div>
			<div class="row justify-content-center">
				<div class="col-auto">
					<p>© Copyright 2020 eSeva Travel Portal</p>
				</div>
			</div>
		</div>
	</footer>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script src="/js/scripts.js"></script>
</body>
</html>
