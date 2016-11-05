<%@page import="java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>COE</title>
</head>
<body>	<%@include file="/Common/connection.jsp" %>
<%


String a=request.getParameter("username");
String b=request.getParameter("password");
String c=request.getParameter("rollno");
String d=request.getParameter("phone");
String e=request.getParameter("k");
try
{
	Class.forName(Driver);
	Connection conn=DriverManager.getConnection(url,user,password);
	Statement stmt=conn.createStatement();
	String s="insert into student values ('"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')";
	int s2=stmt.executeUpdate(s);
	
	if(s2>0)
	{
		response.sendRedirect("index.jsp");
		
	}
	else
	{
		response.sendRedirect("Logout1.jsp");
		
	}
}

catch(ClassNotFoundException k)

{
	k.printStackTrace();
	

}

catch(SQLException se)

{
	
	se.printStackTrace();
}
%>

</body>
</html>