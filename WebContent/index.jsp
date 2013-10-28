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
    <div class="inner" >
            <div class="mainMenu"  >
            			<div >
                                <a href="index.jsp" ><b> Home </b> </a>
                        </div>
                        <div >
                                <a href="contactstudent.jsp" > Send a Notification To Student </a>
                        </div>
                        <div >
                                <a href="managestudents.jsp" > Manage Students </a>
                        </div>
                        <div >
                                    <a href="newstudent.jsp" >  Add New Student  </a>
                            </div>
                        <div >
                                <a href="login.jsp" >Logout </a>
                        </div>
                       
			</div>
		<div class="wrapper">
        <label>
        Bienvenue sur le système d'annonce du CNAM.
      </label><br>
		
		</div>
	</div>
  </div>
</body>
</html>