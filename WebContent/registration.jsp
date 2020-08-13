<%@ page language="java" import="java.sql.*,java.io.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min-3.7.7.css">
<title>Insert title here</title>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="./welcome.jsp">Home</a>
    </div>
 
    
    
    
    			
      
      <li><a href="./login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
  </div>
</nav>

<%
String mail="";
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","space314#$era");

		String fname=request.getParameter("fname");
		System.out.println(fname);
		String lname=request.getParameter("lname");
		System.out.println(lname);
		String password1=request.getParameter("password");
		System.out.println(password1);
		mail=request.getParameter("email");
		System.out.println(mail);
		String addres=request.getParameter("addr");
		System.out.println(addres);
		String phone=request.getParameter("phone");
		//System.out.println(phone);
		int pin=Integer.parseInt(request.getParameter("pin"));
		System.out.println(pin);
		PreparedStatement pst=con.prepareStatement("insert into user values(?,?,?,?,?,?,?,?)");
		pst.setString(1,mail);
		pst.setString(2,fname);
	    pst.setString(3,lname);
		pst.setString(4,password1);
		pst.setString(5,addres);
		pst.setInt(6,pin);
		pst.setString(7,phone);
		pst.setString(8,"NO");
		int i=pst.executeUpdate();
		//System.out.println(i);
		}
		catch(Exception e){
			e.printStackTrace();
		} 
		System.out.println("after catch");
		session.setAttribute("id",mail);
		%>
		<jsp:forward page="./login.html"></jsp:forward>
		<%
		//RequestDispatcher rd=request.getRequestDispatcher("./details.jsp");
		//System.out.println("after req.disp.");
		//rd.forward(request,response);
		System.out.println("end");
		%>
		
		
</body>
</html>