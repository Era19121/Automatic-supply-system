<%@ page language="java" import="java.sql.*" import="java.util.Random" contentType="text/html; charset=ISO-8859-1"
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
			
			<span class="login100-form-title-1">Inventory Management System</span>
		
			</div>
</head>
<body bgcolor="skyblue">

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
		}
		%>	
			
      
      <li><a href="./Logout.jsp"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
  </div>
</nav>

<% 
int count=0;
String sid=null,pname=null;
String[] seller=null;
int price=0,quan=0; 
int procost=0;
int i=0;
try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","space314#$era");
			

	
		 pname=request.getParameter("prodname");
		System.out.println(pname);
		
		
		String quantity =request.getParameter("quantity");
		quan = Integer.parseInt(quantity);
		System.out.println(quan);
		String sname=null;
		
		
		
		PreparedStatement pst=con.prepareStatement("select count(*) from products where productname=?");
		pst.setString(1, pname);

		ResultSet rs = pst.executeQuery();

		while(rs.next()){

	    count = rs.getInt("count(*)");
	    System.out.println(count);
	    
		}
	    rs.close();
	    
	    if(count==1)
		 {
	    	PreparedStatement pst1=con.prepareStatement("select * from products where productname=?");
			pst1.setString(1, pname);
			
			ResultSet rs1 = pst1.executeQuery();
			while(rs1.next()){
				
				sid =rs1.getString("sellerid");
				price = rs1.getInt("productprice");
				
				System.out.println(sid);
				
				 }
			pst1.close();
			rs1.close();
			
			
			procost = quan*price;
			
		
			
	

			
	
			
			PreparedStatement pst2=con.prepareStatement("insert into orderdata values(0,?,?,?,NOW(),?)");
			
			pst2.setString(1,pname);
			pst2.setInt(2,quan);
		    pst2.setString(3,sid);
			pst2.setInt(4,procost);
			pst2.executeUpdate();
		 	int j=0;
			// j=pst2.executeUpdate();
			%>
		 	<jsp:forward page="orderitems.jsp">
			<jsp:param name="orer" value="Order Placed" /></jsp:forward>
			
	<% 	
		  
		 }
	    else{
	    	
	    	PreparedStatement pst1=con.prepareStatement("select * from products where productname=?");
			pst1.setString(1, pname);
			
			ResultSet rs1 = pst1.executeQuery();
			while(rs1.next()){
				
				seller[i] =rs1.getString("sellerid");
				i++;
				 }
			pst1.close();
			rs1.close();
			
			
			
	    	
	    	
	    	
	    }
	
}
catch(SQLException sqe)
{ 
out.println(sqe);
}

	
		
		

%>

<div class="limiter"  >

		<div class="container-login100" background="20.jpg" text=white>
			

	<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(images/bg-01.jpg);">
					<span class="login100-form-title-1">
						Order Items
					</span>
				</div>

				<form  action="./additemsdata.jsp" method="post" class="login100-form validate-form">
				
				
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Product Name is required">
						<span class="label-input100">Product Name:</span>
						<input class="input100" type="text" name="prodname" value=<%=pname %>>
						<span class="focus-input100"></span>
					</div>	
				
				
					
		<% 
		int length = seller.length;
		int m=1;
		
		while(m!=length+1){
			
			%>
			<div class="wrap-input100 validate-input m-b-26" data-validate="Username is required">
			<span class="label-input100"> Seller Name : </span>
            <select class="input100" name="sellerid">
            
            <option  value="<%=seller[i] %>"><%=seller[i] %></option>
         
			
			<% 
			
			
		}
		
		%>
		</select>
		</div>

					
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Product Quantity is required">
						<span class="label-input100">Quantity:</span>
						<input class="input100" type="text" name="quantity" value=<%=quan %>>
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
