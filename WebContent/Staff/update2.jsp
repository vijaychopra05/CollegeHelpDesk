<%@page import="java.awt.Window"%>
<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
 
</head>
<body>
<% 
String a =(String)session.getAttribute("o");//name
String l=(String)session.getAttribute("j");//id
String p=request.getParameter("username");
String w = request.getParameter("password");

String q = request.getParameter("phone");
String t = request.getParameter("address");
String y = request.getParameter("b");
String f = request.getParameter("c");

String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3307/heliyo";
String username="root";
String password="root";
try{
	Class.forName(driver);
	
	Connection conn=DriverManager.getConnection(url, username, password);
	Statement stmt=conn.createStatement();
	String s="update staff set username='"+p+"',password='"+w+"',phone='"+q+"',address='"+t+"',department='"+y+"',designation='"+f+"' where id='"+l+"'";
	int rs=stmt.executeUpdate(s);
	
	if(rs>0)
	{session.invalidate();
	
	response.sendRedirect("index.jsp");
		
	}
	else
	{
		
		out.println("unsuccessfull");
	}
}
catch(ClassNotFoundException e)
{
	e.printStackTrace();
}
catch(SQLException s)
{
	s.printStackTrace();
}
%>


</body>
</html>