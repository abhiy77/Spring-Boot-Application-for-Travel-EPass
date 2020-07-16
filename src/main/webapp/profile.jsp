<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"
	import="javax.servlet.http.*,java.util.*,com.epass.travel.model.User"%>

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
				<a class="navbar-brand mr-auto" href="/profile.jsp"><img
					src="/images/logosmall.jpg" height="30" width="41"></a>
			</div>
			<div class="col-sm-8">
				<nav class="nav nav-pills nav-fill">
					<a class="flex-sm-fill text-sm-center nav-link active"
						href="/profile.jsp">My Profile</a>
					<a class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/index.jsp">Visit Website</a>
				</nav>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-1">
				<nav class="nav nav-pills nav-fill">
					<a class="flex-sm-fill text-sm-center nav-link active btn-danger"
						href="/logout">Logout</a>
				</nav>
			</div>
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
	<%
		User user = (User) session.getAttribute("user");
	%>

	<div class="container">
		<div class="row row-header">
			<div class="col-12 col-sm-6 ">
				<h3>My Profile</h3>
				<hr>
			</div>
			<div class="col-12 col-sm-6 ">
				<h3>ePass Status</h3>
				<hr>
			</div>
		</div>

		<div class="row row-content">
			<div class="col-12 col-sm-6">

				<form>
				<%
					if (user != null) {
				%>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>FULL NAME</b>
						</div>
						<div class="col-sm-9">
							<%=user.getFullName()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>EMAIL</b>
						</div>
						<div class="col-sm-9">
							<%=user.getEmail()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>PHONE NUMBER</b>
						</div>
						<div class="col-sm-9">
							<%=user.getPhoneNum()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>GENDER</b>
						</div>
						<div class="col-sm-9">
							<%=user.getGender()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>ADDRESS</b>
						</div>
						<div class="col-sm-9">
							<%=user.getAddress()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>TRAVEL DATE</b>
						</div>
						<div class="col-sm-9">
							<%=user.getStartDate()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>RETURN DATE</b>
						</div>
						<div class="col-sm-9">
							<%=user.getReturnDate()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>VEHICLE NO.</b>
						</div>
						<div class="col-sm-9">
							<%=user.getVehicleNo()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>SOURCE</b>
						</div>
						<div class="col-sm-9">
							<%=user.getSource()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>DESTINATION</b>
						</div>
						<div class="col-sm-9">
							<%=user.getDestination()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>REASON</b>
						</div>
						<div class="col-sm-9">
							<%=user.getReason()%>
						</div>
					</div>
					<div class="form-group row">
						<div class="col-sm-3">
							<b>STATUS</b>
						</div>
						<div class="col-sm-9">
							<%=user.getStatus()%>
						</div>
					</div>

					<%
						}
					%>
				</form>
			</div>
			
			<% if(user.getStatus().equals("Pending")) { %>
			<div class="col-12 col-sm-6">
				<img src="/images/pending.jpg" height=300px width=500px >
				<br><br>
				<h3><p id="epassStatus" class="alert-warning" align="center"> Results Still Awaited</p></h3>
			</div>
			<% } %>
			
			<% if(user.getStatus().equals("Accepted")) { %>
			<div class="col-12 col-sm-6">
				<img src="/images/epass.png" height=300px width=500px >
				<br><br>
				<h3><p id="epassStatus" class="alert-success" align="center"> Accepted </p></h3>
			</div>
			<% } %>
			
			<% if(user.getStatus().equals("Rejected")) { %>
			<div class="col-12 col-sm-6">
				<img src="/images/rejected.jpg" height=300px width=500px >
				<br><br>
				<h3><p id="epassStatus" class="alert-danger" align="center"> Rejected </p></h3>
			</div>
			<% } %>


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
