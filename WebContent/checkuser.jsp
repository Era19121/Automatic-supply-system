<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<% 
String id=request.getParameter("id");
String psw=request.getParameter("pwd");
	try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","space314#$era");
	PreparedStatement pst=con.prepareStatement("select fname from user where email=? and password=?");
	pst.setString(1,id);
	pst.setString(2,psw);
	ResultSet rs1=pst.executeQuery();
	if(rs1.next())
	{
		session.setAttribute("id",id);
		session.setAttribute("name",rs1.getString("fname"));
		//redirect to menu
		%>
		
		<jsp:forward page="welcome.jsp"></jsp:forward>
		<%
	}
	else
	{
		//redirect to login
		%>
		<jsp:forward page="./login.html"></jsp:forward>
		<%
	}
}
	catch(Exception e)
	{
		System.out.println(e);
	}
	%>