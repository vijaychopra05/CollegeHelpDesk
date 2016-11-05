
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
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

String driver="com.mysql.jdbc.Driver";
String url="jdbc:mysql://localhost:3306/heliyo";
String user1="root";
String password="root";
String a=request.getParameter("username");
String b=request.getParameter("password");

try
{
	Class.forName("com.mysql.jdbc.Driver");
	Connection conn=DriverManager.getConnection(url,user1,password);
	Statement stmt=conn.createStatement();
	String s="select * from student where password='"+b+"' && name='"+a+"'";
	ResultSet rs=stmt.executeQuery(s);
		if(rs.next())
	{ out.println("a");
		session.setAttribute("a",a);
		session.setAttribute("b",b);
	    response.sendRedirect("welcome.jsp");	
	}
		else
		{   out.println("wrong credentials");
			RequestDispatcher rd=request.getRequestDispatcher("error.jsp");
		    rd.include(request,response);
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