<%@page import="com.project.ConnectionCls" %>
<%@page import="java.sql.*" %>

<% 
String id=request.getParameter("id");
String name=request.getParameter("name");
String category=request.getParameter("category");
String price=request.getParameter("price");
String active=request.getParameter("active");

try
{

	Connection con=ConnectionCls.getCon();
	String q="insert into product values(?,?,?,?,?)";
	PreparedStatement ps=con.prepareStatement(q);
	ps.setString(1, id);
	ps.setString(2, name);
	ps.setString(3,category);
	ps.setString(4, price);
	ps.setString(5, active);
	ps.executeUpdate();
	response.sendRedirect("addNewProduct.jsp?msg=done");
	
	
} catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("addNewProduct.jsp?msg=wrong");
}




%>