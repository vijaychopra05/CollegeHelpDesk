<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
<style>
#section {
	width: 100%;
	height: 400px;
	float: left;
    background-image: url("Image/b.jpg");
}
</style>


</head>

<body>
<%@include file="/Common/header.jsp" %>


<div id="section" align="left">
<h3>STUDENT SECTION</h3>
<%
if ((session.getAttribute("a") == null) || (session.getAttribute("a") == "")) {
%>
You are not logged in
<br />
<a href="index.jsp">Please Login</a>
<%
	} else {
%>
<br/>
<h3>Welcome!!
<%=session.getAttribute("a")%></h3>

<%
	}
%>
<ul>
<li><a href="Update1.jsp">Update Profile</a></li></ul>
<ul><li><a href="timetable.jsp" target="_blank">View Timetable</a></li></ul>
<ul><li><a href="Complaint.jsp">Post Complaint</a></li></ul>
<ul><li><a href="viewcomplaint.jsp">View Student Complaints</a></li></ul>
<ul><li><a href="/CollegeHelpdesk/AboutUs.jsp" target="_blank">About Us</a></li></ul>


<form action=Logout.jsp>
<pre>     <input type="submit" value="Logout" align="left"/></pre>
</form>
</div>
<%@include file="/Common/footer.jsp" %>

</body>
</html>