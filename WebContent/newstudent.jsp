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
	 result= StudentData.AddStudent(name, mobile, email);
	}
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form method="POST">
		 	Name  <input type="name" id="msg" name="name" /> <br />
		 Email <input type="text" id="email" name="email" /> <br />
     	 Mobile <input type="text" id="mobile" name="mobile" /> <br />
		<input type="submit" value="Submit" />
- <a href="contactstudent.jsp" >back</a>
	</form>
</body>
</html>