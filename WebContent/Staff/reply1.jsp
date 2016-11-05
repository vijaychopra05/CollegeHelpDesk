<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>COE</title>
</head>
<body>

<%@include file="/Common/header.jsp" %>
<% String i=(String)request.getParameter("sid");
String h=request.getParameter("post");

String f=request.getParameter("msg");
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3307/heliyo";
String username="root";
String password="root";

  Class.forName(driver);
  Connection con=DriverManager.getConnection(url,username,password);
  Statement stmt=con.createStatement();
  String t="update complaint set reply='ADMIN REPLY:"+f+"' where cid='"+i+"'";
  int r=stmt.executeUpdate(t);
  if(r>0) {
	  out.println("<b>REPLIED SUCCESSFULLY</b><br/><br/>");
	  
	
 
  }
  else{
	  out.println("<b>Wrong Entry</b>");  
  }
  
  
  %>
<a href="welcome.jsp">GO BACK</a><br/><br/>
<%@include file="/Common/footer.jsp" %>




</body>
</html>