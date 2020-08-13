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

<div class="limiter"  >

		<div class="container-login100" background="20.jpg" text=white>
			

	<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Order Items
					</span>
				</div>

				<form  action="./orderitemsdata.jsp" method="post" class="login100-form validate-form">
				
					
		<% 		try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","space314#$era");
	PreparedStatement pst=con.prepareStatement("select * from products");

ResultSet rs = pst.executeQuery(); 
%>
<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
					<span class="label-input100"> Product Name : </span>
<select class="input100" name="prodname">
<option value="">--Select Product--</option>
<%
while(rs.next())
{
String pname = rs.getString("productname");
%>
<option  value="<%=pname %>"><%=pname%></option>

<%
}
%>
</select>
</div>




<%
}
catch(SQLException sqe)
{ 
out.println(sqe);
}
%>	

					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Product Price is required">
						<span class="label-input100">Quantity:</span>
						<input class="input100" type="text" name="quantity" placeholder="Enter Quantity">
						<span class="focus-input100"></span>
					</div>	
					
					
					
					
					
					
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">
						 Order
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
