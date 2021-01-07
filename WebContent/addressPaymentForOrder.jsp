
<%@page import="java.lang.Thread.State"%>
<%@page import="com.project.ConnectionCls"%>
<%@page import="java.sql.*"%>
<%@include file="footer.jsp"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="css/addressPaymentForOrder-style.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Home</title>
<script>
	if (window.history.forward(1) != null) {

		window.history.forword(1);
	}
</script>

</head>
<body>
	<br>
	<table>
		<thead>

			<%
String email=session.getAttribute("email").toString();


try
{
 int total=0;
 int sno=0;
 Connection con=ConnectionCls.getCon();
 Statement st=con.createStatement();
 ResultSet rs=st.executeQuery("select sum(total) from cart  where email='"+email+"' and address is NULL");
 while(rs.next())
 {
	 total=rs.getInt(1);
 }
%>

			<tr>
				<th scope="col"><a href="myCart.jsp"><i
						class='fas fa-arrow-circle-left'> Back</i></a></th>
				<th scope="col" style="background-color: yellow;">Total: <i
					class="fa fa-inr"></i><%= total%></th>
			</tr>
		</thead>
		<thead>
			<tr>
				<th scope="col">S.No</th>
				<th scope="col">Product Name</th>
				<th scope="col">Category</th>
				<th scope="col"><i class="fa fa-inr"></i> price</th>
				<th scope="col">Quantity</th>
				<th scope="col">Sub Total</th>
			</tr>
		</thead>
		<tbody>


<%
ResultSet rs1=st.executeQuery("select * from product inner join cart on product_id=cart.product_id and cart.email='"+email+"' and cart.address is NULL");
while(rs1.next())
{


%>
			<tr>
                <%sno=sno+1; %>
				<td><%=sno %></td>
				<td><%=rs1.getString(2) %></td>
				<td><%=rs1.getString(3) %></td>
				<td><i class="fa fa-inr"></i> <%=rs1.getString(4) %></td>
				<td><%=rs1.getString(8) %></td>
				<td><i class="fa fa-inr"></i><%=rs1.getString(10) %></td>
			</tr>
<%} 
ResultSet rss=st.executeQuery("select * from users where email='"+email+"'");
while(rss.next())
{
	


%>
		</tbody>
	</table>

	<hr style="width: 100%">
<form action="addressPaymentForOrderAction.jsp" method="post">
	<div class="left-div">
		<h3>Enter Address</h3>
<input class="input-style" type=text name="address" value="<%= rss.getString(7) %>" placeholder="Enter Address" required>
	</div>

	<div class="right-div">
		<h3>Enter city</h3>
		<input class="input-style" type=text name="city" value="<%= rss.getString(8) %>" placeholder="Enter city" required>
		

	</div>

	<div class="left-div">
		<h3>Enter State</h3>
<input class="input-style" type=text name="state" value="<%= rss.getString(9) %>" placeholder="Enter State" required>

	</div>

	<div class="right-div">
		<h3>Enter country</h3>
<input class="input-style" type=text name="country" value="<%= rss.getString(10) %>" placeholder="Enter Country" required>

	</div>
	<h3 style="color: red">*If there is no address its mean that you
		did not set you address!</h3>
	<h3 style="color: red">*This address will also updated to your
		profile</h3>
	<hr style="width: 100%">
	<div class="left-div">
		<h3>Select way of Payment</h3>

<select class="input-style" name="paymentMethod">
<option value="Cash On delivery(COD)">Cash On delivery(COD)</option>
<option value="Online Payment">Online Payment</option>
</select>

	</div>

	<div class="right-div">
		<h3>Pay online on this btechdays@pay.com</h3>
<input class="input-style" type="text" name="transactionId"  placeholder="Enter Transaction Id" >


		<h3 style="color: red">*If you select online Payment then enter
			you transaction ID here otherwise leave this blank</h3>
	</div>
	<hr style="width: 100%">

	<div class="left-div">
		<h3>Mobile Number</h3>
		
		<input class="input-style" type="Number" name="mobileNumber" value="<%= rss.getString(3) %>" placeholder="Enter Mobile Number" required>

		<h3 style="color: red">*This mobile number will also updated to
			your profile</h3>
	</div>
	<div class="right-div">
		<h3 style="color: red">*If you enter wrong transaction id then
			your order will we can cancel!</h3>
		<button class="button" type="submit">Proceed To Generate Bill & Save<i class='far fa-arrow-alt-circle-right'></i></button>
		<h3 style="color: red">*Fill form correctly</h3>
	</div>
</form>

	<%
}
}catch(Exception e)
{
System.out.println(e);
}
%>

	<br>
	<br>
	<br>

</body>
</html>