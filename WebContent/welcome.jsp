<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>

<!DOCTYPE html>
<html>
<head>
<title>AUTOMATIC ORDER GENERATION</title>
<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min-3.7.7.css">
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
	<link rel="stylesheet" type="text/css" href="css/grayscale.min.css">
<!--===============================================================================================-->
<style>
.button:link, .button:visited {
    background-color: #f44336;
    color: white;
    padding: 14px 25px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
}


a:hover, a:active {
    background-color: green;
}

.img {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 40%;
}
.wel {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 100%;
    text-align:center;
}
</style>

	
			<div class="login100-form-title">
			
			
			
			<span class="login100-form-title-1">AUTOMATIC ORDER GENERATION</span>
		
</div>
</head>
<body background="20.jpg"  >


			<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="./welcome.jsp">Home</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="./purchase.jsp">Purchase</a></li>
      <li class="active"><a href="./sell.jsp">Sell</a></li>
      <li class="active"><a href="./additems.jsp">Add Items</a></li>
      
      
    </ul>
    
    
    
    <ul class="nav navbar-nav navbar-right">
    
    <%try{
			
			;
			if(session.getAttribute("name")==null){
				%>
				<jsp:forward page="login.html"></jsp:forward>

				<% 
			}
			
			%>
    
    
      <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=session.getAttribute("name").toString()%></a></li>
      
      <%
		
		}
		
		catch(Exception e){
		}%>	
			
      
      <li><a href="./Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
<div class="container-login100" background="20.jpg" >
  
	<div class="limiter"  >

	
	


		
			<section class="container text-center">
			<div class="col-sm-8 col-md-8 col-lg-offset-0" >
				<img class="img" src="images/2.png" width="256" height="256" > 
				</div>
				</section>
				</div>
				</div>
		
		
		
	<section class="container  text-center">
	<div class="row" >
		<div class="col-sm-3 col-md-3 col-lg-offset-0" >
	<a class="button" href="./additems.jsp">Add new items</a>
	</div>
	<div class="col-sm-3 col-md-3 col-lg-offset-0" >
	<a class="button" href="./AddSeller.jsp">Add Seller</a>
	</div>
	<div class="col-sm-3 col-md-3 col-lg-offset-0" >
	<a class="button" href="./purchase.jsp">Purchase items</a>
	</div>
	<div class="col-sm-3 col-md-3 col-lg-offset-0" >
	<a class="button" href="./sell.jsp">Sell items</a>
	</div>
	</div>
	
	</section>
			
			
	
			
			
	
	
	
	
	



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
	<script src="js/grascale.min.js"></script>


</body>
</html>