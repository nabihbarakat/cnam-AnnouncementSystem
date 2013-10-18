<%@page import="java.util.ArrayList"%>

<%@page import="AnnoucementSystem.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	boolean result;

	if (name != null) {
		result = StudentData.AddStudent(name, mobile, email);
	}
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add New Student</title>
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
		<h2>Add New Student</h2>
			<form method="POST">
				<div class="line">
					<div class="label">Name</div>
					<div class="input">
						<input type="name" id="msg" name="name" />
					</div>
				</div>
				<div class="line">
					<div class="label">Email</div>
					<div class="input">
						<input type="text" id="email" name="email" />
					</div>
				</div>

				<div class="line">
					<div class="label">Mobile</div>
					<div class="input">
						<input type="text" id="mobile" name="mobile" />
					</div>
				</div>
				<div class="line">
					<input type="submit" value="Submit" /> - <a
						href="contactstudent.jsp">back</a>
				</div>
			</form>
		</div>
	</div>

</body>
</html>