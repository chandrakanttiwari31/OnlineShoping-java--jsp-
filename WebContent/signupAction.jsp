<%@page import="com.project.ConnectionCls" %>
<%@page import="java.sql.*" %>

<%
String name=request.getParameter("name");
String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String password=request.getParameter("password");
String address="";
String city="";
String state="";
String country="";

try{
	
Connection con= ConnectionCls.getCon();
String query="insert into users values(?,?,?,?,?,?,?,?,?,?)";
PreparedStatement pr=con.prepareStatement(query);
pr.setString(1,name);
pr.setString(2,email);
pr.setString(3,mobileNumber);
pr.setString(4,securityQuestion);
pr.setString(5,answer);
pr.setString(6,password);
pr.setString(7,address);
pr.setString(8,city);
pr.setString(9,state);
pr.setString(10,country);
pr.executeUpdate();

response.sendRedirect("signup.jsp?msg=valid");

}
catch(Exception e)
{
System.out.println(e);	
response.sendRedirect("signup.jsp?msg=invalid");

}
%>