<%@page import="com.project.ConnectionCls"%>
<%@page import="java.sql.*"%>
<%@page import="java.lang.Thread.State"%>

<%
String email=session.getAttribute("email").toString();
String security=request.getParameter("security");
String newAnswer=request.getParameter("newAnswer");
String password=request.getParameter("password");
int check=0;

try
{
	Connection con=ConnectionCls.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
	while(rs.next())
	{
		check=1;
		st.executeUpdate("update users set securityQuestion='"+security+"',answer='"+newAnswer+"' where email='"+email+"'");
		response.sendRedirect("changeSecurityQuestion.jsp?msg=done");
		
	}
	if(check==0)
	{
		response.sendRedirect("changeSecurityQuestion.jsp?msg=wrong");

		
	}
	
}catch(Exception e)

{
System.out.println(e);	
}

%>>