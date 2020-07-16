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
						class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/aboutus.jsp">About Us</a> <a
						class="flex-sm-fill text-sm-center nav-link active"
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
				<li class="breadcrumb-item active">Contact Us</li>
			</ol>
			<div class="col-12">
				<h3>Contact Us</h3>
				<hr>
			</div>
		</div>

		<div class="row row-content">
			<div class="col-12">
				<h3>Location Information</h3>
			</div>
			<div class="col-12 col-sm-4 offset-sm-1">
				<h5>Our Address</h5>
				<address style="font-size: 100%">
					The Director, ESD (MeeSeva), D.No.6-178, Eco Ritz Building 1st
					Floor, SER Centre, BMPS Road, Hyderabad-500013, Telangana-India<br>
					<i class="fa fa-phone"></i>: +852 1234 5678<br> <i
						class="fa fa-fax"></i>: +852 8765 4321<br> <i
						class="fa fa-envelope"></i>: <a href="mailto:eseva4u@ap.gov.in">eseva4u@ap.gov.in</a>
				</address>
			</div>
			<div class="col-12 col-sm-6 offset-sm-1">
				<h5>Map of our Location</h5>
				<img src="/images/contactusmap.png" height="300px" width="550px">
			</div>
			<div class="col-12 col-sm-11 offset-sm-1">
				<div class="btn-group" role="group">
					<a role="button" class="btn btn-primary" href="tel:+85212345678"><i
						class="fa fa-phone"></i> Call</a> <a role="button"
						class="btn btn-info"><i class="fa fa-skype"></i> Skype</a> <a
						role="button" class="btn btn-success"
						href="mailto:confusion@food.net"><i class="fa fa-envelope-o"></i>
						Email</a>
				</div>
			</div>

			<div class="row row-content">
				<div class="col-12">
					<h3>Send us your Suggestions/Grievances :</h3>
				</div>
				<div class="col-12 col-md-9">
					<form>
						<div class="form-group row">
							<label for="emailContactUsForm" class="col-md-2 col-form-label">Email</label>
							<div class="col-md-10">
								<input type="email" class="form-control" id="emailContactUsForm"
									name="emailContactUsForm" placeholder="Email">
							</div>
						</div>
						<div class="form-group row">
							<label for="feedback" class="col-md-2 col-form-label">Your
								Feedback</label>
							<div class="col-md-10">
								<textarea class="form-control" id="feedback" name="feedback"
									rows="12"></textarea>
							</div>
						</div>
						<div class="form-group row">
							<div class="offset-md-2 col-md-10">
								<button type="submit" class="btn btn-primary">Send
									Feedback</button>
							</div>
						</div>
					</form>
				</div>
				<div class="col-12 col-md"></div>
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
