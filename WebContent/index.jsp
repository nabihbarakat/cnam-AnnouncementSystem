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
<title>Cnam-Annoucement System</title>
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
        Welcome.
      </label><br>
		<h2>Main Menu</h2>
	
				<div class="line">
					<div class="label">
						<a href="contactstudent.jsp" > Send a Notification To Student </a>
					</div>
				</div>
                <div class="line">
					<div class="label">
						<a href="ManageStudents.jsp" > Manage Students </a>
					</div>
				</div>
                <div class="line">
					<div class="label">
						<a href="login.jsp" >Logout </a>
					</div>
				</div>
               
	
		</div>
	</div>

</body>
</html>