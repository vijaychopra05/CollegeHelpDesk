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
<body>	<%@include file="/Common/connection.jsp" %>
<%@include file="/Common/header.jsp" %>
<div class="background">
<br/><br/><br/>
<% 
String q=request.getParameter("var");

  
   Class.forName(Driver);  
   Connection con=DriverManager.getConnection(url,user,password);  
   Statement stmt=con.createStatement();  
   String t="delete from comment where sid='"+q+"'";
   int r=stmt.executeUpdate(t);
   if(r>0) {
        out.println("<b>    DELETED SUCCESSFULLY</b><br/><br/>"); 
}
   else{
	  out.println("<b>Wrong Entry</b>");   
}  
%>
     <a href="suggest.jsp">GO BACK</a><br/><br/><br/></div>
     <%@include file="/Common/footer.jsp" %>
</body>


</html>