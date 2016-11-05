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
<h3 style="text-decoration: underline;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;STAFF SECTION</h3>
<%
if ((session.getAttribute("a") == null) || (session.getAttribute("a") == "")) {
%>
&nbsp;&nbsp;<h3>&nbsp;&nbsp;You are not logged in</h3>
<br />
<a href="index.jsp">&nbsp;&nbsp;Please Login</a>
<%
	} else {
%>
&nbsp;&nbsp;<h3>Welcome!!
<%=session.getAttribute("a")%></h3>

<%
	}
%><ul type="square" style="color: red;" >
<li>&nbsp;&nbsp;<a href="update.jsp" target="_self">Update Profile</a></li>
<li>&nbsp;&nbsp;<a href="timetable.jsp" target="_blank">View Timetable</a></li>
<li>&nbsp;&nbsp;<a href="Complaint.jsp" target="_self">Post Complaint</a></li>
<li>&nbsp;&nbsp;<a href="viewcomplaint.jsp">View Complaints</a></li>
<li><a href="/CollegeHelpdesk/AboutUs.jsp" target="_blank">About Us</a></li>

</ul>
<form action=logout.jsp>
<pre>       <input type="submit" value="Logout" align="left"/></pre>
</form>
</div>
<%@include file="/Common/footer.jsp" %>
</body>
</html>