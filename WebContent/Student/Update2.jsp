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
String p=request.getParameter("rollno");
String w=request.getParameter("password");
String f=request.getParameter("phoneno");
String g=request.getParameter("k");
String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/heliyo";
String username="root";
String password="root";
try{
	Class.forName(driver);
	Connection conn=DriverManager.getConnection(url, username, password);
	Statement stmt=conn.createStatement();
	String s="update student set password='"+w+"',phoneno='"+f+"',stream='"+g+"' where rollno='"+p+"'";
	int rs=stmt.executeUpdate(s);
	if(rs>0)
	{
		response.sendRedirect("Logout1.jsp");
	
	
		
	}
	else
	{
		response.sendRedirect("Welcome.jsp");
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