<%@page import="java.sql.*"%>
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
	<%@include file="/Common/connection.jsp" %>
<%@include file="/Common/header.jsp" %><br/><br/><br/>
<div class="background">
<% 
String a=request.getParameter("rollno");

 Class.forName(Driver);
 Connection con=DriverManager.getConnection(url,user,password);
 Statement stmt=con.createStatement();
String s="delete from student where rollno='"+a+"'"; 
int rs=stmt.executeUpdate(s);
if(rs>0){
	 
	 out.println("<b>DELETED SUCCESSFULLY</b><br/><br/>");
	 
	  }
	 
	 else
	  {
		
		 out.println("<b>WRONG ENTRY</b><br/><br/>");
	  }
%>
     <a href="welcome.jsp">GO BACK</a><br/><br/><br/></div>
     <%@include file="/Common/footer.jsp" %>
</body>


</html>