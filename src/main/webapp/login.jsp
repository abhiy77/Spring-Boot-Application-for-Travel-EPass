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
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="/css/styles.css">
<!-- endbuild  -->
<title>Login - E Seva Government Portal</title>
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
						class="flex-sm-fill text-sm-center nav-link alert-warning"
						href="/contactus.jsp">Contact Us</a>
				</nav>
			</div>
			<div class="col-sm-1"></div>
			<div class="col-sm-1">
				<nav class="nav nav-pills nav-fill">
					<a class="flex-sm-fill text-sm-center nav-link active btn-danger"
						href="/signup.jsp">SignUp</a>
				</nav>
			</div>

		</div>
	</div>

	<br>
	<br>
	<div class="container">
		<h1 align="center" style="color: red; font-family: ariel;">eSEVA
			TRAVEL PORTAL</h1>
	</div>
	<br>


	<div class="container">
		<h1 align="center" style="color: green; font-family: ariel;">
			LOGIN</h1>
		<br>
		<form method="post" action="/login/search" id="loginForm">
			<div class="form-group row">
				<div class="col-sm-2"></div>
				<label for="emailLogin" class="col-sm-2 col-form-label">Email*</label>
				<div class="col-sm-6">
					<input type="email" class="form-control" name="emailLogin"
						id="emailLogin" placeholder="Email" required> <small
						id="emailLoginHelp" class="form-text text-muted">We'll
						never share your email with anyone else.</small>
				</div>
			</div>
			<div class="form-group row">
				<div class="col-sm-2"></div>
				<label for="passwordLogin" class="col-sm-2 col-form-label">Password*</label>
				<div class="col-sm-6">
					<input type="password" class="form-control" name="passwordLogin"
						id="passwordLogin" placeholder="Password" required>
				</div>
			</div>

			<div class="form-check">
				<div class="row">
					<div class="col-sm-4"></div>
					<div class="col-sm-6">
						<input type="checkbox" class="form-check-input" id="adminCheck"
							name="adminCheck"> <label class="form-check-label"
							for="adminCheck">Login as Admin</label>
					</div>
				</div>
			</div>
			<br>
			<div class="form-group row">
				<div class="col-sm-4"></div>
				<div class="col-sm-8">
					<p style="color: red">
						<%
							String str = (String) request.getAttribute("loginStatus");
						if (str != null) {
						%>
						<%=str%>
						<%
							}
						%>
					</p>
				</div>
			</div>


			<div class="row">
				<div class="col-sm-5"></div>
				<div class="col-sm-7">
					<button type="submit" class="btn btn-primary w-30" id="loginButton"
						align="center">Submit</button>
				</div>
			</div>

		</form>
		<br>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-9">
				<a href="/signup.jsp">Not registered yet ? Sign up here to apply
					for Travel E pass</a>
			</div>
		</div>
	</div>

	<br>

	<div class="alert alert-info" align="center">Please login to
		check your status for your E Pass</div>


	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js">
		
	</script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>