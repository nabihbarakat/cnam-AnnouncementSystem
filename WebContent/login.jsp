<%@page import="java.util.ArrayList"%>

<%@page import="AnnoucementSystem.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String status = ""; 
	if ("POST".equalsIgnoreCase(request.getMethod())) {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		
		boolean result;
	
		if (username != null && password!=null) 
		{
			result = StudentData.CheckLogin(username,password);
			if(result)
				response.sendRedirect("index.jsp"); 
			else
				status="Wrong useraname or password !";
			
		}
		else
		{
			status="Please enter username and password";
		}
	}
	
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cnam - Login</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="container" style="background-color:#C1002A">
		<div class="header">
		<div class="logo">le c<span style="font-weight:bold">nam</span> liban</div>  AnnouncementSystem
		</div>
	</div>
	<div class="container">
		<div class="wrapper">
        <label>
      hi  <%= status %>
      </label><br>
		<h2>Login</h2>
			<form method="POST">
				<div class="line">
					<div class="label">Username</div>
					<div class="input">
						<input type="username" id="username" name="username" />
					</div>
				</div>
				<div class="line">
					<div class="label">Password</div>
					<div class="input">
						<input type="password" id="password" name="password" />
					</div>
				</div>

				<div class="line">
					<input type="submit" value="Submit" />
				</div>
			</form>
		</div>
	</div>

</body>
</html>