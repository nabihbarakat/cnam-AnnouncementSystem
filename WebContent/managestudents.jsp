<%@page import="java.util.ArrayList"%>

<%@page import="AnnoucementSystem.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Manage Students</title>


<link href="style.css" type="text/css" rel="stylesheet">
<body>
	<div class="container" style="background-color:#C1002A">
		<div class="header">
		<div class="logo">le c<span style="font-weight:bold">nam</span> liban</div>  AnnouncementSystem
		</div>
	</div>
	<div class="container">
		<div class="wrapper">
		<h2>Student:</h2>
			<form method="POST">
				
					
						
					
							
								<%
									ArrayList<StudentData> students2;
									ArrayList<StudentData> students = StudentData.GetStudents();
			
									for (int i = 0; i < students.size(); i++) {
								%>
								<div class="line">
									<%=students.get(i).Name%>
								</div>
								<%
									}
								%>
							
				
					
					<div class="line">
						<a class="button" href="newstudent.jsp" >Add new Student</a>
						
					</div>
				
			</form>
		</div>
	</div>
</body>
</html>