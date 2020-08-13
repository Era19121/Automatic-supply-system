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
<!--===============================================================================================-->
 
 <div class="login100-form-title">
			
			<span class="login100-form-title-1">AUTOMATIC ORDER GENERATION</span>
		
			</div>
</head>
<body bgcolor="skyblue">

<div class="limiter"  >

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="./welcome.jsp">Home</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="./purchase.jsp">Purchase</a></li>
      <li class="active"><a href="./sell.jsp">Sell</a></li>
      <li class="active"><a href="./AddSeller.jsp">Add Items</a></li>
      
      
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


		<div class="container-login100" background="20.jpg" text=white>
			

	<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Add Seller
					</span>
				</div>
			
				<div> <span ><%
				
				String id =request.getParameter("id");
				if( id!=null)
					out.print(id);%></span></div> 
				
				
				

				<form  action="./AddSellerData.jsp" method="post" class="login100-form validate-form">
				
				<div class="wrap-input100 validate-input m-b-18" data-validate = "Seller id is required">
						<span class="label-input100">Seller id:</span>
						<input class="input100" type="text" name="sellerid" placeholder="Enter Seller id">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Seller Name is required">
						<span class="label-input100">Seller Name:</span>
						<input class="input100" type="text" name="sellername" placeholder="Enter Seller Name">
						<span class="focus-input100"></span>
					</div>

					
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Field is required">
						<span class="label-input100">Seller Address:</span>
						<input class="input100" type="text" name="selleradd" placeholder="Enter Seller Address">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Field is required">
						<span class="label-input100">Seller email:</span>
						<input class="input100" type="email" name="selleremail" placeholder="Enter Seller email">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Phone no is required">
						<span class="label-input100">Seller Phone</span>
						<input class="input100" type="text" name="sellerphone" placeholder="Enter Seller Phone">
						<span class="focus-input100"></span>
					</div>
					
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
						 Add Seller
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
