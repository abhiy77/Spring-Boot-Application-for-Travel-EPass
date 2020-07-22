<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.util.Map"%>
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
					<a class="flex-sm-fill text-sm-center nav-link active"
						href="/index.jsp">Home</a> <a
						class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/forms.jsp">Application Forms</a> <a
						class="flex-sm-fill text-sm-center nav-link alert-warning"
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
		<div class="row row-content">
			<div class="col">
				<div id="mycarousel" class="carousel slide" data-ride="carousel">
					<div class="carousel-item active">
						<img class="d-block img-fluid" src="images/carouselCovidPass.png"
							alt="Empowering India">

						<div class="carousel-caption d-block">
							<h2 style="color:#FF0000">
								<b>eTRAVEL PASS</b> <span class="badge badge-danger">NEW</span>
							</h2>
							<p class="d-none d-sm-block" style="color:#FF0000"><b>ePasses are now
								available for travelling.. Fill all the necessary details to get
								your ePass today.. Sign up now and provide the necessary details
								and login to check your status</b></p>
						</div>

					</div>

					<div class="carousel-item carousel2">

						<img class="d-block img-fluid" src="images/logosmall.jpg"
							alt="Buffet">
						<div class="carousel-caption d-none d-md-block">
							<a href="signup.jsp" style="color: #FFFFFF">
								<h2>
									Instructions to apply for ePass <span
										class="badge badge-danger">NEW</span>
								</h2>
								<p class="d-none d-sm-block">
									1)Essential service providers do not require travel pass for
									inter-state or intra-state travel <br> 2)All other
									individuals/group can apply for Travel Pass through this
									platform
								</p>
							</a>
						</div>

					</div>

					<div class="carousel-item carousel3">
						<img class="d-block img-fluid" src="images/carouselEseva.jpg"
							alt="Buffet">
						<div class="carousel-caption d-none d-md-block">
							<h2>Other Mee Seva Centres</h2>
							<p class="d-none d-sm-block">Visit your nearest Mee Seva
								centres now for other related queries or email us at
								eseva4u@ap.gov.in</p>
						</div>
					</div>




				</div>

				<ol class="carousel-indicators">
					<li data-target="#mycarousel" data-slide-to="0" class="active"></li>
					<li data-target="#mycarousel" data-slide-to="1"></li>
					<li data-target="#mycarousel" data-slide-to="2"></li>
				</ol>

				<a class="carousel-control-prev" href="#mycarousel" role="button"
					data-slide="prev"> <span class="carousel-control-prev-icon"></span>
				</a> <a class="carousel-control-next" href="#mycarousel" role="button"
					data-slide="next"> <span class="carousel-control-next-icon"></span>
				</a>
			</div>
		</div>

		<div class="row row-header">
			<div class="col-12">
				<button type="button" class="btn btn-warning">
					<h3>Latest Updates :</h3>
				</button>
				<hr>
			</div>
		</div>
	</div>

	<div class="container-fluid">



		<div class="row">
			<div class="col-sm-2">
				<img src="/images/ad1.jpg" height="200px" width="200px"> <img
					src="/images/ad2.jpg" height="200px" width="200px"> <img
					src="/images/ad3.png" height="200px" width="200px"> <img
					src="/images/ad4.jpg" height="200px" width="200px">
			</div>

			<div class="col-sm-8"
				style="color: #FF0000; margin: 0px 0px 0px 0px;" align="justify">

				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b>AP Government has announced two new initiatives regarding
						Disability assessments in the state. 1) Additional slots( 2090 per
						week ) are being opened up on Tuesdays across the existing
						Hospitals. 2) Sadarem Assessments will be expanded to another 100
						plus hospitals across all the Assembly constituencies from 15 Dec
						2019 to 31 Mar 2020.</b>
				</p>

				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b>Dear users please contact the following officials though
						SMS/Email/Phone for any complaints relating to MeeSeva centers
						such as If any official and / or operator demands extra money for
						an e-services Refuses to provide receipts for cash received
						Refuses to provide a specific citizen's service</b>
				</p>
				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b>Click here to download User Manual for Grievance on SADAREM
						Certificate Application</b>
				</p>
				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b>Click here to submit Online application for Petrol pump
						Dealership</b>
				</p>
				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b>Click here to Download Bhuseva-Hand Book.</b>
				</p>
				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b>UIDAI circular on Date of Birth , Gender and Name Change
						Click here</b>
				</p>
				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b>Please download the APP for MeeSeva feedback from the link
						Click Here. All the VLEs/Operators/Franchisee are to download the
						app from this link and start using the app without fail.</b>
				</p>
				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b>Digital Life Certificate Services click here The services
						shall be delivered through MeeSeva Kiosk with a user charge of Rs.
						10/- to be collected.</b>
				</p>
				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b>To avail the EPFO Jeevan Pramaan services Click Here For
						more info. Please Contact: 1. 0863-2344123 or 0120-3076200</b>
				</p>
				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b>Aadhaar UCL training material with voice Click Here</b>
				</p>
				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b>"To Provide the PR & RD department Digital panchayat
						services" Click Here</b>
				</p>
				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b> Application Form for Birth Certificate
						https://ts.meeseva.telangana.gov.in/meeseva/downloadzip.htm?filename=CDMAAPPLICATIONFORBIRTHCERTIFICATE.pdf
					</b>
				</p>
				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b>Application Form for Name Inclusion in Electoral Rolls
						https://ts.meeseva.telangana.gov.in/meeseva/downloadzip.htm?filename=InclusionOfName.pdf
					</b>
				</p>
				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b>Form for Income Certificate
						https://ts.meeseva.telangana.gov.in/meeseva/downloadzip.htm?filename=IncomeGeneralApplicationForm.pdf
					</b>
				</p>

				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b> Check Company and its registration
						http://www.mca.gov.in/DCAPortalWeb/dca/MyMCALogin.do?method=setDefaultProperty&mode=16
					</b>
				</p>
				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b> Aadhaar Enrolment,Update Adhar,Check Aadhaar Status
						https://resident.uidai.gov.in/ </b>
				</p>

				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b> Income Tax PAN Services Unit https://tin.tin.nsdl.com/pan/
					</b>
				</p>
				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b> Track status of PAN or TAN application online
						https://tin.tin.nsdl.com/tan/StatusTrack.html </b>
				</p>

				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b> Income Tax PAN Services Unit https://tin.tin.nsdl.com/pan/
					</b>
				</p>
				<p style="color: blue; margin: 0px 0px 0px 0px;" class="alert-info">
					<b> Check tax challan status with Income Tax Department
						https://tin.tin.nsdl.com/oltas/servlet/QueryTaxpayer </b>
				</p>

				<p style="color: #FF0000; margin: 0px 0px 0px 0px;"
					class="alert-danger">
					<b> Online Passport Seva
						http://passportindia.gov.in/AppOnlineProject/welcomeLink </b>
				</p>





			</div>

			<div class="col-sm-2">
				<img src="/images/ad5.jpg" height="200px" width="200px"> <img
					src="/images/ad6.jpg" height="200px" width="200px"> <img
					src="/images/ad7.jpg" height="200px" width="200px"> <img
					src="/images/ad8.png" height="200px" width="200px">

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
