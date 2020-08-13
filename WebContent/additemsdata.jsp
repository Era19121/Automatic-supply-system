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
		String pname=request.getParameter("proname");
		System.out.println(pname);
		
		String desc=request.getParameter("prodesc");
		System.out.println(desc);
		String price =request.getParameter("productprice");
		int pr = Integer.parseInt(price);
		System.out.println(pr);
		String sname=null;
		
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","space314#$era");
		PreparedStatement pst1=conn.prepareStatement("select * from seller where sellerid=?");
		pst1.setString(1, sid);

		ResultSet rs = pst1.executeQuery();

		while(rs.next()){

	    sname = rs.getString("sellername");
		
		}
		
		}
		catch(SQLException sqe)
		{ 
		out.println(sqe);
		}
		
		//System.out.println(phone);
	
		PreparedStatement pst=con.prepareStatement("insert into products values(?,?,?,?,?)");
		pst.setString(1,pname);
		pst.setString(2,desc);
	    pst.setString(3,sid);
	    pst.setString(4,sname);
		pst.setInt(5,pr);
		

		 
		
		int i=0;
		 i=pst.executeUpdate();
		                        

		//System.out.println(i)

				
				%>
				<jsp:forward page="additems.jsp">
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