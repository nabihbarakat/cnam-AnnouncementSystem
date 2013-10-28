<%@page import="java.util.ArrayList"%>

<%@page import="AnnoucementSystem.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
    boolean logged = Boolean.parseBoolean(String.valueOf( session.getAttribute("login")));
	if(!logged) response.sendRedirect("login.jsp"); 
	
	
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
      <div class="inner" >
        <div class="mainMenu"  >
        					<div >
                                <a href="index.jsp" > Home </a>
                        	</div>
                            <div >
                                    <a href="contactstudent.jsp" > Send a Notification To Student </a>
                            </div>
                            <div >
                                    <a href="managestudents.jsp" > <b> Manage Students </b> </a>
                            </div>
                            <div >
                                    <a href="newstudent.jsp" >  Add New Student  </a>
                            </div>
                            <div >
                                    <a href="login.jsp" >Logout </a>
                            </div>
                           
		</div>
		<div class="wrapper">
		<h2>List Of StudentS:</h2>
			
				
					<div style=" border: 1px solid;">
						
								<%
							
									ArrayList<StudentData> students2;
									ArrayList<StudentData> students = StudentData.GetStudents();
								
									for (int i = 0; i < students.size(); i++) {
								%>
								<div class="line" style="border-bottom: 1px solid;">
									<%=students.get(i).Name%>
                                    <div style="float:right"> <a class="button" href="editstudent.jsp?id=<%=students.get(i).Id%>" >edit</a> </div>
								</div>
								<%
									}
								%>
							
								
							
				</div>
					
					<div class="line">
						<a class="button" href="newstudent.jsp" >Add new Student</a>
						
					</div>
			</a>
		</div>
	</div>
</body>
</html>