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
		String sname=request.getParameter("sellername");
		System.out.println(sname);
		String add=request.getParameter("selleradd");
		System.out.println(add);
		mail=request.getParameter("selleremail");
		System.out.println(mail);
		String phone=request.getParameter("sellerphone");
		//System.out.println(phone);
	
		PreparedStatement pst=con.prepareStatement("insert into seller values(?,?,?,?,?)");
		pst.setString(1,sid);
		pst.setString(2,sname);
	    pst.setString(3,add);
		pst.setString(4,mail);
		pst.setString(5,phone);
		int i=0;
		 i=pst.executeUpdate();
		//System.out.println(i);
		
		
				%>
				<jsp:forward page="AddSeller.jsp">
				<jsp:param name="id" value="Seller Added" /></jsp:forward>
				
				<% 
		
			
		
		
		}
		catch(Exception e){
			
			%>

			<jsp:forward page="AddSeller.jsp">
			<jsp:param name="id" value="Seller id is taken" /></jsp:forward>
			<%
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