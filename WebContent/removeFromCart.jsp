<%@page import="com.project.ConnectionCls"%>
<%@page import="java.sql.*"%>


<%
String email=session.getAttribute("email").toString();
String product_id=request.getParameter("id");

try
{
	
	
Connection con=ConnectionCls.getCon();
Statement st=con.createStatement();

 st.executeUpdate("delete from cart where email='"+email+"' and product_id='"+product_id+"' and address is NULL");
 response.sendRedirect("myCart.jsp?msg=remove");


}catch(Exception e)
{
	
System.out.println(e);
}

%>