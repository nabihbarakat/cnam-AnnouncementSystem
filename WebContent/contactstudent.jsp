<%@page import="java.util.ArrayList"%>

<%@page import="AnnoucementSystem.*"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%
	String studentId = request.getParameter("cmbStudents");
	String msg = request.getParameter("msg");
	String action = request.getParameter("canal");

	System.out.print("start");
	System.out.print(action);
	if (action != null) {
		if (action.equals("sms")) {
			String mobileNbr = StudentData.GetPhoneById(Integer.parseInt(studentId));
			SMSSender smsSender = new SMSSender();
			smsSender.SendSMS(mobileNbr, msg);
   		} else if (action.equals("email")) {
			String email = StudentData.GetMailById(studentId);
			SendEmail emailSender = new SendEmail();

			emailSender.sendEmail(email, msg);
		} else if (action.equals("mobilenotification")) {

		}
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
		Select a student <select name="cmbStudents" id="cmbStudents">
			<option value="select">select</option>
			<%
				ArrayList<StudentData> students2;
				ArrayList<StudentData> students = StudentData.GetStudents();

				for (int i = 0; i < students.size(); i++) {
			%>
			<option value="<%=students.get(i).Id%>">
				<%=students.get(i).Name%></option>
			<%
				}
			%>
		</select> - <a href="newstudent.jsp" >Add new student</a>
		 <br /> msg <input type="text" id="msg" name="msg" cols="40" rows="5" style="width:200px; height:50px;"  /> <br /> <input
			type="radio" name="canal" value="sms">sms<br> <input
			type="radio" name="canal" value="email">email<br> <input
			type="radio" name="canal" value=mobilenotification>mobilenotification<br>
		<input type="submit" value="Submit" />

	</form>
</body>
</html>