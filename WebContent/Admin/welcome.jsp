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

<%
if ((session.getAttribute("a") == null) || (session.getAttribute("a") == "")) {
%>
You are not logged in
<br />
<a href="index.jsp">Please Login</a>
<%
	} else {
%>
<h3>Welcome!!
<%=session.getAttribute("a")%></h3>

<%
	}
%>
<br/>
<ul>
<li><a href="student.jsp">View Students</a></li>
<li><a href="staff.jsp">View Staff</a></li>
<li><a href="Delete.jsp">Delete Profile</a></li></ul><br/>
<ul><li><a href="suggest.jsp">View FeedBacks</a></li></ul>
<br/><br/><br/>
<form action=logout.jsp>
<input type="submit" value="Logout" align="left"/>
</form>
</div>
<%@include file="/Common/footer.jsp" %>

</body>
</html>