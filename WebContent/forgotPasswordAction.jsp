<%@page import="com.project.ConnectionCls" %>
<%@page import="java.sql.*" %>

<% 

String email=request.getParameter("email");
String mobileNumber=request.getParameter("mobileNumber");
String securityQuestion=request.getParameter("securityQuestion");
String answer=request.getParameter("answer");
String newPassword=request.getParameter("newPassword");

int check=0;
try
{
	Connection con=ConnectionCls.getCon();
	Statement st=con.createStatement();
	String q="select * from users where email='"+email+"' and mobileNumber='"+mobileNumber+"' and securityQuestion='"+securityQuestion+"' and answer='"+answer+"'";
	ResultSet rs=st.executeQuery(q);
	while(rs.next())
	{
		check=1;
	st.executeUpdate("update users set password='"+newPassword+"' where email='"+email+"'");
	response.sendRedirect("forgotPassword.jsp?msg=done");
}
	
	if(check==0)
	{
		
		response.sendRedirect("forgotPassword.jsp?msg=invalid");
	}
}
catch(Exception e)
{
System.out.println(e);	
}


%>