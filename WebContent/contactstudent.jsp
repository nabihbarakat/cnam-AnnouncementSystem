<%@page import="java.util.ArrayList"%>

<%@page import="AnnoucementSystem.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="sample.jsp" method="POST">
Select a student 
<select name="cmbStudents" id="cmbStudents">
 <option value="select">select</option>
 <% 

 ArrayList<StudentData> students2 ;
  ArrayList<StudentData> students = StudentData.GetStudents();

   for(int i=0;i<students.size();i++){
     %>
  <option value="<%= students.get(i).Id %>"> <%= students.get(i).Name %></option>
<%  } %>
</select> 
<br />
 <input type="text"   id="firstname" name="firstname" />

      <input type="submit" value="Submit" />
</body>
</html>