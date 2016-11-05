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

String Driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3307/heliyo";
String user="root";
String password="root";

String z=request.getParameter("name");

String t=request.getParameter("a");

String d=request.getParameter("username");

String e=request.getParameter("password");

String f=request.getParameter("id");

String g=request.getParameter("phone");

String u=request.getParameter("address");

String y=request.getParameter("b");

String l=request.getParameter("c");

try
{
	Class.forName(Driver);
	Connection conn=DriverManager.getConnection(url,user,password);
	Statement stmt=conn.createStatement();
	String s="insert into staff values (('"+t+"''"+z+"'),'"+d+"','"+e+"','"+f+"','"+g+"','"+u+"','"+y+"','"+l+"' )";
	int s2=stmt.executeUpdate(s);
	
	if(s2>0)
	{
	 response.sendRedirect("logout1.jsp");
		
	}
	else
	{
		out.println("not submitted in record");
		
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