<%@page import="java.lang.Thread.State"%>
<%@page import="com.project.ConnectionCls"%>
<%@page import="java.sql.*"%>
<%@include file="changeDetailsHeader.jsp"%>
<%@include file="footer.jsp"%>



<html>
<head>
<link rel="stylesheet" href="css/changeDetails.css">
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<title>Change Security Question</title>
</head>
<body>

	<%
		String msg = request.getParameter("msg");

		if ("done".equals(msg)) {
	%>

	<h3 class="alert">Your security Question successfully changed !</h3>


	<%
		}
	%>
	<%
		if ("wrong".equals(msg)) {
	%>

	<h3 class="alert">Your Password is wrong!</h3>
	<%
		}
	%>


	<form action="changeSecurityQuestionAction.jsp" method="post">


		<h3>Select Your New Securtiy Question</h3>
		<select class="input-style" name="security">
			<option value="What is your first mobile ?">What is your
				first mobile ?</option>
			<option value="What is the name of your pet ?">What is the
				name of your pet ?</option>
			<option value="What is the name of the town where you born ?">What
				is the name of the town where you born ?</option>
		</select>
		<hr>
		<h3>Enter Your New Answer</h3>
<input class="input-style" type="text" name="newAnswer" placeholder="Enter New Answer" required>
		<hr>
		<h3>Enter Password (For Security)</h3>
<input class="input-style" type="password" name="password" placeholder="Enter Password(For Security)" required>

		<hr>
	<button class="button"  type="submit">Save<i class='far fa-arrow-alt-circle-right'></i></button>	
	</form>
</body>
<br>
<br>
<br>
</html>