<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COE</title>
</head>
<body>	<%@include file="/Common/connection.jsp" %>
<% String i=(String)request.getParameter("sid");
String h=request.getParameter("post");
out.println(i);
String f=request.getParameter("msg");


  Class.forName(Driver);
  Connection con=DriverManager.getConnection(url,user,password);
  Statement stmt=con.createStatement();
  String t="update comment set reply='ADMIN REPLY:"+f+"' where sid='"+i+"'";
  int r=stmt.executeUpdate(t);
  if(r>0) {
	  out.println("<b>REPLIED SUCCESSFULLY</b><br/><br/>");
	  
	
 
  }
  else{
	  out.println("<b>Wrong Entry</b>");  
  }
  
  
  %>
<a href="welcome.jsp">GO BACK</a>




</body>
</html>