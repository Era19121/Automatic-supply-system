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
<body background="20.jpg">

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
    
    <% try{
			 
			
			if(session.getAttribute("name")==null){
				
				response.sendRedirect("login.html");
				System.out.println(session.getAttribute("name"));
			%>
				

			<% 
			}
			
			%>
    
    
      <li><a href="#"><span class="glyphicon glyphicon-user"></span><%=session.getAttribute("name").toString()%></a></li>
      
      <%
		
		}
		
		catch(Exception e){
		}
		%>	
			
      
      <li><a href="./Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>
		


<div class="limiter"  >

		<div class="container-login100" background="20.jpg" text=white>
			
			
			
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Sell Items 
					</span>
				</div>
				
				
			
				

<form action="./sell11.jsp" method="post" class="login100-form validate-form">
					
					<% 

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","space314#$era");
	PreparedStatement pst=con.prepareStatement("select * from stock");

ResultSet rs = pst.executeQuery(); 
%>
<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
					<span class="label-input100"> Name : </span>
<select class="input100" name="item">
<%
while(rs.next())
{
String fname = rs.getString("item_name"); 
%>
<option  value="<%=fname %>"><%=fname %></option>

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
					<div class="wrap-input100  m-b-18" >
						<span class="label-input100">Quantity</span>
						
						<input class="input100" type="text" name="qty" placeholder="Enter quantity">
						
						</div>
					
				<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" >
						SELL
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

