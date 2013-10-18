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
			String mobileNbr = StudentData.GetPhoneById(Integer
					.parseInt(studentId));
			SMSSender smsSender = new SMSSender();
			smsSender.SendSMS(mobileNbr, msg);
		} else if (action.equals("email")) {
			String email = StudentData.GetMailById(studentId);
			SendEmail emailSender = new SendEmail();

			emailSender.sendEmail(email, msg);
		} else if (action.equals("mobilenotification")) {
			
			String gcmID = StudentData.GetGCMID(studentId);
			NotificationSender notificationSender = new NotificationSender();

			notificationSender.SendNotification(gcmID, msg);
		}
		
	}
%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>AnnoucementSystem - cnam</title>


<link href="style.css" type="text/css" rel="stylesheet">
<body>
	<div class="container" style="background-color:#C1002A">
		<div class="header">
		<div class="logo">le c<span style="font-weight:bold">nam</span> liban</div>  AnnouncementSystem
		</div>
	</div>
	<div class="container">
		<div class="wrapper">
		<h2>Send Message to Student</h2>
			<form method="POST">
				
					<div class="line">
						<div class="label">
						Select a student </div> 
						<div class="input">
							<select name="cmbStudents" id="cmbStudents">
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
							</select> - <a href="newstudent.jsp">Add new student</a>
						</div>
					</div>
					<div class="line">
						<div class="label">
							msg
						</div>
						<div class="input">
						 <input type="text" id="msg" name="msg" cols="40" rows="5" style="width: 200px; height: 50px;" />
						</div>
					</div>
					<div class="line">
						<div class="label">
							canal
						</div>
						<div class="input">
							<input type="radio" name="canal" value="sms">sms<br> 
							<input type="radio" name="canal" value="email">email<br> 
							<input type="radio" name="canal" value=mobilenotification>mobilenotification<br>
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