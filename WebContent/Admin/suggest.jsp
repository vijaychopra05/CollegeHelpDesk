<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
div.background {
    background-image:url("Image/g2.jpg");
    border: 2px solid black;
}
</style>
</head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
</head>

<body><%@include file="/Common/connection.jsp" %>
<%@include file="/Common/header.jsp" %>
<div class="background">
<h2 align="center" style="text-decoration: underline;">Delete Feedbacks</h2>
<% 
Class.forName(Driver);
Connection con=DriverManager.getConnection(url,user,password); 
Statement stmt=con.createStatement();  
String s="select sid,suggestion from comment";  
ResultSet rs=stmt.executeQuery(s); 
while(rs.next()){	
String j=rs.getString("sid");	
String a=rs.getString("suggestion");
    out.println(j);   
    out.println(a);

    out.println("<br/><br/>&nbsp&nbsp&nbsp&nbsp;<a href=suggest1.jsp?var="+j+">Delete post</a><br/><br/><br/>");
       
}
%><br/><br/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="welcome.jsp"> CANCEL</a><br/><br/></div>
<%@include file="/Common/footer.jsp" %>

</body>


</html>