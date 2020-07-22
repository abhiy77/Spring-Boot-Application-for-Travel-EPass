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
						class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/centres.jsp">Mee Seva Centres</a> <a
						class="flex-sm-fill text-sm-center nav-link active"
						href="/aboutus.jsp">About Us</a> <a
						class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/contactus.jsp">Contact Us</a>
				</nav>
			</div>
			<div class="col-sm-1">
				<nav class="nav nav-pills nav-fill">
					<a class="flex-sm-fill text-sm-center nav-link active btn-success"
						href="/login.jsp">Login</a>
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
				<li class="breadcrumb-item active">About Us</li>
			</ol>
		</div>


		<div class="row row-header">
			<div class="col-12">
				<h3>About Us</h3>
				<hr>
			</div>
		</div>

		<div class="row row-content align-items-center">
			<div class="col-12 col-sm-6">
				<h2>Our History</h2>
				<p>eSeva is an online service that fulfils the demands of
					citizens redefining the way services were provided earlier. Eseva
					was launched in 2001 and e-centres were opened as the one-stop
					source providing Government information and services online to its
					citizens. In this era of e-governance, the Government of Telangana
					has taken a large number of initiatives to improve the delivery of
					services and also simplify the process of accessing those using
					futuristic technologies. From a citizen-centric view, sustained
					efforts have been made by the Telangana Government to improve
					citizen services as well as ensure excellent governance.</p>
			</div>
			<div class="col-12 col-sm-6">
				<h2>Meeseva Vs eSeva</h2>
				<p>Meeseva is e-governance depicted as "At your service" in
					Telugu. It offers a range of public services to citizens and
					business people of all level. The objective of Meeseva is to
					provide various G2C and G2B services using facilitated technology.

					eSeva, on the other hand, is implemented on a public-private
					partnership model where it imparts various G2C and B2C services on
					demand. Along with the public sector, the private sector will play
					a significant role in accomplishing the vision of bringing services
					closer to home. *G2C - Government to Citizens, G2B - Government to
					Business and B2C - Business to Citizens</p>
			</div>
		</div>

		<div class="row row-content align-items-center">
			<div class="col-12 col-sm-6">
				<h2>Services of eSeva</h2>
				<p>It involves online services such as e-filling, e-forms, and
					e-payments. The payments can be made by cash, cheque, DD, credit
					card or the Internet.</p>
			</div>
			<div class="col-12 col-sm-6">
				<h2>Objective Of eSeva</h2>
				<p>The ultimate purpose of the Government of Telangana in
					implementing eSeva is, to execute its vision of providing quick
					governance and services on demand and digitally empowering its
					citizens using technological advancements. Also, it believes in
					extending the benefits of IT to the last person in the society.</p>
			</div>
		</div>
	</div>

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
