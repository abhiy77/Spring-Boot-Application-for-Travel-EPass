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
						href="/forms.jsp">Application Forms</a><a
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
					<a class="flex-sm-fill text-sm-center nav-link active btn-success"
						href="/login.jsp">Login</a>
				</nav>
			</div>

		</div>
	</div>

	<br>
	<br>


	<div class="container">
		<h1 align="center" style="color: green; font-family: ariel;">
			TRAVEL E-PASS SIGN UP FORM</h1>
		<br>
		<form method="post" action="/signup" encType="multipart/form-data"
			id="signUpForm">
			<div class="form-group row">
				<label for="nameSignUp" class="col-sm-2 col-form-label">Full
					Name*</label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="nameSignUp"
						placeholder="Full Name" required>
				</div>
			</div>
			<div class="form-group row">
				<label for="emailSignUp" class="col-sm-2 col-form-label">Email*</label>
				<div class="col-sm-10">
					<input type="email" class="form-control" name="emailSignUp"
						id="emailSignUp" placeholder="Email" required> <small
						id="emailSignUpHelp" class="form-text text-muted">We'll
						never share your email with anyone else.</small>
				</div>
			</div>
			<div class="form-group row">
				<label for="passwordSignUp" class="col-sm-2 col-form-label">Password*</label>
				<div class="col-sm-10">
					<input type="password" class="form-control" name="passwordSignUp"
						placeholder="Password" required>
				</div>
			</div>
			<div class="form-group row">
				<label for="phonenumSignUp" class="col-sm-2 col-form-label">Phone
					Number*</label>
				<div class="col-sm-10">
					<input type="number" class="form-control" name="phonenumSignUp"
						placeholder="Phone number" required>
				</div>
			</div>
			<fieldset class="form-group">
				<div class="row">
					<legend class="col-form-label col-sm-2 pt-0">Gender*</legend>
					<div class="col-sm-10">
						<div class="form-check">
							<input class="form-check-input" type="radio" name="genderSignUp"
								id="male" value="Male" checked> <label
								class="form-check-label" for="male"> Male </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="genderSignUp"
								id="female" value="Female"> <label
								class="form-check-label" for="female"> Female </label>
						</div>
						<div class="form-check">
							<input class="form-check-input" type="radio" name="genderSignUp"
								id="others" value="Others"> <label
								class="form-check-label" for="others"> Others </label>
						</div>
					</div>
				</div>
			</fieldset>
			<div class="form-group row">
				<label for="addressSignUp" class="col-sm-2 col-form-label">Address*</label>
				<div class="col-sm-10">
					<textarea rows="3" cols="15" class="form-control"
						name="addressSignUp" placeholder="Address" required></textarea>
				</div>
			</div>

			<div class="form-group row">
				<label for="startDateSignUp" class="col-sm-2 col-form-label">Travel
					Date*</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" name="startDateSignUp"
						placeholder="Enter the date of travel" required>
				</div>
			</div>
			<div class="form-group row">
				<label for="returnDateSignUp" class="col-sm-2 col-form-label">Return
					Date*</label>
				<div class="col-sm-10">
					<input type="date" class="form-control" name="returnDateSignUp"
						placeholder="Enter the return date" required>
				</div>
			</div>
			<div class="form-group row">
				<label for="vehicleNumberSignUp" class="col-sm-2 col-form-label">Vehicle
					No* </label>
				<div class="col-sm-10">
					<input type="text" class="form-control" name="vehicleNumberSignUp"
						placeholder="Eg : TS 04 AY 1233 / NA" required>
				</div>
			</div>

			<div class="form-group row">
				<label for="sourceSignUp" class="col-sm-2 col-form-label">Source*</label>
				<div class="col-sm-10">
					<select
						name="sourceSignUp" class = "form-control" id="sourceSignUp">
						<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chandigarh">Chandigarh</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Daman and Diu">Daman and Diu</option>
						<option value="Delhi">Delhi</option>
						<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Haryana">Haryana</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Ladakh">Ladakh</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Lakshadweep">Lakshadweep</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Manipur">Manipur</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Odisha">Odisha</option>
						<option value="Punjab">Punjab</option>
						<option value="Puducherry">Puducherry</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Telangana">Telangana</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Uttarakhand">Uttarakhand</option>
						<option value="West Bengal">West Bengal</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
					</select> 
					<small
						id="sourceSignUpHelp" class="form-text text-muted"></small>
					
				</div>
			</div>

			<div class="form-group row">
				<label for="destinationSignUp" class="col-sm-2 col-form-label">Destination*</label>
				<div class="col-sm-10">
					<select
						name="destinationSignUp" class = "form-control" id="destinationSignUp">
						<option value="Andaman and Nicobar Islands">Andaman and Nicobar Islands</option>
						<option value="Andhra Pradesh">Andhra Pradesh</option>
						<option value="Arunachal Pradesh">Arunachal Pradesh</option>
						<option value="Assam">Assam</option>
						<option value="Bihar">Bihar</option>
						<option value="Chandigarh">Chandigarh</option>
						<option value="Chhattisgarh">Chhattisgarh</option>
						<option value="Daman and Diu">Daman and Diu</option>
						<option value="Delhi">Delhi</option>
						<option value="Dadra and Nagar Haveli">Dadra and Nagar Haveli</option>
						<option value="Goa">Goa</option>
						<option value="Gujarat">Gujarat</option>
						<option value="Himachal Pradesh">Himachal Pradesh</option>
						<option value="Haryana">Haryana</option>
						<option value="Jharkhand">Jharkhand</option>
						<option value="Ladakh">Ladakh</option>
						<option value="Karnataka">Karnataka</option>
						<option value="Kerala">Kerala</option>
						<option value="Lakshadweep">Lakshadweep</option>
						<option value="Maharashtra">Maharashtra</option>
						<option value="Meghalaya">Meghalaya</option>
						<option value="Manipur">Manipur</option>
						<option value="Madhya Pradesh">Madhya Pradesh</option>
						<option value="Mizoram">Mizoram</option>
						<option value="Nagaland">Nagaland</option>
						<option value="Odisha">Odisha</option>
						<option value="Punjab">Punjab</option>
						<option value="Puducherry">Puducherry</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="Sikkim">Sikkim</option>
						<option value="Telangana">Telangana</option>
						<option value="Tamil Nadu">Tamil Nadu</option>
						<option value="Tripura">Tripura</option>
						<option value="Uttar Pradesh">Uttar Pradesh</option>
						<option value="Uttarakhand">Uttarakhand</option>
						<option value="West Bengal">West Bengal</option>
						<option value="Jammu and Kashmir">Jammu and Kashmir</option>
					</select> 
				</div>
			</div>


			<div class="form-group row">
				<label for="reasonSignUp" class="col-sm-2 col-form-label">Reason(In
					Brief)* </label>
				<div class="col-sm-10">
					<textarea rows="2" cols="15" class="form-control"
						name="reasonSignUp"
						placeholder="Please provide a valid reason for travel" required></textarea>
				</div>
			</div>

			<div class="form-group row">
				<label for="documentSignUp" class="col-sm-2 col-form-label">
					Attach Relevant Proof*</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" name="documentSignUp"
						required> <input class="form-control" type="text"
						placeholder="Please attach your Aadhar Card / Pan Card / Driving License"
						readonly>
				</div>
			</div>

			<div class="form-group row">
				<label for="photoSignUp" class="col-sm-2 col-form-label">
					Attach Passport size photo*</label>
				<div class="col-sm-10">
					<input type="file" class="form-control" name="photoSignUp" required>
					<input class="form-control" type="text"
						placeholder="Please attach your passport-size photo" readonly>
				</div>

			</div>

			<br> <br>
			<div class="alert alert-warning ">
				<input class="form-control alert alert-warning" type="text"
					placeholder="Please provide all the correct details. Providing incorrect/fake details is a punishable offence">
			</div>


			<br>

			<div class="form-group row">
				<div class="col-sm-5"></div>
				<div class="col-sm-7">
					<button type="submit" class="btn btn-primary" id="signUpButton">Sign
						Up</button>
				</div>
			</div>
		</form>

	</div>

	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

	<script src="/js/signupajax.js"></script>
</body>
</html>