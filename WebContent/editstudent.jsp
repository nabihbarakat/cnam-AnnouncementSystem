<%@page import="java.util.ArrayList"%>

<%@page import="AnnoucementSystem.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	boolean logged = Boolean.parseBoolean(String.valueOf( session.getAttribute("login")));
	if(!logged) response.sendRedirect("login.jsp"); 
	
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	boolean result;

	if (name != null) {
		result = StudentData.UpdateStudent(name, mobile, email,request.getParameter("id"));
		 response.sendRedirect("managestudents.jsp");
	}
	
	ArrayList<StudentData> students2;
	ArrayList<StudentData> students = StudentData.GetStudentByID(request.getParameter("id"));
	

	
	
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Student</title>
<link href="style.css" type="text/css" rel="stylesheet">
</head>
<body>
	<div class="container" style="background-color:#C1002A">
		<div class="header">
		<div class="logo">le c<span style="font-weight:bold">nam</span> liban</div>  AnnouncementSystem
		</div>
	</div>
	<div class="container">
    	<div class="inner" >
            <div class="mainMenu"  >
			            <div >
                                <a href="index.jsp" > Home </a>
                        </div>
                        <div >
                                <a href="contactstudent.jsp" > Send a Notification To Student </a>
                        </div>
                        <div >
                                <a href="managestudents.jsp" > <b> Manage Students </b></a>
                        </div>
                        <div >
                                <a href="newstudent.jsp" > Add New Student  </a>
                        </div>                        
                        <div >
                                <a href="login.jsp" >Logout </a>
                        </div>
                       
			</div>
            <div class="wrapper">
            <h2>Edit Student : <%=students.get(0).Name%></h2>
                <form method="POST">
                    <div class="line">
                        <div class="label">Name</div>
                        <div class="input">
                            <input type="name" id="msg" name="name" value="<%=students.get(0).Name%>" />
                        </div>
                    </div>
                    <div class="line">
                        <div class="label">Email</div>
                        <div class="input">
                            <input type="text" id="email" name="email" value="<%=students.get(0).Mail%>" />
                        </div>
                    </div>
    
                    <div class="line">
                        <div class="label">Mobile</div>
                        <div class="input">
                            <input type="text" id="mobile" name="mobile" value="<%=students.get(0).Mobile%>" />
                        </div>
                    </div>
                    <div class="line">
                        <input type="submit" value="Update" /> - <a class="button"
                            href="managestudents.jsp">back</a>
                    </div>
                </form>
            </div>
        </div>
	</div>

</body>
</html>