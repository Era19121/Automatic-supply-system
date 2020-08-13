<%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->

<div class="login100-form-title">
			
			<span class="login100-form-title-1">Inventory Management System</span>
		
			</div>
</head>
<body bgcolor="skyblue">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="./welcome.jsp">Home</a>
    </div>
 
    
    
    
    			
       <ul class="nav navbar-nav navbar-right">
      <li><a href="./login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<div class="limiter"  >

		<div class="container-login100" background="20.jpg" text=white>
			

	<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sign Up
					</span>
				</div>

				<form  action="./registration.jsp" method="post" class="login100-form validate-form">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Email is required">
						<span class="label-input100">Username:</span>
						<input class="input100" type="email" name="email" placeholder="Enter Email">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Email is required">
						<span class="label-input100">Re-Enter Email:</span>
						<input class="input100" type="email" name="" placeholder="Enter Email">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Field is required">
						<span class="label-input100">First Name:</span>
						<input class="input100" type="text" name="fname" placeholder="Enter First Name">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Field is required">
						<span class="label-input100">Last Name:</span>
						<input class="input100" type="text" name="lname" placeholder="Enter Last Name">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password" name="password" placeholder="Enter password">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Password is required">
						<span class="label-input100">Re-Enter Password</span>
						<input class="input100" type="password" name="password" placeholder="Reenter password">
						<span class="focus-input100"></span>
					</div>

					<div class="wrap-input100 validate-input m-b-18" data-validate = "Address is required">
						<span class="label-input100">Address</span>
						<input class="input100" type="text" name="addr" placeholder="Enter Address">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Field is required">
						<span class="label-input100">Pin Code:</span>
						<input class="input100" type="text" name="pin" placeholder="Enter Pin code">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Field is required">
						<span class="label-input100">Phone</span>
						<input class="input100" type="text" name="phone" placeholder="Enter Phone Number">
						<span class="focus-input100"></span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
						 Sign Up
						</button>
					</div>
				</form>
			</div>
		</div>
	</div>






<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>

</body>
</html>
