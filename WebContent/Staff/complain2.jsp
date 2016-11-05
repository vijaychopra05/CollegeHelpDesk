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
String b=request.getParameter("f");
String c=request.getParameter("a");
String Driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3307/heliyo";
String user="root";
String password="root";

try
{
	Class.forName(Driver);
	Connection conn=DriverManager.getConnection(url,user,password);
	Statement stmt=conn.createStatement();
	String s="insert into complaint(complaint,department) values ('"+b+"','"+c+"')";
	int s2=stmt.executeUpdate(s);
	//out.println(s);
	
	if(s2>0)
	{
		//out.println("a");
		response.sendRedirect("welcome.jsp");
		
	}
	else
	{
		//out.println("b");
		response.sendRedirect("welcome.jsp");
		
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