<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
<style type="text/css">
div.background {
    background-image:url("Image/g2.jpg");
    border: 2px solid black;
}
</style>
</head>
</head>

<body>
<%@include file="/Common/header.jsp" %>
<br/><div class="background">
<center style="text-decoration: underline;"><h3>Delete Student</h3></center>

<form action="delete1.jsp" method="post">
&nbsp;&nbsp;&nbsp;&nbsp;Delete values where
&nbsp;&nbsp;&nbsp;&nbsp;rollno:<input type="text" name="rollno"/><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="delete"/>
</form>   
<h4 align="center"> OR </h4>
<br/><center style="text-decoration: underline;"><h3>Delete Staff</h3></center>
<form action="staff1.jsp" method="post">
&nbsp;&nbsp;&nbsp;&nbsp;Delete values where
&nbsp;&nbsp;&nbsp;&nbsp;Empid:<input type="text" name="empid"/><br/><br/>
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="delete"/>
</form>
<br/>
<form action="welcome.jsp" method="get">
&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" value="cancel" />
<br/>
</form></div>
<%@include file="/Common/footer.jsp" %>
</body>
</html>