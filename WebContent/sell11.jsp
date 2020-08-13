<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>
<html>
<head>
<title>automatic order System</title>
<meta charset="UTF-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
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
</head>
<body background="20.jpg"  >
  
  
  
  
  
	<div class="limiter"  >

		<div class="container-login100" background="20.jpg" >
			<div class="login100-form-title">
			
			<span class="login100-form-title-1">automatic order System</span>
		
</div>
	

	<section class="container  text-center">
	<div class="row" >
		<div class="col-sm-6 col-md-6 col-lg-offset-0" >
			<div style="font-size:1vw; color:red" > Welcome  </div>
			
				
			
		</div>
			<div class="col-sm-6 col-md-6 col-lg-offset-0" ><a style="font-size:1vw; color:red" href="./welcome.html">Logout</a>
			
		
			</div>
		</div>
	<% 
String item=request.getParameter("item");
String qty=request.getParameter("qty");
int qty1= Integer.parseInt(qty);
int qty2=0;
int price=0;
int sum=0;
	try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","space314#$era");
	PreparedStatement pst=con.prepareStatement("select qty,price from stock where item_name=?");
	pst.setString(1,item);
	
	
	ResultSet rs=pst.executeQuery();
	
	
	while(rs.next())
	{
	int num = rs.getInt(1);
	price = rs.getInt(2);
	
	qty2=num-qty1;
	}
	
	pst.close();
	
	if(qty2>0){

	PreparedStatement pst1=con.prepareStatement("update stock set qty=? where item_name=?");
	pst1.setInt(1,qty2);
	pst1.setString(2,item);
	
	pst1.executeUpdate();
	pst1.close();
	
	
	PreparedStatement pst2=con.prepareStatement("insert into sell values(?,?,NOW(),?)");
	pst2.setString(1,item);
	pst2.setInt(2,qty1);
	price=price*qty1;
	pst2.setInt(3,price);
	
	
	pst2.executeUpdate();
	pst2.close();
	
	
	}
	
	PreparedStatement pst3=con.prepareStatement("select qty,min_qty from stock where item_name=?");
	pst3.setString(1,item);
	
	ResultSet rs3= pst3.executeQuery();
	
	int quant=0,minq=0;
	
	
	while(rs3.next())
	{
		quant = rs3.getInt(1);
		minq = rs3.getInt(2);
	}
	
	java.time.LocalDate today = java.time.LocalDate.now();
	int month = today.getMonthValue();
	
	if(quant<=minq)
	{
		
		
		
		
		PreparedStatement pst4=con.prepareStatement("select sum(qty) from sell where item_name=? and date >(NOW() - INTERVAL 1 MONTH)");
		pst4.setString(1,item);
		
		
		
		ResultSet rs4= pst4.executeQuery();
		while(rs4.next())
		{
		sum =rs4.getInt(1);
		System.out.print(sum);
		}
		
		%>
		<jsp:forward page="automaticorder.jsp">
		<jsp:param value="<%=item %>" name="prodname"/>
		<jsp:param value="<%=sum %>" name="pqty"/>
		<jsp:param value="<%=price %>" name="price"/>
		</jsp:forward>
		
		
		<%
		
	}
	
	con.close();	
	
	
	
	
}
	catch(Exception e)
	{
		System.out.println(e);
	}
	
	
	%>
	
	
	
	
	
		
		
		<div style="font-size:2vw; color:red"> 
		
		 <p>
		 <% 
		 
		 if(qty2>0){
		 out.print("ITEM Sold");
		 }
		 else
		 {
			 out.print("Not Enough items available in stock"); 
		 }
		 %></p>
		 
		 </div>
			
			
		</section>
		
			<section class="container">
			
				<img class="img" src="images/2.png" width="256" height="256" > 
				
				
				</section>
					
				</div>
			</div>
			
			<section class="container  text-center">
			<div class=" col-lg-offset-0" >
	<a class="button" href="./sell.jsp">Sell more items</a>
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
