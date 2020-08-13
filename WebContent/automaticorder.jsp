 <%@ page language="java" import="java.sql.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
     <%@ page import="java.util.*"%>
     <%@ page import="javax.mail.*"%>
     <%@ page import="javax.mail.internet.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<% 
String prod=request.getParameter("prodname");
String qty=request.getParameter("pqty");
String price=request.getParameter("price");
int quan = Integer.parseInt(qty);
System.out.println(quan);
int pr = Integer.parseInt(price);
System.out.println(pr);

String id =null;
String seller =null;
String reciever = null;


try{ 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/invnt","root","space314#$era");
	PreparedStatement pst=con.prepareStatement("select sellerid,sellername,MIN(productprice)from products where productname=? group by productprice limit 1");
	pst.setString(1,prod);
	
	
	ResultSet rs=pst.executeQuery();
	
	
	while(rs.next())
	{
	id = rs.getString(1);
	seller = rs.getString(2);
	
	
	}
	
	pst.close();
	
	int cost = pr *quan;
	
	
	PreparedStatement pst1=con.prepareStatement("insert into orderdata values(0,?,?,?,NOW(),?)");
	pst1.setString(1,prod);
	pst1.setInt(2,quan);
    pst1.setString(3,id);
 
	pst1.setInt(4,cost);
	
	int i=0;
	 i=pst1.executeUpdate();
	 
	 PreparedStatement pst2=con.prepareStatement("select selleremail from seller where sellerid=?");
	 pst2.setString(1,id);
	 
	ResultSet rst2 = pst2.executeQuery();
	 
	 
	 while(rst2.next()){
		 reciever=rst2.getString(1);
		 System.out.println(reciever);
	 }
	 
	 
}
catch(Exception e)
{
	System.out.println(e);
}


	

	 
	final String sender ="erasharma1097@gmail.com";
	final String password="pious690";
	 String header = "Invetory Order Received";
	 
	 String body1= "Dear"+seller+",\n";
	 String body2 ="You have recieved an order regarding these products. \n";
	 
	String body3="Product name :"+prod+"\n";
	String body4="Quantity:"+quan+"\n"+"\n"+"\n";
	
	String body5="Thank You";
	
	String body = "\n"+body1+body2+body3+body4+body5;
			
			
	
			
    Properties props = new Properties();
	props.put("mail.smtp.auth", "true");
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.transport.protocol", "smtp");
	props.put("mail.smtp.host", "smtp.gmail.com");
	props.put("mail.smtp.port", "465");
	props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
	
	Session session1 = Session.getInstance(props,
	new javax.mail.Authenticator() 
	{
	protected PasswordAuthentication getPasswordAuthentication() {
	return new PasswordAuthentication(sender,password);
	}
	});

	try {
	Message message = new MimeMessage(session1);

	message.setFrom(new InternetAddress(sender));
	message.setRecipients(Message.RecipientType.TO,
	InternetAddress.parse(reciever));
	message.setSubject(header);
	message.setText(body);

	Transport.send(message);

	System.out.println("send mail okay"+reciever);
	} 
	catch (MessagingException e) 
	{
	throw new RuntimeException(e);
	}

	 




%>
<jsp:forward page="sell.jsp">
<jsp:param name="prod" value="product sold and Automatic order placed" /></jsp:forward>

<% 






%>


</head>
<body>

</body>
</html>
