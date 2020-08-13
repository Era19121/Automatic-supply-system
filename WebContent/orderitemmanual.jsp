<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
String mail="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","space314#$era");

		String sid=request.getParameter("sellerid");
		System.out.println(sid);
		String pname=request.getParameter("prodname");
		System.out.println(pname);
		String quantity =request.getParameter("quantity");
		int quan = Integer.parseInt(quantity);
		System.out.println(quan);
		String sname=null;
		int price=0;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","root");
		PreparedStatement pst1=conn.prepareStatement("select * from products where productname=?");
		pst1.setString(1, pname);

		ResultSet rs = pst1.executeQuery();

		while(rs.next()){

	    price = rs.getInt("productprice");
		
		}
		
		}
		catch(SQLException sqe)
		{ 
		out.println(sqe);
		}
		
		//System.out.println(phone);
		int cost = price*quan;
	
		PreparedStatement pst=con.prepareStatement("insert into orderdata values(0,?,?,?,NOW(),?)");
		pst.setString(1,pname);
		pst.setInt(2,quan);
	    pst.setString(3,sid);
	 
		pst.setInt(4,cost);
		
		int i=0;
		 i=pst.executeUpdate();
		//System.out.println(i)

				
				%>
				<jsp:forward page="orderitems.jsp">
				<jsp:param name="prod" value="Product Added" /></jsp:forward>
				
				<% 
		
			
		
		
		}
		catch(Exception e){
			
			
			e.printStackTrace();
		} 
		System.out.println("after catch");
		%>
		<jsp:forward page="#"></jsp:forward>
		<%
		//RequestDispatcher rd=request.getRequestDispatcher("./details.jsp");
		//System.out.println("after req.disp.");
		//rd.forward(request,response);
		System.out.println("end");
		%>
		
		
</body>
</html>