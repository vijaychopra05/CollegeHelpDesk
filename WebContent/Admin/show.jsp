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
<% 
String p=request.getParameter("sid");
String w=request.getParameter("post");
String driver="com.mysql.jdbc.Driver";


  Class.forName(driver);
  Connection con=DriverManager.getConnection(url,user,password);
  Statement stmt=con.createStatement();
  String s="select sid, post from comment";
  ResultSet rs=stmt.executeQuery(s);
  while(rs.next()){
	  String j=rs.getString("sid");
	  String g=rs.getString("post");
	  
	  out.println(j);
	  out.println(g);
	  out.println("<br/><br/>");
  }
  %>
 
  
</body>
</html>